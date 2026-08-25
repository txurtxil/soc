package com.google.android.apps.auto.sdk.ui;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LruCache;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import androidx.car.app.model.Alert;
import com.google.android.apps.auto.sdk.ui.PagedListView;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CarLayoutManager extends RecyclerView.h {
    public static final int ROW_OFFSET_MODE_INDIVIDUAL = 0;
    public static final int ROW_OFFSET_MODE_PAGE = 1;
    private final Context b;
    private a f;
    private PagedListView.OnScrollListener g;
    private boolean i;
    private int j;
    private LruCache<View, b> p;
    private final AccelerateInterpolator a = new AccelerateInterpolator(2.0f);
    private boolean c = false;
    private int d = 1;
    private int e = 0;
    private int h = 0;
    private int k = 0;
    private int l = -1;
    private int m = -1;
    private int n = -1;
    private int o = -1;
    private int q = -1;

    /* loaded from: classes.dex */
    public final class a extends oa0 {
        private final Interpolator a;
        private final boolean b;
        private final int c;

        public a(Context context, int i) {
            super(context);
            this.a = new DecelerateInterpolator(1.8f);
            this.c = i;
            this.b = CarLayoutManager.this.b.getResources().getBoolean(R.bool.btn_checkbox_checked_mtrl_animation_interpolator_0);
        }

        @Override // defpackage.oa0
        public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 150.0f / displayMetrics.densityDpi;
        }

        public final int calculateTimeForDeceleration(int i) {
            int ceil = (int) Math.ceil(calculateTimeForScrolling(i) / 0.45f);
            return this.b ? ceil : Math.min(ceil, 1000);
        }

        @Override // defpackage.oa0
        public final PointF computeScrollVectorForPosition(int i) {
            if (getChildCount() == 0) {
                return null;
            }
            CarLayoutManager carLayoutManager = CarLayoutManager.this;
            return new PointF(0.0f, this.c < carLayoutManager.getPosition(carLayoutManager.getChildAt(carLayoutManager.getFirstFullyVisibleChildIndex())) ? -1 : 1);
        }

        public final int getTargetPosition() {
            return this.c;
        }

        public final int getVerticalSnapPreference() {
            return -1;
        }

        public final void onTargetFound(View view, RecyclerView.r rVar, RecyclerView.q.a aVar) {
            int calculateDyToMakeVisible = calculateDyToMakeVisible(view, -1);
            if (calculateDyToMakeVisible == 0) {
                if (Log.isLoggable("CarLayoutManager", 3)) {
                    Log.d("CarLayoutManager", "Scroll distance is 0");
                    return;
                }
                return;
            }
            int calculateTimeForDeceleration = calculateTimeForDeceleration(calculateDyToMakeVisible);
            if (calculateTimeForDeceleration > 0) {
                aVar.a(0, -calculateDyToMakeVisible, calculateTimeForDeceleration, this.a);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Animation {
        public float a;

        private b() {
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            super.applyTransformation(f, transformation);
            transformation.getMatrix().setTranslate(0.0f, this.a);
        }

        public /* synthetic */ b(byte b) {
            this();
        }
    }

    public CarLayoutManager(Context context) {
        this.b = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void a() {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.auto.sdk.ui.CarLayoutManager.a():void");
    }

    private final int b() {
        int i = this.o;
        if (i != -1) {
            return i;
        }
        int firstFullyVisibleChildIndex = getFirstFullyVisibleChildIndex();
        View childAt = getChildAt(firstFullyVisibleChildIndex);
        if (getPosition(childAt) == 0 && firstFullyVisibleChildIndex < getChildCount() - 1) {
            childAt = getChildAt(firstFullyVisibleChildIndex + 1);
        }
        RecyclerView.LayoutParams layoutParams = childAt.getLayoutParams();
        int decoratedMeasuredHeight = getDecoratedMeasuredHeight(childAt) + layoutParams.topMargin + layoutParams.bottomMargin;
        if (decoratedMeasuredHeight == 0) {
            Log.w("CarLayoutManager", "The sample view has a height of 0. Returning a dummy value for now that won't be cached.");
            return this.b.getResources().getDimensionPixelSize(R.dimen.car_sample_row_height);
        }
        this.o = decoratedMeasuredHeight;
        return decoratedMeasuredHeight;
    }

    private final int c() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    public boolean canScrollVertically() {
        return true;
    }

    public int computeVerticalScrollExtent(RecyclerView.r rVar) {
        if (getChildCount() <= 1) {
            return 0;
        }
        int c = c() / b();
        if (rVar.e() <= c) {
            return 1000;
        }
        return (c * 1000) / rVar.e();
    }

    public int computeVerticalScrollOffset(RecyclerView.r rVar) {
        View firstFullyVisibleChild = getFirstFullyVisibleChild();
        if (firstFullyVisibleChild == null) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = firstFullyVisibleChild.getLayoutParams();
        float position = getPosition(firstFullyVisibleChild) - Math.min((getDecoratedTop(firstFullyVisibleChild) - layoutParams.topMargin) / ((getDecoratedMeasuredHeight(firstFullyVisibleChild) + layoutParams.topMargin) + layoutParams.bottomMargin), 1.0f);
        int e = rVar.e() - (c() / b());
        if (e <= 0) {
            return 0;
        }
        float f = e;
        if (position >= f) {
            return 1000;
        }
        return (int) ((position * 1000.0f) / f);
    }

    public int computeVerticalScrollRange(RecyclerView.r rVar) {
        return 1000;
    }

    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-1, -2);
    }

    public View getFirstFullyVisibleChild() {
        int firstFullyVisibleChildIndex = getFirstFullyVisibleChildIndex();
        if (firstFullyVisibleChildIndex != -1) {
            return getChildAt(firstFullyVisibleChildIndex);
        }
        return null;
    }

    public int getFirstFullyVisibleChildIndex() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (getDecoratedTop(childAt) - childAt.getLayoutParams().topMargin >= getPaddingTop()) {
                return i;
            }
        }
        return -1;
    }

    public int getFirstFullyVisibleChildPosition() {
        View firstFullyVisibleChild = getFirstFullyVisibleChild();
        if (firstFullyVisibleChild == null) {
            return -1;
        }
        return getPosition(firstFullyVisibleChild);
    }

    public int getLastFocusedChildIndexIfVisible() {
        if (this.n == -1) {
            return -1;
        }
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i);
            if (getPosition(childAt) == this.n) {
                if (childAt.getLayoutParams().bottomMargin + getDecoratedBottom(childAt) > getHeight() - getPaddingBottom()) {
                    break;
                }
                return i;
            }
            i++;
        }
        return -1;
    }

    public View getLastFullyVisibleChild() {
        int lastFullyVisibleChildIndex = getLastFullyVisibleChildIndex();
        if (lastFullyVisibleChildIndex != -1) {
            return getChildAt(lastFullyVisibleChildIndex);
        }
        return null;
    }

    public int getLastFullyVisibleChildIndex() {
        View childAt;
        int childCount = getChildCount();
        do {
            childCount--;
            if (childCount < 0) {
                return -1;
            }
            childAt = getChildAt(childCount);
        } while (childAt.getLayoutParams().bottomMargin + getDecoratedBottom(childAt) > getHeight() - getPaddingBottom());
        return childCount;
    }

    public int getLastFullyVisibleChildPosition() {
        View lastFullyVisibleChild = getLastFullyVisibleChild();
        if (lastFullyVisibleChild == null) {
            return -1;
        }
        return getPosition(lastFullyVisibleChild);
    }

    public int getPageDownPosition() {
        return this.m;
    }

    public int getPageUpPosition() {
        return this.l;
    }

    public boolean isAtBottom() {
        int lastFullyVisibleChildIndex = getLastFullyVisibleChildIndex();
        return lastFullyVisibleChildIndex == -1 || getPosition(getChildAt(lastFullyVisibleChildIndex)) == getItemCount() - 1;
    }

    public boolean isAtTop() {
        return getFirstFullyVisibleChildIndex() <= 0;
    }

    public void offsetRows() {
        int i;
        int i2;
        int i3;
        if (this.c) {
            int i4 = this.d;
            if (i4 == 1) {
                View findViewByPosition = findViewByPosition(this.k);
                if (findViewByPosition == null) {
                    if (Log.isLoggable("CarLayoutManager", 3)) {
                        Log.d("CarLayoutManager", ":: offsetRowsByPage anchorView null");
                        return;
                    }
                    return;
                }
                int decoratedTop = getDecoratedTop(findViewByPosition) - findViewByPosition.getLayoutParams().topMargin;
                View findViewByPosition2 = findViewByPosition(this.l);
                int decoratedTop2 = (getDecoratedTop(findViewByPosition2) - findViewByPosition2.getLayoutParams().topMargin) - decoratedTop;
                int paddingTop = decoratedTop - getPaddingTop();
                float abs = (Math.abs(decoratedTop2) - paddingTop) / Math.abs(decoratedTop2);
                if (Log.isLoggable("CarLayoutManager", 2)) {
                    StringBuilder g = t20.g(":: offsetRowsByPage scrollDistance:", decoratedTop2, ", distanceLeft:", paddingTop, ", scrollPercentage:");
                    g.append(abs);
                    Log.v("CarLayoutManager", g.toString());
                }
                RecyclerView parent = getChildAt(0).getParent();
                int[] iArr = new int[2];
                parent.getLocationInWindow(iArr);
                int paddingTop2 = iArr[1] + parent.getPaddingTop();
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    int position = getPosition(childAt);
                    if (position < this.l) {
                        childAt.setAlpha(0.0f);
                        i3 = -paddingTop2;
                    } else if (position < this.k) {
                        RecyclerView.LayoutParams layoutParams = childAt.getLayoutParams();
                        if (layoutParams.topMargin < 0) {
                            i2 = 0 - layoutParams.topMargin;
                        } else {
                            i2 = 0;
                        }
                        if (layoutParams.bottomMargin < 0) {
                            i2 -= layoutParams.bottomMargin;
                        }
                        childAt.setAlpha(1.0f);
                        i3 = -((int) (this.a.getInterpolation(abs) * (i2 + paddingTop2)));
                    } else {
                        childAt.setAlpha(1.0f);
                        a(childAt, 0.0f);
                    }
                    a(childAt, i3);
                }
            } else if (i4 == 0) {
                if (getChildCount() == 0) {
                    if (Log.isLoggable("CarLayoutManager", 3)) {
                        Log.d("CarLayoutManager", ":: offsetRowsIndividually getChildCount=0");
                        return;
                    }
                    return;
                }
                int childCount2 = getChildCount() - 1;
                while (true) {
                    if (childCount2 >= 0) {
                        View childAt2 = getChildAt(childCount2);
                        if (getDecoratedTop(childAt2) - childAt2.getLayoutParams().topMargin <= getPaddingTop()) {
                            break;
                        }
                        childCount2--;
                    } else {
                        childCount2 = -1;
                        break;
                    }
                }
                this.k = childCount2;
                if (Log.isLoggable("CarLayoutManager", 2)) {
                    StringBuilder sb = new StringBuilder(57);
                    sb.append(":: offsetRowsIndividually danglingChildIndex: ");
                    sb.append(childCount2);
                    Log.v("CarLayoutManager", sb.toString());
                }
                RecyclerView parent2 = getChildAt(0).getParent();
                int[] iArr2 = new int[2];
                parent2.getLocationInWindow(iArr2);
                int paddingTop3 = iArr2[1] + parent2.getPaddingTop();
                int childCount3 = getChildCount();
                for (int i6 = 0; i6 < childCount3; i6++) {
                    View childAt3 = getChildAt(i6);
                    RecyclerView.LayoutParams layoutParams2 = childAt3.getLayoutParams();
                    if (layoutParams2.topMargin < 0) {
                        i = paddingTop3 - layoutParams2.topMargin;
                    } else {
                        i = paddingTop3;
                    }
                    if (layoutParams2.bottomMargin < 0) {
                        i -= layoutParams2.bottomMargin;
                    }
                    if (i6 < childCount2) {
                        childAt3.setAlpha(0.0f);
                    } else if (i6 > childCount2) {
                        childAt3.setAlpha(1.0f);
                        a(childAt3, 0.0f);
                    } else {
                        int decoratedMeasuredHeight = getDecoratedMeasuredHeight(childAt3);
                        int i7 = layoutParams2.topMargin;
                        int i8 = layoutParams2.bottomMargin;
                        float interpolation = this.a.getInterpolation(1.0f - (((layoutParams2.bottomMargin + getDecoratedBottom(childAt3)) - getPaddingTop()) / ((decoratedMeasuredHeight + i7) + i8)));
                        childAt3.setAlpha(1.0f);
                        a(childAt3, -(interpolation * i));
                    }
                }
            }
        }
    }

    public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
        int lastFocusedChildIndexIfVisible;
        int i3;
        if (getFocusedChild() != null) {
            return false;
        }
        int firstFullyVisibleChildIndex = getFirstFullyVisibleChildIndex();
        if (firstFullyVisibleChildIndex == -1) {
            Log.w("CarLayoutManager", "There is a focused child but no first fully visible child.");
            return false;
        }
        if (getPosition(getChildAt(firstFullyVisibleChildIndex)) > 0 && (i3 = firstFullyVisibleChildIndex + 1) < getItemCount()) {
            firstFullyVisibleChildIndex = i3;
        }
        if (i == 2) {
            while (firstFullyVisibleChildIndex < getChildCount()) {
                arrayList.add(getChildAt(firstFullyVisibleChildIndex));
                firstFullyVisibleChildIndex++;
            }
            return true;
        } else if (i == 1) {
            while (firstFullyVisibleChildIndex >= 0) {
                arrayList.add(getChildAt(firstFullyVisibleChildIndex));
                firstFullyVisibleChildIndex--;
            }
            return true;
        } else if (i != 130 || (lastFocusedChildIndexIfVisible = getLastFocusedChildIndexIfVisible()) == -1) {
            return false;
        } else {
            arrayList.add(getChildAt(lastFocusedChildIndexIfVisible));
            return true;
        }
    }

    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        a();
        offsetRows();
    }

    public View onFocusSearchFailed(View view, int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        return null;
    }

    public void onItemsChanged(RecyclerView recyclerView) {
        super.onItemsChanged(recyclerView);
        this.o = -1;
    }

    public void onLayoutChildren(RecyclerView.n nVar, RecyclerView.r rVar) {
        int i;
        int i2 = this.q;
        if (i2 == -1) {
            View firstFullyVisibleChild = getFirstFullyVisibleChild();
            if (firstFullyVisibleChild != null) {
                int position = getPosition(firstFullyVisibleChild);
                i = getDecoratedTop(firstFullyVisibleChild);
                i2 = position;
            } else {
                i = -1;
                i2 = 0;
            }
        } else {
            this.q = -1;
            this.k = i2;
            this.l = -1;
            this.m = -1;
            i = -1;
        }
        if (Log.isLoggable("CarLayoutManager", 2)) {
            int i3 = this.q;
            int i4 = this.k;
            int i5 = this.l;
            int i6 = this.m;
            StringBuilder g = t20.g(":: onLayoutChildren anchorPosition:", i2, ", anchorTop:", i, ", mPendingScrollPosition: ");
            g.append(i3);
            g.append(", mAnchorPageBreakPosition:");
            g.append(i4);
            g.append(", mUpperPageBreakPosition:");
            g.append(i5);
            g.append(", mLowerPageBreakPosition:");
            g.append(i6);
            Log.v("CarLayoutManager", g.toString());
        }
        detachAndScrapAttachedViews(nVar);
        int min = Math.min(i2, getItemCount() - 1);
        if (min >= 0) {
            View c = nVar.c(min);
            RecyclerView.LayoutParams layoutParams = c.getLayoutParams();
            measureChildWithMargins(c, 0, 0);
            int paddingLeft = getPaddingLeft() + layoutParams.leftMargin;
            if (i == -1) {
                i = layoutParams.topMargin;
            }
            layoutDecorated(c, paddingLeft, i, paddingLeft + getDecoratedMeasuredWidth(c), getDecoratedMeasuredHeight(c) + i);
            addView(c);
            View view = c;
            while (a(rVar, view, 0)) {
                view = a(nVar, view, 0);
            }
            while (a(rVar, c, 1)) {
                c = a(nVar, c, 1);
            }
        }
        a();
        offsetRows();
        if (Log.isLoggable("CarLayoutManager", 2) && getChildCount() > 1) {
            int childCount = getChildCount();
            int position2 = getPosition(getChildAt(0));
            int position3 = getPosition(getChildAt(getChildCount() - 1));
            StringBuilder sb = new StringBuilder(81);
            sb.append("Currently showing ");
            sb.append(childCount);
            sb.append(" views ");
            sb.append(position2);
            sb.append(" to ");
            sb.append(position3);
            sb.append(" anchor ");
            sb.append(min);
            Log.v("CarLayoutManager", sb.toString());
        }
    }

    public boolean onRequestChildFocus(RecyclerView recyclerView, RecyclerView.r rVar, View view, View view2) {
        if (view == null) {
            Log.w("CarLayoutManager", "onRequestChildFocus with a null child!");
        } else {
            if (Log.isLoggable("CarLayoutManager", 2)) {
                Log.v("CarLayoutManager", String.format(":: onRequestChildFocus child: %s, focused: %s", view, view2));
            }
            int position = getPosition(view);
            if (position != this.n) {
                this.n = position;
                int c = c();
                int decoratedTop = getDecoratedTop(view);
                int decoratedBottom = getDecoratedBottom(view);
                for (int indexOfChild = recyclerView.indexOfChild(view); indexOfChild >= 0; indexOfChild--) {
                    View childAt = getChildAt(indexOfChild);
                    if (childAt != null) {
                        if (indexOfChild != 0) {
                            View childAt2 = getChildAt(indexOfChild - 1);
                            if (childAt2 != null) {
                                int decoratedTop2 = getDecoratedTop(childAt2);
                                int decoratedTop3 = getDecoratedTop(childAt2);
                                if (decoratedTop - decoratedTop2 <= c / 2 && decoratedBottom - decoratedTop3 <= c) {
                                }
                            } else {
                                continue;
                            }
                        }
                        recyclerView.smoothScrollToPosition(getPosition(childAt));
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(34);
                    sb.append("Child is null at index ");
                    sb.append(indexOfChild);
                    Log.e("CarLayoutManager", sb.toString());
                }
            }
        }
        return true;
    }

    public void onScrollStateChanged(int i) {
        if (Log.isLoggable("CarLayoutManager", 2)) {
            StringBuilder sb = new StringBuilder(35);
            sb.append(":: onScrollStateChanged ");
            sb.append(i);
            Log.v("CarLayoutManager", sb.toString());
        }
        if (i == 0) {
            View focusedChild = getFocusedChild();
            if (focusedChild != null && (getDecoratedTop(focusedChild) >= getHeight() - getPaddingBottom() || getDecoratedBottom(focusedChild) <= getPaddingTop())) {
                focusedChild.clearFocus();
                requestLayout();
            }
        } else if (i == 1) {
            this.h = 0;
        }
        if (i != 2) {
            this.f = null;
        }
        this.e = i;
        a();
    }

    public void scrollToPosition(int i) {
        this.q = i;
        requestLayout();
    }

    public int scrollVerticallyBy(int i, RecyclerView.n nVar, RecyclerView.r rVar) {
        View childAt;
        if (getItemCount() == 0) {
            return i;
        }
        if (getChildCount() > 1 && i != 0 && (childAt = getChildAt(0)) != null) {
            int position = getPosition(childAt);
            int decoratedTop = getDecoratedTop(childAt) - childAt.getLayoutParams().topMargin;
            View childAt2 = getChildAt(getLastFullyVisibleChildIndex());
            if (childAt2 != null) {
                boolean z = getPosition(childAt2) == getItemCount() - 1;
                View firstFullyVisibleChild = getFirstFullyVisibleChild();
                if (firstFullyVisibleChild != null) {
                    int position2 = getPosition(firstFullyVisibleChild);
                    int decoratedTop2 = (getDecoratedTop(firstFullyVisibleChild) - firstFullyVisibleChild.getLayoutParams().topMargin) - getPaddingTop();
                    if (z && position2 == this.k && i > decoratedTop2 && i > 0) {
                        this.i = true;
                        i = decoratedTop2;
                    } else if (i >= 0 || position != 0 || Math.abs(i) + decoratedTop <= getPaddingTop()) {
                        this.i = false;
                    } else {
                        i = decoratedTop - getPaddingTop();
                        this.i = true;
                    }
                    if (this.e == 1) {
                        this.h += i;
                    }
                    offsetChildrenVertical(-i);
                    View childAt3 = getChildAt(getChildCount() - 1);
                    if (childAt3.getTop() < 0) {
                        childAt3.setTop(0);
                    }
                    if (i > 0) {
                        int paddingTop = getPaddingTop();
                        int height = getHeight();
                        View focusedChild = getFocusedChild();
                        int position3 = focusedChild != null ? getPosition(focusedChild) : Alert.DURATION_SHOW_INDEFINITELY;
                        int childCount = getChildCount();
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < childCount) {
                            View childAt4 = getChildAt(i2);
                            int decoratedBottom = getDecoratedBottom(childAt4);
                            int position4 = getPosition(childAt4);
                            if (decoratedBottom >= paddingTop - height || position4 >= position3 - 1) {
                                break;
                            }
                            i2++;
                            i3++;
                        }
                        while (true) {
                            i3--;
                            if (i3 < 0) {
                                break;
                            }
                            removeAndRecycleView(getChildAt(0), nVar);
                        }
                        View childAt5 = getChildAt(getChildCount() - 1);
                        while (a(rVar, childAt5, 1)) {
                            childAt5 = a(nVar, childAt5, 1);
                        }
                    } else {
                        int height2 = getHeight();
                        View focusedChild2 = getFocusedChild();
                        int position5 = focusedChild2 != null ? getPosition(focusedChild2) : -2147483647;
                        int i4 = 0;
                        int i5 = 0;
                        for (int childCount2 = getChildCount() - 1; childCount2 >= 0; childCount2--) {
                            View childAt6 = getChildAt(childCount2);
                            int decoratedTop3 = getDecoratedTop(childAt6);
                            int position6 = getPosition(childAt6);
                            if (decoratedTop3 <= height2 || position6 <= position5 - 1) {
                                break;
                            }
                            i4++;
                            i5 = childCount2;
                        }
                        while (true) {
                            i4--;
                            if (i4 < 0) {
                                break;
                            }
                            removeAndRecycleView(getChildAt(i5), nVar);
                        }
                        View childAt7 = getChildAt(0);
                        while (a(rVar, childAt7, 0)) {
                            childAt7 = a(nVar, childAt7, 0);
                        }
                    }
                    a();
                    offsetRows();
                    if (getChildCount() > 1 && Log.isLoggable("CarLayoutManager", 2)) {
                        Log.v("CarLayoutManager", String.format("Currently showing  %d views (%d to %d)", Integer.valueOf(getChildCount()), Integer.valueOf(getPosition(getChildAt(0))), Integer.valueOf(getPosition(getChildAt(getChildCount() - 1)))));
                    }
                    return i;
                }
            }
        }
        return 0;
    }

    public void setOffsetRows(boolean z) {
        this.c = z;
        if (z) {
            if (this.p == null) {
                this.p = new LruCache<>(30);
            }
            offsetRows();
            return;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(getChildAt(i), 0.0f);
        }
        this.p = null;
    }

    public void setOnScrollListener(PagedListView.OnScrollListener onScrollListener) {
        this.g = onScrollListener;
    }

    public void setRowOffsetMode(int i) {
        if (i == this.d) {
            return;
        }
        this.d = i;
        offsetRows();
    }

    public boolean settleScrollForFling(RecyclerView recyclerView, int i) {
        int position;
        int i2;
        if (getChildCount() != 0 && !this.i) {
            if (Math.abs(i) < 0 || Math.abs(this.h) < 0) {
                int firstFullyVisibleChildIndex = getFirstFullyVisibleChildIndex();
                if (firstFullyVisibleChildIndex != -1) {
                    position = getPosition(getChildAt(firstFullyVisibleChildIndex));
                    recyclerView.smoothScrollToPosition(position);
                    return true;
                }
            } else {
                boolean z = i > 0 || (i == 0 && this.h >= 0);
                boolean z2 = i < 0 || (i == 0 && this.h < 0);
                if (z && this.m != -1) {
                    recyclerView.smoothScrollToPosition(this.k);
                    PagedListView.OnScrollListener onScrollListener = this.g;
                    if (onScrollListener != null) {
                        onScrollListener.onGestureDown();
                    }
                    return true;
                } else if (z2 && (i2 = this.l) != -1) {
                    recyclerView.smoothScrollToPosition(i2);
                    PagedListView.OnScrollListener onScrollListener2 = this.g;
                    if (onScrollListener2 != null) {
                        onScrollListener2.onGestureUp();
                    }
                    return true;
                } else {
                    int i3 = this.h;
                    int i4 = this.l;
                    int i5 = this.m;
                    StringBuilder sb = new StringBuilder(157);
                    sb.append("Error setting scroll for fling! flingVelocity: \t");
                    sb.append(i);
                    sb.append("\tlastDragDistance: ");
                    sb.append(i3);
                    sb.append("\tpageUpAtStartOfDrag: ");
                    sb.append(i4);
                    sb.append("\tpageDownAtStartOfDrag: ");
                    sb.append(i5);
                    Log.e("CarLayoutManager", sb.toString());
                    a aVar = this.f;
                    if (aVar != null) {
                        position = aVar.getTargetPosition();
                        recyclerView.smoothScrollToPosition(position);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.r rVar, int i) {
        a aVar = new a(this.b, i);
        this.f = aVar;
        aVar.setTargetPosition(i);
        startSmoothScroll(this.f);
    }

    private int b(int i) {
        int i2;
        View findViewByPosition;
        if (i == -1) {
            return -1;
        }
        View findViewByPosition2 = findViewByPosition(i);
        if (findViewByPosition2 != null) {
            int decoratedTop = getDecoratedTop(findViewByPosition2);
            int i3 = findViewByPosition2.getLayoutParams().topMargin;
            int i4 = i;
            while (i4 < getItemCount() - 1 && (findViewByPosition = findViewByPosition((i2 = i4 + 1))) != null) {
                if (getDecoratedTop(findViewByPosition) - findViewByPosition.getLayoutParams().topMargin > (decoratedTop - i3) + getHeight()) {
                    return i4 == i ? i2 : i4;
                }
                i4 = i2;
            }
            return i4;
        }
        return i;
    }

    private final View a(RecyclerView.n nVar, View view, int i) {
        int decoratedBottom;
        int decoratedMeasuredHeight;
        int position = getPosition(view);
        if (i == 0) {
            position--;
        } else if (i == 1) {
            position++;
        }
        View c = nVar.c(position);
        measureChildWithMargins(c, 0, 0);
        RecyclerView.LayoutParams layoutParams = c.getLayoutParams();
        RecyclerView.LayoutParams layoutParams2 = view.getLayoutParams();
        int paddingLeft = getPaddingLeft() + layoutParams.leftMargin;
        int decoratedMeasuredWidth = getDecoratedMeasuredWidth(c);
        if (i == 0) {
            decoratedMeasuredHeight = (view.getTop() - layoutParams2.topMargin) - layoutParams.bottomMargin;
            decoratedBottom = decoratedMeasuredHeight - getDecoratedMeasuredHeight(c);
        } else {
            decoratedBottom = layoutParams2.bottomMargin + getDecoratedBottom(view) + layoutParams.topMargin;
            decoratedMeasuredHeight = getDecoratedMeasuredHeight(c) + decoratedBottom;
        }
        layoutDecorated(c, paddingLeft, decoratedBottom, decoratedMeasuredWidth + paddingLeft, decoratedMeasuredHeight);
        if (i == 0) {
            addView(c, 0);
            return c;
        }
        addView(c);
        return c;
    }

    private int a(int i) {
        if (i == -1) {
            return -1;
        }
        View findViewByPosition = findViewByPosition(i);
        int decoratedTop = getDecoratedTop(findViewByPosition);
        int i2 = findViewByPosition.getLayoutParams().topMargin;
        while (i > 0) {
            int i3 = i - 1;
            View findViewByPosition2 = findViewByPosition(i3);
            if (findViewByPosition2 == null || getDecoratedTop(findViewByPosition2) - findViewByPosition2.getLayoutParams().topMargin < (decoratedTop - i2) - getHeight()) {
                return i;
            }
            i = i3;
        }
        return 0;
    }

    private final void a(View view, float f) {
        if (this.p.get(view) == null) {
            b bVar = new b((byte) 0);
            bVar.setFillEnabled(true);
            bVar.setFillAfter(true);
            bVar.setDuration(0L);
            this.p.put(view, bVar);
        }
        b bVar2 = this.p.get(view);
        bVar2.reset();
        bVar2.a = f;
        bVar2.setStartTime(-1L);
        view.setAnimation(bVar2);
        bVar2.startNow();
    }

    private final boolean a(RecyclerView.r rVar, View view, int i) {
        int position = getPosition(view);
        if (i == 0) {
            if (position == 0) {
                return false;
            }
        } else if (i == 1 && position >= rVar.e() - 1) {
            return false;
        }
        a aVar = this.f;
        if (aVar != null) {
            if (i == 0 && position >= aVar.getTargetPosition()) {
                return true;
            }
            if (i == 1 && position <= this.f.getTargetPosition()) {
                return true;
            }
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null) {
            int position2 = getPosition(focusedChild);
            if (i == 0 && position >= position2 - 2) {
                return true;
            }
            if (i == 1 && position <= position2 + 2) {
                return true;
            }
        }
        RecyclerView.LayoutParams layoutParams = view.getLayoutParams();
        int decoratedTop = getDecoratedTop(view);
        int i2 = layoutParams.topMargin;
        int decoratedBottom = getDecoratedBottom(view);
        int i3 = layoutParams.bottomMargin;
        if (i != 0 || decoratedTop - i2 >= getPaddingTop() - getHeight()) {
            return i != 1 || decoratedBottom - i3 <= getHeight() - getPaddingBottom();
        }
        return false;
    }
}
