package com.google.android.apps.auto.sdk.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes.dex */
public class PagedListView extends FrameLayout {
    public static final int DEFAULT_MAX_CLICKS = 6;
    protected static final int PAGINATION_HOLD_DELAY_MS = 400;
    private final boolean a;
    private final boolean b;
    private final PagedScrollBarView c;
    private int d;
    private int e;
    private Decoration f;
    private int g;
    private int h;
    private boolean i;
    private float j;
    private float k;
    private boolean l;
    private boolean m;
    protected RecyclerView.a<? extends RecyclerView.u> mAdapter;
    protected final Handler mHandler;
    protected final CarLayoutManager mLayoutManager;
    protected OnScrollListener mOnScrollListener;
    protected final Runnable mPaginationRunnable;
    protected final CarRecyclerView mRecyclerView;
    private final RecyclerView.l n;
    private final Runnable o;

    /* loaded from: classes.dex */
    public static class Decoration extends RecyclerView.g {
        private final boolean a;
        protected final Context mContext;
        protected final int mDividerHeight;
        protected final Paint mPaint;

        public Decoration(Context context, boolean z) {
            this.mContext = context;
            this.a = z;
            this.mPaint = new Paint();
            updateDividerColor();
            this.mDividerHeight = context.getResources().getDimensionPixelSize(R.dimen.res_0x7f080022_mtrl_switch_thumb_checked_unchecked__1);
        }

        private final TextView a(View view) {
            if (view == null) {
                return null;
            }
            if (view instanceof TextView) {
                return (TextView) view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    TextView a = a(viewGroup.getChildAt(i));
                    if (a != null) {
                        return a;
                    }
                }
            }
            return null;
        }

