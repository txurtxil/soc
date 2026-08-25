package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public ColorStateList B;
    public boolean C;
    public boolean D;
    public final ArrayList E;
    public final ArrayList F;
    public final int[] G;
    public final ko H;
    public ArrayList I;
    public a50 J;
    public final w40 K;
    public h50 L;
    public e1 M;
    public y40 N;
    public d50 O;
    public c50 P;
    public boolean Q;
    public OnBackInvokedCallback R;
    public OnBackInvokedDispatcher S;
    public boolean T;
    public final c7 U;
    public ActionMenuView a;
    public k5 b;
    public k5 c;
    public d4 d;
    public f4 e;
    public final Drawable f;
    public final CharSequence g;
    public d4 h;
    public View i;
    public Context j;
    public int k;
    public int l;
    public int m;
    public final int n;
    public final int o;
    public int q;
    public int r;
    public int s;
    public int t;
    public kz u;
    public int v;
    public int w;
    public final int x;
    public CharSequence y;
    public CharSequence z;

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = 8388627;
        this.E = new ArrayList();
        this.F = new ArrayList();
        this.G = new int[2];
        this.H = new ko(new v40(this, 1));
        this.I = new ArrayList();
        this.K = new w40(this);
        this.U = new c7(14, this);
        Context context2 = getContext();
        int[] iArr = vv.y;
        v5 C = v5.C(context2, attributeSet, iArr, i);
        u70.g(this, context, iArr, attributeSet, (TypedArray) C.b, i);
        TypedArray typedArray = (TypedArray) C.b;
        this.l = typedArray.getResourceId(28, 0);
        this.m = typedArray.getResourceId(19, 0);
        this.x = typedArray.getInteger(0, 8388627);
        this.n = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.t = dimensionPixelOffset;
        this.s = dimensionPixelOffset;
        this.r = dimensionPixelOffset;
        this.q = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.q = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.r = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.s = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.t = dimensionPixelOffset5;
        }
        this.o = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        kz kzVar = this.u;
        kzVar.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            kzVar.e = dimensionPixelSize;
            kzVar.a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            kzVar.f = dimensionPixelSize2;
            kzVar.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            kzVar.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.v = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.w = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f = C.r(4);
        this.g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable r = C.r(16);
        if (r != null) {
            setNavigationIcon(r);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable r2 = C.r(11);
        if (r2 != null) {
            setLogo(r2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(C.q(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(C.q(20));
        }
        if (typedArray.hasValue(14)) {
            m(typedArray.getResourceId(14, 0));
        }
        C.E();
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new r30(getContext());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$MarginLayoutParams, z40] */
    public static z40 h() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.b = 0;
        marginLayoutParams.a = 8388627;
        return marginLayoutParams;
    }

    public static z40 i(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof z40;
        if (z) {
            z40 z40Var = (z40) layoutParams;
            z40 z40Var2 = new z40(z40Var);
            z40Var2.b = 0;
            z40Var2.b = z40Var.b;
            return z40Var2;
        } else if (z) {
            z40 z40Var3 = new z40((z40) layoutParams);
            z40Var3.b = 0;
            return z40Var3;
        } else if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            z40 z40Var4 = new z40(marginLayoutParams);
            z40Var4.b = 0;
            ((ViewGroup.MarginLayoutParams) z40Var4).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) z40Var4).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) z40Var4).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) z40Var4).bottomMargin = marginLayoutParams.bottomMargin;
            return z40Var4;
        } else {
            z40 z40Var5 = new z40(layoutParams);
            z40Var5.b = 0;
            return z40Var5;
        }
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return qm.b(marginLayoutParams) + qm.c(marginLayoutParams);
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i) {
        boolean z;
        WeakHashMap weakHashMap = u70.a;
        if (f70.d(this) == 1) {
            z = true;
        } else {
            z = false;
        }
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, f70.d(this));
        arrayList.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                z40 z40Var = (z40) childAt.getLayoutParams();
                if (z40Var.b == 0 && u(childAt)) {
                    int i3 = z40Var.a;
                    WeakHashMap weakHashMap2 = u70.a;
                    int d = f70.d(this);
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, d) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = d == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            z40 z40Var2 = (z40) childAt2.getLayoutParams();
            if (z40Var2.b == 0 && u(childAt2)) {
                int i5 = z40Var2.a;
                WeakHashMap weakHashMap3 = u70.a;
                int d2 = f70.d(this);
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, d2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = d2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z) {
        z40 z40Var;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            z40Var = h();
        } else if (!checkLayoutParams(layoutParams)) {
            z40Var = i(layoutParams);
        } else {
            z40Var = (z40) layoutParams;
        }
        z40Var.b = 1;
        if (z && this.i != null) {
            view.setLayoutParams(z40Var);
            this.F.add(view);
            return;
        }
        addView(view, z40Var);
    }

    public final void c() {
        if (this.h == null) {
            d4 d4Var = new d4(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.h = d4Var;
            d4Var.setImageDrawable(this.f);
            this.h.setContentDescription(this.g);
            z40 h = h();
            h.a = (this.n & 112) | 8388611;
            h.b = 2;
            this.h.setLayoutParams(h);
            this.h.setOnClickListener(new s0(3, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (super.checkLayoutParams(layoutParams) && (layoutParams instanceof z40)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, kz] */
    public final void d() {
        if (this.u == null) {
            ?? obj = new Object();
            obj.a = 0;
            obj.b = 0;
            obj.c = Integer.MIN_VALUE;
            obj.d = Integer.MIN_VALUE;
            obj.e = 0;
            obj.f = 0;
            obj.g = false;
            obj.h = false;
            this.u = obj;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView.q == null) {
            so soVar = (so) actionMenuView.getMenu();
            if (this.N == null) {
                this.N = new y40(this);
            }
            this.a.setExpandedActionViewsExclusive(true);
            soVar.b(this.N, this.j);
            w();
        }
    }

    public final void f() {
        if (this.a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.a = actionMenuView;
            actionMenuView.setPopupTheme(this.k);
            this.a.setOnMenuItemClickListener(this.K);
            ActionMenuView actionMenuView2 = this.a;
            d50 d50Var = this.O;
            w40 w40Var = new w40(this);
            actionMenuView2.v = d50Var;
            actionMenuView2.w = w40Var;
            z40 h = h();
            h.a = (this.n & 112) | 8388613;
            this.a.setLayoutParams(h);
            b(this.a, false);
        }
    }

    public final void g() {
        if (this.d == null) {
            this.d = new d4(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            z40 h = h();
            h.a = (this.n & 112) | 8388611;
            this.d.setLayoutParams(h);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, z40] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, vv.b);
        marginLayoutParams.a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        marginLayoutParams.b = 0;
        return marginLayoutParams;
    }

    public CharSequence getCollapseContentDescription() {
        d4 d4Var = this.h;
        if (d4Var != null) {
            return d4Var.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        d4 d4Var = this.h;
        if (d4Var != null) {
            return d4Var.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        kz kzVar = this.u;
        if (kzVar != null) {
            if (kzVar.g) {
                return kzVar.a;
            }
            return kzVar.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.w;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        kz kzVar = this.u;
        if (kzVar != null) {
            return kzVar.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        kz kzVar = this.u;
        if (kzVar != null) {
            return kzVar.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        kz kzVar = this.u;
        if (kzVar != null) {
            if (kzVar.g) {
                return kzVar.b;
            }
            return kzVar.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.v;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        so soVar;
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null && (soVar = actionMenuView.q) != null && soVar.hasVisibleItems()) {
            return Math.max(getContentInsetEnd(), Math.max(this.w, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap weakHashMap = u70.a;
        if (f70.d(this) == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap weakHashMap = u70.a;
        if (f70.d(this) == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.v, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        f4 f4Var = this.e;
        if (f4Var != null) {
            return f4Var.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        f4 f4Var = this.e;
        if (f4Var != null) {
            return f4Var.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.a.getMenu();
    }

    public View getNavButtonView() {
        return this.d;
    }

    public CharSequence getNavigationContentDescription() {
        d4 d4Var = this.d;
        if (d4Var != null) {
            return d4Var.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        d4 d4Var = this.d;
        if (d4Var != null) {
            return d4Var.getDrawable();
        }
        return null;
    }

    public e1 getOuterActionMenuPresenter() {
        return this.M;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.j;
    }

    public int getPopupTheme() {
        return this.k;
    }

    public CharSequence getSubtitle() {
        return this.z;
    }

    public final TextView getSubtitleTextView() {
        return this.c;
    }

    public CharSequence getTitle() {
        return this.y;
    }

    public int getTitleMarginBottom() {
        return this.t;
    }

    public int getTitleMarginEnd() {
        return this.r;
    }

    public int getTitleMarginStart() {
        return this.q;
    }

    public int getTitleMarginTop() {
        return this.s;
    }

    public final TextView getTitleTextView() {
        return this.b;
    }

    public pb getWrapper() {
        if (this.L == null) {
            this.L = new h50(this, true);
        }
        return this.L;
    }

    public final int j(View view, int i) {
        int i2;
        z40 z40Var = (z40) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        if (i > 0) {
            i2 = (measuredHeight - i) / 2;
        } else {
            i2 = 0;
        }
        int i3 = z40Var.a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.x & 112;
        }
        if (i3 != 48) {
            if (i3 != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i5 = ((ViewGroup.MarginLayoutParams) z40Var).topMargin;
                if (i4 < i5) {
                    i4 = i5;
                } else {
                    int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                    int i7 = ((ViewGroup.MarginLayoutParams) z40Var).bottomMargin;
                    if (i6 < i7) {
                        i4 = Math.max(0, i4 - (i7 - i6));
                    }
                }
                return paddingTop + i4;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) z40Var).bottomMargin) - i2;
        }
        return getPaddingTop() - i2;
    }

    public void m(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public final void n() {
        ArrayList arrayList = this.I;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            getMenu().removeItem(((MenuItem) obj).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.H.c).iterator();
        if (!it.hasNext()) {
            ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
            currentMenuItems2.removeAll(currentMenuItems);
            this.I = currentMenuItems2;
            return;
        }
        it.next().getClass();
        c2.l();
    }

    public final boolean o(View view) {
        if (view.getParent() != this && !this.F.contains(view)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        w();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.U);
        w();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.D = false;
        }
        if (!this.D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.D = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.D = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0285 A[LOOP:0: B:107:0x0283->B:108:0x0285, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x029d A[LOOP:1: B:110:0x029b->B:111:0x029d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02bd A[LOOP:2: B:113:0x02bb->B:114:0x02bd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0310 A[LOOP:3: B:122:0x030e->B:123:0x0310, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x020e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean a = l80.a(this);
        int i10 = !a ? 1 : 0;
        int i11 = 0;
        if (u(this.d)) {
            t(this.d, i, 0, i2, this.o);
            i3 = k(this.d) + this.d.getMeasuredWidth();
            i4 = Math.max(0, l(this.d) + this.d.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (u(this.h)) {
            t(this.h, i, 0, i2, this.o);
            i3 = k(this.h) + this.h.getMeasuredWidth();
            i4 = Math.max(i4, l(this.h) + this.h.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3);
        int max2 = Math.max(0, currentContentInsetStart - i3);
        int[] iArr = this.G;
        iArr[a ? 1 : 0] = max2;
        if (u(this.a)) {
            t(this.a, i, max, i2, this.o);
            i6 = k(this.a) + this.a.getMeasuredWidth();
            i4 = Math.max(i4, l(this.a) + this.a.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.a.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[i10] = Math.max(0, currentContentInsetEnd - i6);
        if (u(this.i)) {
            max3 += s(this.i, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, l(this.i) + this.i.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.i.getMeasuredState());
        }
        if (u(this.e)) {
            max3 += s(this.e, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, l(this.e) + this.e.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((z40) childAt.getLayoutParams()).b == 0 && u(childAt)) {
                max3 += s(childAt, i, max3, i2, 0, iArr);
                int max4 = Math.max(i4, l(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
                i4 = max4;
            } else {
                max3 = max3;
            }
        }
        int i13 = max3;
        int i14 = this.s + this.t;
        int i15 = this.q + this.r;
        if (u(this.b)) {
            s(this.b, i, i13 + i15, i2, i14, iArr);
            int k = k(this.b) + this.b.getMeasuredWidth();
            i7 = l(this.b) + this.b.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i5, this.b.getMeasuredState());
            i9 = k;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (u(this.c)) {
            i9 = Math.max(i9, s(this.c, i, i13 + i15, i2, i14 + i7, iArr));
            i7 += l(this.c) + this.c.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i8, this.c.getMeasuredState());
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop() + Math.max(i4, i7);
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + i13 + i9, getSuggestedMinimumWidth()), i, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i8 << 16);
        if (this.Q) {
            int childCount2 = getChildCount();
            for (int i16 = 0; i16 < childCount2; i16++) {
                View childAt2 = getChildAt(i16);
                if (!u(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i11);
        }
        i11 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i11);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        so soVar;
        MenuItem findItem;
        if (!(parcelable instanceof b50)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b50 b50Var = (b50) parcelable;
        super.onRestoreInstanceState(b50Var.a);
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null) {
            soVar = actionMenuView.q;
        } else {
            soVar = null;
        }
        int i = b50Var.c;
        if (i != 0 && this.N != null && soVar != null && (findItem = soVar.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (b50Var.d) {
            c7 c7Var = this.U;
            removeCallbacks(c7Var);
            post(c7Var);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        kz kzVar = this.u;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z == kzVar.g) {
            return;
        }
        kzVar.g = z;
        if (kzVar.h) {
            if (z) {
                int i2 = kzVar.d;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = kzVar.e;
                }
                kzVar.a = i2;
                int i3 = kzVar.c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = kzVar.f;
                }
                kzVar.b = i3;
                return;
            }
            int i4 = kzVar.c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = kzVar.e;
            }
            kzVar.a = i4;
            int i5 = kzVar.d;
            if (i5 == Integer.MIN_VALUE) {
                i5 = kzVar.f;
            }
            kzVar.b = i5;
            return;
        }
        kzVar.a = kzVar.e;
        kzVar.b = kzVar.f;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, f, b50] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        wo woVar;
        ?? fVar = new f(super.onSaveInstanceState());
        y40 y40Var = this.N;
        if (y40Var != null && (woVar = y40Var.b) != null) {
            fVar.c = woVar.a;
        }
        fVar.d = p();
        return fVar;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C = false;
        }
        if (!this.C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.C = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.C = false;
        return true;
    }

    public final boolean p() {
        e1 e1Var;
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null && (e1Var = actionMenuView.u) != null && e1Var.h()) {
            return true;
        }
        return false;
    }

    public final int q(View view, int i, int i2, int[] iArr) {
        z40 z40Var = (z40) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) z40Var).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int j = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, j, max + measuredWidth, view.getMeasuredHeight() + j);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) z40Var).rightMargin + max;
    }

    public final int r(View view, int i, int i2, int[] iArr) {
        z40 z40Var = (z40) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) z40Var).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int j = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, j, max, view.getMeasuredHeight() + j);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) z40Var).leftMargin);
    }

    public final int s(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.T != z) {
            this.T = z;
            w();
        }
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        d4 d4Var = this.h;
        if (d4Var != null) {
            d4Var.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.h.setImageDrawable(drawable);
            return;
        }
        d4 d4Var = this.h;
        if (d4Var != null) {
            d4Var.setImageDrawable(this.f);
        }
    }

    public void setCollapsible(boolean z) {
        this.Q = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.w) {
            this.w = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.v) {
            this.v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(Drawable drawable) {
        f4 f4Var = this.e;
        if (drawable != null) {
            if (f4Var == null) {
                this.e = new f4(getContext(), null, 0);
            }
            if (!o(this.e)) {
                b(this.e, true);
            }
        } else if (f4Var != null && o(f4Var)) {
            removeView(this.e);
            this.F.remove(this.e);
        }
        f4 f4Var2 = this.e;
        if (f4Var2 != null) {
            f4Var2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.e == null) {
            this.e = new f4(getContext(), null, 0);
        }
        f4 f4Var = this.e;
        if (f4Var != null) {
            f4Var.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        d4 d4Var = this.d;
        if (d4Var != null) {
            d4Var.setContentDescription(charSequence);
            qj.u(this.d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!o(this.d)) {
                b(this.d, true);
            }
        } else {
            d4 d4Var = this.d;
            if (d4Var != null && o(d4Var)) {
                removeView(this.d);
                this.F.remove(this.d);
            }
        }
        d4 d4Var2 = this.d;
        if (d4Var2 != null) {
            d4Var2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(a50 a50Var) {
        this.J = a50Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.k != i) {
            this.k = i;
            if (i == 0) {
                this.j = getContext();
            } else {
                this.j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        k5 k5Var = this.c;
        if (!isEmpty) {
            if (k5Var == null) {
                Context context = getContext();
                k5 k5Var2 = new k5(context, null);
                this.c = k5Var2;
                k5Var2.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.m;
                if (i != 0) {
                    this.c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.B;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!o(this.c)) {
                b(this.c, true);
            }
        } else if (k5Var != null && o(k5Var)) {
            removeView(this.c);
            this.F.remove(this.c);
        }
        k5 k5Var3 = this.c;
        if (k5Var3 != null) {
            k5Var3.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.B = colorStateList;
        k5 k5Var = this.c;
        if (k5Var != null) {
            k5Var.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        k5 k5Var = this.b;
        if (!isEmpty) {
            if (k5Var == null) {
                Context context = getContext();
                k5 k5Var2 = new k5(context, null);
                this.b = k5Var2;
                k5Var2.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.l;
                if (i != 0) {
                    this.b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!o(this.b)) {
                b(this.b, true);
            }
        } else if (k5Var != null && o(k5Var)) {
            removeView(this.b);
            this.F.remove(this.b);
        }
        k5 k5Var3 = this.b;
        if (k5Var3 != null) {
            k5Var3.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.t = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.r = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.q = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.s = i;
        requestLayout();
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        k5 k5Var = this.b;
        if (k5Var != null) {
            k5Var.setTextColor(colorStateList);
        }
    }

    public final void t(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean u(View view) {
        if (view != null && view.getParent() == this && view.getVisibility() != 8) {
            return true;
        }
        return false;
    }

    public final boolean v() {
        e1 e1Var;
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null && (e1Var = actionMenuView.u) != null && e1Var.l()) {
            return true;
        }
        return false;
    }

    public final void w() {
        boolean z;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a = x40.a(this);
            y40 y40Var = this.N;
            if (y40Var != null && y40Var.b != null && a != null) {
                WeakHashMap weakHashMap = u70.a;
                if (g70.b(this) && this.T) {
                    z = true;
                    if (!z && this.S == null) {
                        if (this.R == null) {
                            this.R = x40.b(new v40(this, 0));
                        }
                        x40.c(a, this.R);
                        this.S = a;
                        return;
                    } else if (z && (onBackInvokedDispatcher = this.S) != null) {
                        x40.d(onBackInvokedDispatcher, this.R);
                        this.S = null;
                        return;
                    }
                }
            }
            z = false;
            if (!z) {
            }
            if (z) {
            }
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(gn.p(getContext(), i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(gn.p(getContext(), i));
    }

    public void setLogo(int i) {
        setLogo(gn.p(getContext(), i));
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context) {
        this(context, null);
    }
}
