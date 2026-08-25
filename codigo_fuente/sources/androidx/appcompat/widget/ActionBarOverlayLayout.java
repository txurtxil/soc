package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.car.app.model.Alert;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements br, cr {
    public static final int[] C = {R.attr.actionBarSize, 16842841};
    public final u0 A;
    public final dr B;
    public int a;
    public int b;
    public ContentFrameLayout c;
    public ActionBarContainer d;
    public pb e;
    public Drawable f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public final Rect n;
    public final Rect o;
    public final Rect q;
    public f90 r;
    public f90 s;
    public f90 t;
    public f90 u;
    public v0 v;
    public OverScroller w;
    public ViewPropertyAnimator x;
    public final t0 y;
    public final u0 z;

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, dr] */
    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.n = new Rect();
        this.o = new Rect();
        this.q = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        f90 f90Var = f90.b;
        this.r = f90Var;
        this.s = f90Var;
        this.t = f90Var;
        this.u = f90Var;
        this.y = new t0(0, this);
        this.z = new u0(this, 0);
        this.A = new u0(this, 1);
        i(context);
        this.B = new Object();
    }

    public static boolean g(View view, Rect rect, boolean z) {
        boolean z2;
        w0 w0Var = (w0) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) w0Var).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) w0Var).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) w0Var).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) w0Var).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) w0Var).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) w0Var).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) w0Var).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) w0Var).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // defpackage.br
    public final void a(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // defpackage.br
    public final void b(ViewGroup viewGroup, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(viewGroup, i, i2, i3, i4);
        }
    }

    @Override // defpackage.br
    public final void c(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof w0;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f != null && !this.g) {
            if (this.d.getVisibility() == 0) {
                i = (int) (this.d.getTranslationY() + this.d.getBottom() + 0.5f);
            } else {
                i = 0;
            }
            this.f.setBounds(0, i, getWidth(), this.f.getIntrinsicHeight() + i);
            this.f.draw(canvas);
        }
    }

    @Override // defpackage.cr
    public final void e(ViewGroup viewGroup, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        b(viewGroup, i, i2, i3, i4, i5);
    }

    @Override // defpackage.br
    public final boolean f(View view, View view2, int i, int i2) {
        if (i2 == 0 && onStartNestedScroll(view, view2, i)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        dr drVar = this.B;
        return drVar.b | drVar.a;
    }

    public CharSequence getTitle() {
        k();
        return ((h50) this.e).a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        ViewPropertyAnimator viewPropertyAnimator = this.x;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        boolean z;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(C);
        boolean z2 = false;
        this.a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        if (drawable == null) {
            z = true;
        } else {
            z = false;
        }
        setWillNotDraw(z);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z2 = true;
        }
        this.g = z2;
        this.w = new OverScroller(context);
    }

    public final void j(int i) {
        k();
        if (i != 2) {
            if (i != 5) {
                if (i != 109) {
                    return;
                }
                setOverlayMode(true);
                return;
            }
            ((h50) this.e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
            return;
        }
        ((h50) this.e).getClass();
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final void k() {
        pb wrapper;
        if (this.c == null) {
            this.c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            View findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof pb) {
                wrapper = (pb) findViewById;
            } else if (findViewById instanceof Toolbar) {
                wrapper = ((Toolbar) findViewById).getWrapper();
            } else {
                c2.g("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
                return;
            }
            this.e = wrapper;
        }
    }

    public final void l(Menu menu, kp kpVar) {
        k();
        h50 h50Var = (h50) this.e;
        Toolbar toolbar = h50Var.a;
        if (h50Var.m == null) {
            h50Var.m = new e1(toolbar.getContext());
        }
        e1 e1Var = h50Var.m;
        e1Var.e = kpVar;
        so soVar = (so) menu;
        if (soVar != null || toolbar.a != null) {
            toolbar.f();
            so soVar2 = toolbar.a.q;
            if (soVar2 == soVar) {
                return;
            }
            if (soVar2 != null) {
                soVar2.r(toolbar.M);
                soVar2.r(toolbar.N);
            }
            if (toolbar.N == null) {
                toolbar.N = new y40(toolbar);
            }
            e1Var.r = true;
            Context context = toolbar.j;
            if (soVar != null) {
                soVar.b(e1Var, context);
                soVar.b(toolbar.N, toolbar.j);
            } else {
                e1Var.i(context, null);
                toolbar.N.i(toolbar.j, null);
                e1Var.g();
                toolbar.N.g();
            }
            toolbar.a.setPopupTheme(toolbar.k);
            toolbar.a.setPresenter(e1Var);
            toolbar.M = e1Var;
            toolbar.w();
        }
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        f90 e = f90.e(windowInsets, this);
        int a = e.a();
        e90 e90Var = e.a;
        boolean g = g(this.d, new Rect(a, e90Var.g().b, e.b(), e90Var.g().d), false);
        WeakHashMap weakHashMap = u70.a;
        Rect rect = this.n;
        j70.b(this, e, rect);
        f90 h = e90Var.h(rect.left, rect.top, rect.right, rect.bottom);
        this.r = h;
        boolean z = true;
        if (!this.s.equals(h)) {
            this.s = this.r;
            g = true;
        }
        Rect rect2 = this.o;
        if (!rect2.equals(rect)) {
            rect2.set(rect);
        } else {
            z = g;
        }
        if (z) {
            requestLayout();
        }
        return e90Var.a().a.c().a.b().d();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = u70.a;
        h70.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                w0 w0Var = (w0) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) w0Var).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) w0Var).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int measuredHeight;
        y80 v80Var;
        k();
        measureChildWithMargins(this.d, i, 0, i2, 0);
        w0 w0Var = (w0) this.d.getLayoutParams();
        int max = Math.max(0, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) w0Var).leftMargin + ((ViewGroup.MarginLayoutParams) w0Var).rightMargin);
        int max2 = Math.max(0, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) w0Var).topMargin + ((ViewGroup.MarginLayoutParams) w0Var).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        WeakHashMap weakHashMap = u70.a;
        if ((e70.g(this) & 256) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            measuredHeight = this.a;
            if (this.i && this.d.getTabContainer() != null) {
                measuredHeight += this.a;
            }
        } else {
            measuredHeight = this.d.getVisibility() != 8 ? this.d.getMeasuredHeight() : 0;
        }
        Rect rect = this.n;
        Rect rect2 = this.q;
        rect2.set(rect);
        f90 f90Var = this.r;
        this.t = f90Var;
        if (!this.h && !z) {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            this.t = f90Var.a.h(0, measuredHeight, 0, 0);
        } else {
            lj a = lj.a(f90Var.a(), this.t.a.g().b + measuredHeight, this.t.b(), this.t.a.g().d);
            f90 f90Var2 = this.t;
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 30) {
                v80Var = new x80(f90Var2);
            } else if (i3 >= 29) {
                v80Var = new w80(f90Var2);
            } else {
                v80Var = new v80(f90Var2);
            }
            v80Var.d(a);
            this.t = v80Var.b();
        }
        g(this.c, rect2, true);
        if (!this.u.equals(this.t)) {
            f90 f90Var3 = this.t;
            this.u = f90Var3;
            ContentFrameLayout contentFrameLayout = this.c;
            WindowInsets d = f90Var3.d();
            if (d != null) {
                WindowInsets a2 = h70.a(contentFrameLayout, d);
                if (!a2.equals(d)) {
                    f90.e(a2, contentFrameLayout);
                }
            }
        }
        measureChildWithMargins(this.c, i, 0, i2, 0);
        w0 w0Var2 = (w0) this.c.getLayoutParams();
        int max3 = Math.max(max, this.c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) w0Var2).leftMargin + ((ViewGroup.MarginLayoutParams) w0Var2).rightMargin);
        int max4 = Math.max(max2, this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) w0Var2).topMargin + ((ViewGroup.MarginLayoutParams) w0Var2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (this.j && z) {
            this.w.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Alert.DURATION_SHOW_INDEFINITELY);
            if (this.w.getFinalY() > this.d.getHeight()) {
                h();
                this.A.run();
            } else {
                h();
                this.z.run();
            }
            this.k = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.l + i2;
        this.l = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        t80 t80Var;
        i80 i80Var;
        this.B.a = i;
        this.l = getActionBarHideOffset();
        h();
        v0 v0Var = this.v;
        if (v0Var != null && (i80Var = (t80Var = (t80) v0Var).K) != null) {
            i80Var.a();
            t80Var.K = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) != 0 && this.d.getVisibility() == 0) {
            return this.j;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (this.j && !this.k) {
            if (this.l <= this.d.getHeight()) {
                h();
                postDelayed(this.z, 600L);
                return;
            }
            h();
            postDelayed(this.A, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        boolean z;
        boolean z2;
        super.onWindowSystemUiVisibilityChanged(i);
        k();
        int i2 = this.m ^ i;
        this.m = i;
        if ((i & 4) == 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 256) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        v0 v0Var = this.v;
        if (v0Var != null) {
            t80 t80Var = (t80) v0Var;
            t80Var.G = !z2;
            if (!z && z2) {
                if (!t80Var.H) {
                    t80Var.H = true;
                    t80Var.O(true);
                }
            } else if (t80Var.H) {
                t80Var.H = false;
                t80Var.O(true);
            }
        }
        if ((i2 & 256) != 0 && this.v != null) {
            WeakHashMap weakHashMap = u70.a;
            h70.c(this);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
        v0 v0Var = this.v;
        if (v0Var != null) {
            ((t80) v0Var).F = i;
        }
    }

    public void setActionBarHideOffset(int i) {
        h();
        this.d.setTranslationY(-Math.max(0, Math.min(i, this.d.getHeight())));
    }

    public void setActionBarVisibilityCallback(v0 v0Var) {
        this.v = v0Var;
        if (getWindowToken() != null) {
            ((t80) this.v).F = this.b;
            int i = this.m;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                WeakHashMap weakHashMap = u70.a;
                h70.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.j) {
            this.j = z;
            if (!z) {
                h();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i) {
        Drawable drawable;
        k();
        h50 h50Var = (h50) this.e;
        if (i != 0) {
            drawable = gn.p(h50Var.a.getContext(), i);
        } else {
            drawable = null;
        }
        h50Var.d = drawable;
        h50Var.c();
    }

    public void setLogo(int i) {
        Drawable drawable;
        k();
        h50 h50Var = (h50) this.e;
        if (i != 0) {
            drawable = gn.p(h50Var.a.getContext(), i);
        } else {
            drawable = null;
        }
        h50Var.e = drawable;
        h50Var.c();
    }

    public void setOverlayMode(boolean z) {
        boolean z2;
        this.h = z;
        if (z && getContext().getApplicationInfo().targetSdkVersion < 19) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.g = z2;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    public void setWindowCallback(Window.Callback callback) {
        k();
        ((h50) this.e).k = callback;
    }

    public void setWindowTitle(CharSequence charSequence) {
        k();
        h50 h50Var = (h50) this.e;
        if (!h50Var.g) {
            Toolbar toolbar = h50Var.a;
            h50Var.h = charSequence;
            if ((h50Var.b & 8) != 0) {
                toolbar.setTitle(charSequence);
                if (h50Var.g) {
                    u70.i(toolbar.getRootView(), charSequence);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        h50 h50Var = (h50) this.e;
        h50Var.d = drawable;
        h50Var.c();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    @Override // defpackage.br
    public final void d(int i, int i2, int[] iArr, int i3) {
    }
}