        public int getLeft(View view) {
            int i = 0;
            if (view == null) {
                return 0;
            }
            View a = a(view);
            if (a == null) {
                a = view;
            }
            while (a != null && a != view) {
                int left = a.getLeft();
                a = (View) a.getParent();
                i += left;
            }
            return i;
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.r rVar) {
            int left = getLeft(recyclerView.getChildAt(0));
            int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            if (this.a) {
                canvas.drawRect(left, 0.0f, width, this.mDividerHeight, this.mPaint);
            }
            int childCount = recyclerView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                int bottom = childAt.getBottom() - childAt.getLayoutParams().bottomMargin;
                int i2 = bottom - this.mDividerHeight;
                if (i2 > 0) {
                    canvas.drawRect(left, i2, width, bottom, this.mPaint);
                }
            }
        }

        public void updateDividerColor() {
            this.mPaint.setColor(this.mContext.getResources().getColor(R.color.m3_card_anim_delay_ms));
        }

        public Decoration(Context context) {
            this(context, true);
        }
    }

    /* loaded from: classes.dex */
    public interface ItemCap {
        void setMaxItems(int i);
    }

    /* loaded from: classes.dex */
    public interface ItemPositionOffset {
        void setPositionOffset(int i);
    }

    /* loaded from: classes.dex */
    public static class OnScrollListener {
        public void onGestureDown() {
        }

        public void onGestureUp() {
        }

        public void onLeaveBottom() {
        }

        public void onReachBottom() {
        }

        public void onScrollDownButtonClicked() {
        }

        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        }

        public void onScrollUpButtonClicked() {
        }

        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public PagedListView(Context context, AttributeSet attributeSet, int i, int i2, int i3) {
        super(context, attributeSet, i, i2);
        this.mHandler = new Handler();
        this.d = -1;
        this.e = -1;
        this.f = new Decoration(getContext());
        this.g = 6;
        this.h = 0;
        f fVar = new f(this);
        this.n = fVar;
        this.mPaginationRunnable = new g(this);
        this.o = new h(this);
        LayoutInflater.from(context).inflate(i3 == 0 ? R.layout.car_paged_recycler_view : i3, (ViewGroup) this, true);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.max_width_layout);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PagedListView, i, i2);
        CarRecyclerView carRecyclerView = (CarRecyclerView) findViewById(R.id.recycler_view);
        this.mRecyclerView = carRecyclerView;
        carRecyclerView.setFadeLastItem(obtainStyledAttributes.getBoolean(R.styleable.PagedListView_fadeLastItem, false));
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.PagedListView_offsetRows, false);
        this.e = getDefaultMaxPages();
        CarLayoutManager carLayoutManager = new CarLayoutManager(context);
        this.mLayoutManager = carLayoutManager;
        carLayoutManager.setOffsetRows(z);
        carRecyclerView.setLayoutManager(carLayoutManager);
        carRecyclerView.addItemDecoration(this.f);
        carRecyclerView.setOnScrollListener(fVar);
        carRecyclerView.getRecycledViewPool().a(0, 12);
        carRecyclerView.setItemAnimator(new a(carLayoutManager));
        setClickable(true);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.PagedListView_scrollBarEnabled, true);
        this.a = z2;
        PagedScrollBarView pagedScrollBarView = (PagedScrollBarView) findViewById(R.id.paged_scroll_view);
        this.c = pagedScrollBarView;
        pagedScrollBarView.setPaginationListener(new e(this));
        pagedScrollBarView.setVisibility(z2 ? 0 : 8);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.PagedListView_rightGutterEnabled, false);
        this.b = z3;
        if (z3 || !z2) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            if (z3) {
                layoutParams.rightMargin = getResources().getDimensionPixelSize(R.dimen.res_0x7f080004_avd_show_password__1);
            }
            if (!z2) {
                layoutParams.setMarginStart(0);
            }
            frameLayout.setLayoutParams(layoutParams);
        }
        setAutoDayNightMode();
        obtainStyledAttributes.recycle();
    }

    public void addItemDecoration(RecyclerView.g gVar) {
        this.mRecyclerView.addItemDecoration(gVar);
    }

    public void addOnItemTouchListener(RecyclerView.k kVar) {
        this.mRecyclerView.addOnItemTouchListener(kVar);
    }

    public int calculateMaxItemCount() {
        int i;
        View childAt = this.mLayoutManager.getChildAt(0);
        if (childAt == null || childAt.getHeight() == 0 || (i = this.e) < 0) {
            return -1;
        }
        return this.d * i;
    }

    public View findViewByPosition(int i) {
        return this.mLayoutManager.findViewByPosition(i);
    }

    public RecyclerView.a<? extends RecyclerView.u> getAdapter() {
        return this.mRecyclerView.getAdapter();
    }

    public int getDefaultMaxPages() {
        return this.g - 1;
    }

    public int getFirstFullyVisibleChildPosition() {
        return this.mLayoutManager.getFirstFullyVisibleChildPosition();
    }

    public int getLastFullyVisibleChildPosition() {
        return this.mLayoutManager.getLastFullyVisibleChildPosition();
    }

    public int getMaxPages() {
        return this.e;
    }

    public int getPage(int i) {
        int i2 = this.d;
        if (i2 == -1) {
            return -1;
        }
        if (i2 == 0) {
            return 0;
        }
        return i / i2;
    }

    public CarRecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    public int getRowsPerPage() {
        return this.d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mHandler.removeCallbacks(this.o);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (getResources().getBoolean(R.bool.btn_checkbox_checked_mtrl_animation_interpolator_0) || getResources().getBoolean(R.bool.btn_checkbox_unchecked_mtrl_animation_interpolator_1)) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 2) {
            float y = motionEvent.getY() - this.j;
            float y2 = motionEvent.getY() - this.k;
            if (this.l && y != 0.0d) {
                int signum = (int) Math.signum(y);
                View focusedChild = this.mRecyclerView.getFocusedChild();
                if (focusedChild != null) {
                    int position = this.mLayoutManager.getPosition(focusedChild);
                    if (Math.max(Math.min(signum + position, this.mLayoutManager.getItemCount() - 1), 0) != position) {
                        this.m = true;
                    }
                }
                this.l = false;
            }
            z2 = this.m && Math.abs(y) >= 15.0f;
            if ((y < 0.0f || y2 < 0.0f) && (y > 0.0f || y2 > 0.0f)) {
                z = true;
            } else {
                if (((int) (y / 50.0f)) != ((int) ((this.k - this.j) / 50.0f))) {
                    int signum2 = (int) Math.signum(y);
                    View focusedChild2 = this.mRecyclerView.getFocusedChild();
                    if (focusedChild2 != null) {
                        int position2 = this.mLayoutManager.getPosition(focusedChild2);
                        int max = Math.max(Math.min(signum2 + position2, this.mLayoutManager.getItemCount() - 1), 0);
                        if (max != position2) {
                            CarRecyclerView carRecyclerView = this.mRecyclerView;
                            CarLayoutManager carLayoutManager = this.mLayoutManager;
                            View childAt = carRecyclerView.getChildAt(max - carLayoutManager.getPosition(carLayoutManager.getChildAt(0)));
                            if (childAt != null) {
                                childAt.requestFocus();
                            }
                        }
                    }
                }
                z = false;
            }
            this.k = motionEvent.getY();
        } else {
            z = false;
            z2 = false;
        }
        if (z || action == 0) {
            this.j = motionEvent.getY();
            this.k = motionEvent.getY();
            this.l = true;
            this.m = false;
            if (action == 0) {
                return false;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mLayoutManager.setRowOffsetMode(1);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View focusedChild = this.mLayoutManager.getFocusedChild();
        View childAt = this.mLayoutManager.getChildAt(0);
        super.onLayout(z, i, i2, i3, i4);
        RecyclerView.a<? extends RecyclerView.u> aVar = this.mAdapter;
        if (aVar != null) {
            int a = aVar.a();
            if (Log.isLoggable("PagedListView", 3)) {
                Log.d("PagedListView", String.format("onLayout hasFocus: %s, mLastItemCount: %s, itemCount: %s, focusedChild: %s, firstBorn: %s, isInTouchMode: %s, mNeedsFocus: %s", Boolean.valueOf(hasFocus()), Integer.valueOf(this.h), Integer.valueOf(a), focusedChild, childAt, Boolean.valueOf(isInTouchMode()), Boolean.valueOf(this.i)));
            }
            updateMaxItems();
            if (this.i && a > 0) {
                if (focusedChild == null) {
                    requestFocus();
                }
                this.i = false;
            }
            if (a > this.h && focusedChild == childAt && getContext().getResources().getBoolean(R.bool.btn_checkbox_unchecked_mtrl_animation_interpolator_1)) {
                requestFocus();
            }
            this.h = a;
        }
        updatePaginationButtons(false);
    }

    public int positionOf(View view) {
        if (view == null || view.getParent() != this.mRecyclerView) {
            return -1;
        }
        return this.mLayoutManager.getPosition(view);
    }

    public void removeDefaultItemDecoration() {
        this.mRecyclerView.removeItemDecoration(this.f);
    }

    public void removeItemDecoration(RecyclerView.g gVar) {
        this.mRecyclerView.removeItemDecoration(gVar);
    }

    public void removeOnItemTouchListener(RecyclerView.k kVar) {
        this.mRecyclerView.removeOnItemTouchListener(kVar);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.mLayoutManager.setRowOffsetMode(0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (getContext().getResources().getBoolean(R.bool.btn_checkbox_unchecked_mtrl_animation_interpolator_1)) {
            this.i = true;
        }
        return super.requestFocus(i, rect);
    }

    public void resetMaxPages() {
        this.e = getDefaultMaxPages();
        updateMaxItems();
    }

    public void scrollToPosition(int i) {
        this.mLayoutManager.scrollToPosition(i);
        this.mHandler.post(this.o);
    }

    public void setAdapter(RecyclerView.a<? extends RecyclerView.u> aVar) {
        if (aVar instanceof ItemCap) {
            this.mAdapter = aVar;
            this.mRecyclerView.setAdapter(aVar);
            updateMaxItems();
            return;
        }
        String valueOf = String.valueOf(aVar.getClass().getCanonicalName());
        StringBuilder sb = new StringBuilder(valueOf.length() + 40);
        sb.append("ERROR: adapter [");
        sb.append(valueOf);
        sb.append("] MUST implement ItemCap");
        throw new IllegalArgumentException(sb.toString());
    }

    public void setAutoDayNightMode() {
        this.c.setAutoDayNightMode();
        this.f.updateDividerColor();
    }

    public void setDarkMode() {
        this.c.setDarkMode();
        this.f.updateDividerColor();
    }

    public void setDefaultItemDecoration(Decoration decoration) {
        removeDefaultItemDecoration();
        this.f = decoration;
        addItemDecoration(decoration);
    }

    public void setDefaultMaxPages(int i) {
        this.g = i;
    }

    public void setLightMode() {
        this.c.setLightMode();
        this.f.updateDividerColor();
    }

    public void setListViewStartEndPadding(int i, int i2) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.res_0x7f080004_avd_show_password__1);
        int max = Math.max(i - (this.a ? dimensionPixelSize : 0), 0);
        if (!this.b) {
            dimensionPixelSize = 0;
        }
        int max2 = Math.max(i2 - dimensionPixelSize, 0);
        CarRecyclerView carRecyclerView = this.mRecyclerView;
        carRecyclerView.setPaddingRelative(max, carRecyclerView.getPaddingTop(), max2, this.mRecyclerView.getPaddingBottom());
        CarRecyclerView carRecyclerView2 = this.mRecyclerView;
        carRecyclerView2.setClipToPadding(carRecyclerView2.getClipChildren());
    }

    public void setMaxPages(int i) {
        this.e = i;
        updateMaxItems();
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mOnScrollListener = onScrollListener;
        this.mLayoutManager.setOnScrollListener(onScrollListener);
    }

    public boolean shouldEnablePageDownButton() {
        return !this.mLayoutManager.isAtBottom();
    }

    public boolean shouldEnablePageUpButton() {
        return !this.mLayoutManager.isAtTop();
    }

    public void updateMaxItems() {
        RecyclerView.a<? extends RecyclerView.u> aVar = this.mAdapter;
        if (aVar == null) {
            return;
        }
        int a = aVar.a();
        updateRowsPerPage();
        this.mAdapter.setMaxItems(calculateMaxItemCount());
        int a2 = this.mAdapter.a();
        if (a2 != a) {
            RecyclerView.a<? extends RecyclerView.u> aVar2 = this.mAdapter;
            if (a2 < a) {
                aVar2.b(a2, a - a2);
            } else {
                aVar2.a(a, a2 - a);
            }
        }
    }

    public void updatePaginationButtons(boolean z) {
        PagedScrollBarView pagedScrollBarView;
        int i;
        if (this.a) {
            if ((this.mLayoutManager.isAtTop() && this.mLayoutManager.isAtBottom()) || this.mLayoutManager.getItemCount() == 0) {
                pagedScrollBarView = this.c;
                i = 4;
            } else {
                pagedScrollBarView = this.c;
                i = 0;
            }
            pagedScrollBarView.setVisibility(i);
            this.c.setUpEnabled(shouldEnablePageUpButton());
            this.c.setDownEnabled(shouldEnablePageDownButton());
            this.c.setParameters(this.mRecyclerView.computeVerticalScrollRange(), this.mRecyclerView.computeVerticalScrollOffset(), this.mRecyclerView.computeVerticalScrollExtent(), z);
            invalidate();
        }
    }

    public void updateRowsPerPage() {
        View childAt = this.mLayoutManager.getChildAt(0);
        if (childAt == null || childAt.getHeight() == 0) {
            this.d = 1;
        } else {
            this.d = Math.max(1, (getHeight() - getPaddingTop()) / childAt.getHeight());
        }
    }

    public PagedListView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PagedListView(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, 0);
    }

    public PagedListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }
}
