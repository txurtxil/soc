package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.car.app.model.Alert;
/* loaded from: classes.dex */
public class ActionMenuView extends wk implements ro, np {
    public final int A;
    public h1 B;
    public so q;
    public Context r;
    public int s;
    public boolean t;
    public e1 u;
    public d50 v;
    public qo w;
    public boolean x;
    public int y;
    public final int z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.z = (int) (56.0f * f);
        this.A = (int) (f * 4.0f);
        this.r = context;
        this.s = 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.widget.LinearLayout$LayoutParams, g1] */
    public static g1 i() {
        ?? layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.a = false;
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.widget.LinearLayout$LayoutParams, g1] */
    public static g1 j(ViewGroup.LayoutParams layoutParams) {
        g1 g1Var;
        if (layoutParams != null) {
            if (layoutParams instanceof g1) {
                g1 g1Var2 = (g1) layoutParams;
                ?? layoutParams2 = new LinearLayout.LayoutParams((ViewGroup.LayoutParams) g1Var2);
                layoutParams2.a = g1Var2.a;
                g1Var = layoutParams2;
            } else {
                g1Var = new LinearLayout.LayoutParams(layoutParams);
            }
            if (((LinearLayout.LayoutParams) g1Var).gravity <= 0) {
                ((LinearLayout.LayoutParams) g1Var).gravity = 16;
            }
            return g1Var;
        }
        return i();
    }

    @Override // defpackage.ro
    public final boolean a(wo woVar) {
        return this.q.q(woVar, null, 0);
    }

    @Override // defpackage.np
    public final void b(so soVar) {
        this.q = soVar;
    }

    @Override // defpackage.wk, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof g1;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // defpackage.wk
    public final /* bridge */ /* synthetic */ vk e() {
        return i();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [vk, android.widget.LinearLayout$LayoutParams] */
    @Override // defpackage.wk
    public final vk f(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    @Override // defpackage.wk
    public final /* bridge */ /* synthetic */ vk g(ViewGroup.LayoutParams layoutParams) {
        return j(layoutParams);
    }

    @Override // defpackage.wk, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return i();
    }

    @Override // defpackage.wk, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    public Menu getMenu() {
        if (this.q == null) {
            Context context = getContext();
            so soVar = new so(context);
            this.q = soVar;
            soVar.e = new c9(3, this);
            e1 e1Var = new e1(context);
            this.u = e1Var;
            e1Var.l = true;
            e1Var.m = true;
            kp kpVar = this.v;
            if (kpVar == null) {
                kpVar = new hd(4);
            }
            e1Var.e = kpVar;
            this.q.b(e1Var, this.r);
            e1 e1Var2 = this.u;
            e1Var2.h = this;
            this.q = e1Var2.c;
        }
        return this.q;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        e1 e1Var = this.u;
        d1 d1Var = e1Var.i;
        if (d1Var != null) {
            return d1Var.getDrawable();
        }
        if (e1Var.k) {
            return e1Var.j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.s;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public final boolean k(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof f1)) {
            z = ((f1) childAt).b();
        }
        if (i > 0 && (childAt2 instanceof f1)) {
            return ((f1) childAt2).c() | z;
        }
        return z;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        e1 e1Var = this.u;
        if (e1Var != null) {
            e1Var.g();
            if (this.u.h()) {
                this.u.d();
                this.u.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e1 e1Var = this.u;
        if (e1Var != null) {
            e1Var.d();
            a1 a1Var = e1Var.u;
            if (a1Var != null && a1Var.b()) {
                a1Var.i.dismiss();
            }
        }
    }

    @Override // defpackage.wk, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        if (!this.x) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean a = l80.a(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                g1 g1Var = (g1) childAt.getLayoutParams();
                if (g1Var.a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (k(i11)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a) {
                        i6 = getPaddingLeft() + ((LinearLayout.LayoutParams) g1Var).leftMargin;
                        width = i6 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) g1Var).rightMargin;
                        i6 = width - measuredWidth;
                    }
                    int i12 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) g1Var).leftMargin) + ((LinearLayout.LayoutParams) g1Var).rightMargin;
                    k(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        if (i15 > 0) {
            i5 = paddingRight / i15;
        } else {
            i5 = 0;
        }
        int max = Math.max(0, i5);
        if (a) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                g1 g1Var2 = (g1) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !g1Var2.a) {
                    int i17 = width2 - ((LinearLayout.LayoutParams) g1Var2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ((LinearLayout.LayoutParams) g1Var2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            g1 g1Var3 = (g1) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !g1Var3.a) {
                int i20 = paddingLeft + ((LinearLayout.LayoutParams) g1Var3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = measuredWidth4 + ((LinearLayout.LayoutParams) g1Var3).rightMargin + max + i20;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // defpackage.wk, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        int i6;
        ?? r11;
        boolean z4;
        int i7;
        int i8;
        ActionMenuItemView actionMenuItemView;
        boolean z5;
        int i9;
        boolean z6;
        so soVar;
        boolean z7 = this.x;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        this.x = z;
        if (z7 != z) {
            this.y = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.x && (soVar = this.q) != null && size != this.y) {
            this.y = size;
            soVar.p(true);
        }
        int childCount = getChildCount();
        if (this.x && childCount > 0) {
            int mode = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i);
            int size3 = View.MeasureSpec.getSize(i2);
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
            int i10 = size2 - paddingRight;
            int i11 = this.z;
            int i12 = i10 / i11;
            int i13 = i10 % i11;
            if (i12 == 0) {
                setMeasuredDimension(i10, 0);
                return;
            }
            int i14 = (i13 / i12) + i11;
            int childCount2 = getChildCount();
            int i15 = 0;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            boolean z8 = false;
            int i19 = 0;
            long j = 0;
            while (true) {
                i3 = this.A;
                if (i18 >= childCount2) {
                    break;
                }
                View childAt = getChildAt(i18);
                int i20 = size3;
                int i21 = paddingBottom;
                if (childAt.getVisibility() == 8) {
                    i8 = i14;
                } else {
                    boolean z9 = childAt instanceof ActionMenuItemView;
                    i16++;
                    if (z9) {
                        childAt.setPadding(i3, 0, i3, 0);
                    }
                    g1 g1Var = (g1) childAt.getLayoutParams();
                    g1Var.f = false;
                    g1Var.c = 0;
                    g1Var.b = 0;
                    g1Var.d = false;
                    ((LinearLayout.LayoutParams) g1Var).leftMargin = 0;
                    ((LinearLayout.LayoutParams) g1Var).rightMargin = 0;
                    if (z9 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText())) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    g1Var.e = z4;
                    if (g1Var.a) {
                        i7 = 1;
                    } else {
                        i7 = i12;
                    }
                    g1 g1Var2 = (g1) childAt.getLayoutParams();
                    int i22 = i12;
                    i8 = i14;
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i21, View.MeasureSpec.getMode(childMeasureSpec));
                    if (z9) {
                        actionMenuItemView = (ActionMenuItemView) childAt;
                    } else {
                        actionMenuItemView = null;
                    }
                    if (actionMenuItemView != null && !TextUtils.isEmpty(actionMenuItemView.getText())) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    boolean z10 = z5;
                    if (i7 > 0 && (!z5 || i7 >= 2)) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i8 * i7, Integer.MIN_VALUE), makeMeasureSpec);
                        int measuredWidth = childAt.getMeasuredWidth();
                        i9 = measuredWidth / i8;
                        if (measuredWidth % i8 != 0) {
                            i9++;
                        }
                        if (z10 && i9 < 2) {
                            i9 = 2;
                        }
                    } else {
                        i9 = 0;
                    }
                    if (!g1Var2.a && z10) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    g1Var2.d = z6;
                    g1Var2.b = i9;
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i9 * i8, 1073741824), makeMeasureSpec);
                    i17 = Math.max(i17, i9);
                    if (g1Var.d) {
                        i19++;
                    }
                    if (g1Var.a) {
                        z8 = true;
                    }
                    i12 = i22 - i9;
                    i15 = Math.max(i15, childAt.getMeasuredHeight());
                    if (i9 == 1) {
                        j |= 1 << i18;
                    }
                }
                i18++;
                size3 = i20;
                paddingBottom = i21;
                i14 = i8;
            }
            int i23 = size3;
            int i24 = i12;
            int i25 = i14;
            if (z8 && i16 == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i26 = i24;
            boolean z11 = false;
            while (i19 > 0 && i26 > 0) {
                int i27 = Alert.DURATION_SHOW_INDEFINITELY;
                long j2 = 0;
                int i28 = 0;
                int i29 = 0;
                while (i29 < childCount2) {
                    int i30 = i15;
                    g1 g1Var3 = (g1) getChildAt(i29).getLayoutParams();
                    boolean z12 = z2;
                    if (g1Var3.d) {
                        int i31 = g1Var3.b;
                        if (i31 < i27) {
                            j2 = 1 << i29;
                            i27 = i31;
                            i28 = 1;
                        } else if (i31 == i27) {
                            j2 |= 1 << i29;
                            i28++;
                        }
                    }
                    i29++;
                    z2 = z12;
                    i15 = i30;
                }
                i4 = i15;
                boolean z13 = z2;
                j |= j2;
                if (i28 > i26) {
                    break;
                }
                int i32 = i27 + 1;
                int i33 = 0;
                while (i33 < childCount2) {
                    View childAt2 = getChildAt(i33);
                    g1 g1Var4 = (g1) childAt2.getLayoutParams();
                    boolean z14 = z8;
                    long j3 = 1 << i33;
                    if ((j2 & j3) == 0) {
                        if (g1Var4.b == i32) {
                            j |= j3;
                        }
                    } else {
                        if (z13 && g1Var4.e) {
                            r11 = 1;
                            r11 = 1;
                            if (i26 == 1) {
                                childAt2.setPadding(i3 + i25, 0, i3, 0);
                            }
                        } else {
                            r11 = 1;
                        }
                        g1Var4.b += r11;
                        g1Var4.f = r11;
                        i26--;
                    }
                    i33++;
                    z8 = z14;
                }
                z2 = z13;
                i15 = i4;
                z11 = true;
            }
            i4 = i15;
            if (!z8 && i16 == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (i26 > 0 && j != 0 && (i26 < i16 - 1 || z3 || i17 > 1)) {
                float bitCount = Long.bitCount(j);
                if (!z3) {
                    if ((j & 1) != 0 && !((g1) getChildAt(0).getLayoutParams()).e) {
                        bitCount -= 0.5f;
                    }
                    int i34 = childCount2 - 1;
                    if ((j & (1 << i34)) != 0 && !((g1) getChildAt(i34).getLayoutParams()).e) {
                        bitCount -= 0.5f;
                    }
                }
                if (bitCount > 0.0f) {
                    i6 = (int) ((i26 * i25) / bitCount);
                } else {
                    i6 = 0;
                }
                boolean z15 = z11;
                for (int i35 = 0; i35 < childCount2; i35++) {
                    if ((j & (1 << i35)) != 0) {
                        View childAt3 = getChildAt(i35);
                        g1 g1Var5 = (g1) childAt3.getLayoutParams();
                        if (childAt3 instanceof ActionMenuItemView) {
                            g1Var5.c = i6;
                            g1Var5.f = true;
                            if (i35 == 0 && !g1Var5.e) {
                                ((LinearLayout.LayoutParams) g1Var5).leftMargin = (-i6) / 2;
                            }
                            z15 = true;
                        } else if (g1Var5.a) {
                            g1Var5.c = i6;
                            g1Var5.f = true;
                            ((LinearLayout.LayoutParams) g1Var5).rightMargin = (-i6) / 2;
                            z15 = true;
                        } else {
                            if (i35 != 0) {
                                ((LinearLayout.LayoutParams) g1Var5).leftMargin = i6 / 2;
                            }
                            if (i35 != childCount2 - 1) {
                                ((LinearLayout.LayoutParams) g1Var5).rightMargin = i6 / 2;
                            }
                        }
                    }
                }
                z11 = z15;
            }
            if (z11) {
                for (int i36 = 0; i36 < childCount2; i36++) {
                    View childAt4 = getChildAt(i36);
                    g1 g1Var6 = (g1) childAt4.getLayoutParams();
                    if (g1Var6.f) {
                        childAt4.measure(View.MeasureSpec.makeMeasureSpec((g1Var6.b * i25) + g1Var6.c, 1073741824), childMeasureSpec);
                    }
                }
            }
            if (mode != 1073741824) {
                i5 = i4;
            } else {
                i5 = i23;
            }
            setMeasuredDimension(i10, i5);
            return;
        }
        for (int i37 = 0; i37 < childCount; i37++) {
            g1 g1Var7 = (g1) getChildAt(i37).getLayoutParams();
            ((LinearLayout.LayoutParams) g1Var7).rightMargin = 0;
            ((LinearLayout.LayoutParams) g1Var7).leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.u.r = z;
    }

    public void setOnMenuItemClickListener(h1 h1Var) {
        this.B = h1Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        e1 e1Var = this.u;
        d1 d1Var = e1Var.i;
        if (d1Var != null) {
            d1Var.setImageDrawable(drawable);
            return;
        }
        e1Var.k = true;
        e1Var.j = drawable;
    }

    public void setOverflowReserved(boolean z) {
        this.t = z;
    }

    public void setPopupTheme(int i) {
        if (this.s != i) {
            this.s = i;
            if (i == 0) {
                this.r = getContext();
            } else {
                this.r = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(e1 e1Var) {
        this.u = e1Var;
        e1Var.h = this;
        this.q = e1Var.c;
    }

    @Override // defpackage.wk, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return j(layoutParams);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }
}
