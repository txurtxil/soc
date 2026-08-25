package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: lw  reason: default package */
/* loaded from: classes.dex */
public abstract class lw {
    public v5 a;
    public RecyclerView b;
    public final ko c;
    public final ko d;
    public boolean e;
    public boolean f;
    public final boolean g;
    public final boolean h;
    public int i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public int n;

    public lw() {
        jw jwVar = new jw(this, 0);
        jw jwVar2 = new jw(this, 1);
        this.c = new ko(jwVar);
        this.d = new ko(jwVar2);
        this.e = false;
        this.f = false;
        this.g = true;
        this.h = true;
    }

    public static int D(View view) {
        return ((mw) view.getLayoutParams()).a.c();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kw] */
    public static kw E(Context context, AttributeSet attributeSet, int i, int i2) {
        ?? obj = new Object();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, tv.a, i, i2);
        obj.a = obtainStyledAttributes.getInt(0, 1);
        obj.b = obtainStyledAttributes.getInt(10, 1);
        obj.c = obtainStyledAttributes.getBoolean(9, false);
        obj.d = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return obj;
    }

    public static boolean I(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                return true;
            }
            if (mode != 1073741824 || size != i) {
                return false;
            }
            return true;
        } else if (size < i) {
            return false;
        } else {
            return true;
        }
    }

    public static void J(View view, int i, int i2, int i3, int i4) {
        mw mwVar = (mw) view.getLayoutParams();
        Rect rect = mwVar.b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) mwVar).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) mwVar).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) mwVar).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) mwVar).bottomMargin);
    }

    public static int f(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 1073741824) {
                return Math.max(i2, i3);
            }
            return size;
        }
        return Math.min(size, Math.max(i2, i3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        if (r6 == 1073741824) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int v(boolean r4, int r5, int r6, int r7, int r8) {
        /*
            int r5 = r5 - r7
            r7 = 0
            int r5 = java.lang.Math.max(r7, r5)
            r0 = -2
            r1 = -1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r4 == 0) goto L1d
            if (r8 < 0) goto L12
        L10:
            r6 = r3
            goto L30
        L12:
            if (r8 != r1) goto L1a
            if (r6 == r2) goto L22
            if (r6 == 0) goto L1a
            if (r6 == r3) goto L22
        L1a:
            r6 = r7
            r8 = r6
            goto L30
        L1d:
            if (r8 < 0) goto L20
            goto L10
        L20:
            if (r8 != r1) goto L24
        L22:
            r8 = r5
            goto L30
        L24:
            if (r8 != r0) goto L1a
            if (r6 == r2) goto L2e
            if (r6 != r3) goto L2b
            goto L2e
        L2b:
            r8 = r5
            r6 = r7
            goto L30
        L2e:
            r8 = r5
            r6 = r2
        L30:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lw.v(boolean, int, int, int, int):int");
    }

    public final int A() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int B() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int C() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int F(rw rwVar, vw vwVar) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null && recyclerView.l != null && d()) {
            return ((ju) this.b.l).e.size();
        }
        return 1;
    }

    public final void G(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((mw) view.getLayoutParams()).b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.b.k;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public boolean H() {
        return false;
    }

    public void K(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int p = recyclerView.e.p();
            for (int i2 = 0; i2 < p; i2++) {
                recyclerView.e.o(i2).offsetLeftAndRight(i);
            }
        }
    }

    public void L(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int p = recyclerView.e.p();
            for (int i2 = 0; i2 < p; i2++) {
                recyclerView.e.o(i2).offsetTopAndBottom(i);
            }
        }
    }

    public View N(View view, int i, rw rwVar, vw vwVar) {
        return null;
    }

    public void O(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.b;
        rw rwVar = recyclerView.b;
        if (accessibilityEvent != null) {
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            dw dwVar = this.b.l;
            if (dwVar != null) {
                accessibilityEvent.setItemCount(((ju) dwVar).e.size());
            }
        }
    }

    public void P(rw rwVar, vw vwVar, View view, g0 g0Var) {
        int i;
        int i2 = 0;
        if (d()) {
            i = D(view);
        } else {
            i = 0;
        }
        if (c()) {
            i2 = D(view);
        }
        g0Var.a.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, 1, i2, 1, false, false));
    }

    public final void Q(View view, g0 g0Var) {
        nu G = RecyclerView.G(view);
        if (G != null && !G.i()) {
            v5 v5Var = this.a;
            if (!((ArrayList) v5Var.d).contains(G.a)) {
                RecyclerView recyclerView = this.b;
                P(recyclerView.b, recyclerView.e0, view, g0Var);
            }
        }
    }

    public abstract void W(rw rwVar, vw vwVar);

    public abstract void X(vw vwVar);

    public Parcelable Z() {
        return null;
    }

    public final void a(View view, int i, boolean z) {
        int i2;
        nu G = RecyclerView.G(view);
        if (!z && !G.i()) {
            this.b.f.H(G);
        } else {
            j20 j20Var = (j20) this.b.f.b;
            y70 y70Var = (y70) j20Var.getOrDefault(G, null);
            if (y70Var == null) {
                y70Var = y70.a();
                j20Var.put(G, y70Var);
            }
            y70Var.a |= 1;
        }
        mw mwVar = (mw) view.getLayoutParams();
        if (!G.q() && !G.j()) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.b;
            v5 v5Var = this.a;
            if (parent == recyclerView) {
                o9 o9Var = (o9) v5Var.c;
                int indexOfChild = ((cw) v5Var.b).a.indexOfChild(view);
                if (indexOfChild == -1 || o9Var.d(indexOfChild)) {
                    i2 = -1;
                } else {
                    i2 = indexOfChild - o9Var.b(indexOfChild);
                }
                if (i == -1) {
                    i = this.a.p();
                }
                if (i2 != -1) {
                    if (i2 != i) {
                        lw lwVar = this.b.m;
                        View t = lwVar.t(i2);
                        if (t != null) {
                            lwVar.t(i2);
                            lwVar.a.i(i2);
                            mw mwVar2 = (mw) t.getLayoutParams();
                            nu G2 = RecyclerView.G(t);
                            boolean i3 = G2.i();
                            RecyclerView recyclerView2 = lwVar.b;
                            if (i3) {
                                j20 j20Var2 = (j20) recyclerView2.f.b;
                                y70 y70Var2 = (y70) j20Var2.getOrDefault(G2, null);
                                if (y70Var2 == null) {
                                    y70Var2 = y70.a();
                                    j20Var2.put(G2, y70Var2);
                                }
                                y70Var2.a = 1 | y70Var2.a;
                            } else {
                                recyclerView2.f.H(G2);
                            }
                            lwVar.a.h(t, i, mwVar2, G2.i());
                        } else {
                            RecyclerView recyclerView3 = lwVar.b;
                            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + recyclerView3.toString());
                        }
                    }
                } else {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.b.indexOfChild(view) + this.b.w());
                }
            } else {
                v5Var.g(view, i, false);
                mwVar.c = true;
            }
        } else {
            if (G.j()) {
                G.n.j(G);
            } else {
                G.j &= -33;
            }
            this.a.h(view, i, view.getLayoutParams(), false);
        }
        if (mwVar.d) {
            G.a.invalidate();
            mwVar.d = false;
        }
    }

    public void b(String str) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.g(str);
        }
    }

    public final void b0(rw rwVar) {
        for (int u = u() - 1; u >= 0; u--) {
            if (!RecyclerView.G(t(u)).p()) {
                View t = t(u);
                e0(u);
                rwVar.f(t);
            }
        }
    }

    public abstract boolean c();

    public final void c0(rw rwVar) {
        ArrayList arrayList;
        int size = rwVar.a.size();
        int i = size - 1;
        while (true) {
            arrayList = rwVar.a;
            if (i < 0) {
                break;
            }
            View view = ((nu) arrayList.get(i)).a;
            nu G = RecyclerView.G(view);
            if (!G.p()) {
                G.o(false);
                if (G.k()) {
                    this.b.removeDetachedView(view, false);
                }
                hw hwVar = this.b.K;
                if (hwVar != null) {
                    hwVar.d(G);
                }
                G.o(true);
                nu G2 = RecyclerView.G(view);
                G2.n = null;
                G2.o = false;
                G2.j &= -33;
                rwVar.g(G2);
            }
            i--;
        }
        arrayList.clear();
        ArrayList arrayList2 = rwVar.b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.b.invalidate();
        }
    }

    public abstract boolean d();

    public final void d0(View view, rw rwVar) {
        v5 v5Var = this.a;
        cw cwVar = (cw) v5Var.b;
        int indexOfChild = cwVar.a.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (((o9) v5Var.c).f(indexOfChild)) {
                v5Var.F(view);
            }
            cwVar.h(indexOfChild);
        }
        rwVar.f(view);
    }

    public boolean e(mw mwVar) {
        if (mwVar != null) {
            return true;
        }
        return false;
    }

    public final void e0(int i) {
        if (t(i) != null) {
            v5 v5Var = this.a;
            int w = v5Var.w(i);
            cw cwVar = (cw) v5Var.b;
            View childAt = cwVar.a.getChildAt(w);
            if (childAt != null) {
                if (((o9) v5Var.c).f(w)) {
                    v5Var.F(childAt);
                }
                cwVar.h(w);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ab, code lost:
        if ((r5.bottom - r10) > r2) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean f0(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            int r0 = r8.A()
            int r1 = r8.C()
            int r2 = r8.m
            int r3 = r8.B()
            int r2 = r2 - r3
            int r3 = r8.n
            int r4 = r8.z()
            int r3 = r3 - r4
            int r4 = r10.getLeft()
            int r5 = r11.left
            int r4 = r4 + r5
            int r5 = r10.getScrollX()
            int r4 = r4 - r5
            int r5 = r10.getTop()
            int r6 = r11.top
            int r5 = r5 + r6
            int r10 = r10.getScrollY()
            int r5 = r5 - r10
            int r10 = r11.width()
            int r10 = r10 + r4
            int r11 = r11.height()
            int r11 = r11 + r5
            int r4 = r4 - r0
            r0 = 0
            int r6 = java.lang.Math.min(r0, r4)
            int r5 = r5 - r1
            int r1 = java.lang.Math.min(r0, r5)
            int r10 = r10 - r2
            int r2 = java.lang.Math.max(r0, r10)
            int r11 = r11 - r3
            int r11 = java.lang.Math.max(r0, r11)
            int r3 = r8.y()
            r7 = 1
            if (r3 != r7) goto L5c
            if (r2 == 0) goto L57
            goto L64
        L57:
            int r2 = java.lang.Math.max(r6, r10)
            goto L64
        L5c:
            if (r6 == 0) goto L5f
            goto L63
        L5f:
            int r6 = java.lang.Math.min(r4, r2)
        L63:
            r2 = r6
        L64:
            if (r1 == 0) goto L67
            goto L6b
        L67:
            int r1 = java.lang.Math.min(r5, r11)
        L6b:
            int[] r10 = new int[]{r2, r1}
            r11 = r10[r0]
            r10 = r10[r7]
            if (r13 == 0) goto Lae
            android.view.View r13 = r9.getFocusedChild()
            if (r13 != 0) goto L7c
            goto Lb3
        L7c:
            int r1 = r8.A()
            int r2 = r8.C()
            int r3 = r8.m
            int r4 = r8.B()
            int r3 = r3 - r4
            int r4 = r8.n
            int r5 = r8.z()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r5 = r8.b
            android.graphics.Rect r5 = r5.i
            r8.x(r13, r5)
            int r8 = r5.left
            int r8 = r8 - r11
            if (r8 >= r3) goto Lb3
            int r8 = r5.right
            int r8 = r8 - r11
            if (r8 <= r1) goto Lb3
            int r8 = r5.top
            int r8 = r8 - r10
            if (r8 >= r4) goto Lb3
            int r8 = r5.bottom
            int r8 = r8 - r10
            if (r8 > r2) goto Lae
            goto Lb3
        Lae:
            if (r11 != 0) goto Lb4
            if (r10 == 0) goto Lb3
            goto Lb4
        Lb3:
            return r0
        Lb4:
            if (r12 == 0) goto Lba
            r9.scrollBy(r11, r10)
            return r7
        Lba:
            r9.X(r11, r10, r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lw.f0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    public final void g0() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public abstract int h0(int i, rw rwVar, vw vwVar);

    public abstract int i(vw vwVar);

    public abstract int i0(int i, rw rwVar, vw vwVar);

    public abstract int j(vw vwVar);

    public final void j0(RecyclerView recyclerView) {
        k0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public abstract int k(vw vwVar);

    public final void k0(int i, int i2) {
        this.m = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.k = mode;
        if (mode == 0) {
            int[] iArr = RecyclerView.u0;
        }
        this.n = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.l = mode2;
        if (mode2 == 0) {
            int[] iArr2 = RecyclerView.u0;
        }
    }

    public abstract int l(vw vwVar);

    public void l0(Rect rect, int i, int i2) {
        int B = B() + A() + rect.width();
        int z = z() + C() + rect.height();
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = u70.a;
        this.b.setMeasuredDimension(f(i, B, e70.e(recyclerView)), f(i2, z, e70.d(this.b)));
    }

    public abstract int m(vw vwVar);

    public final void m0(int i, int i2) {
        int u = u();
        if (u == 0) {
            this.b.l(i, i2);
            return;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        for (int i7 = 0; i7 < u; i7++) {
            View t = t(i7);
            Rect rect = this.b.i;
            x(t, rect);
            int i8 = rect.left;
            if (i8 < i6) {
                i6 = i8;
            }
            int i9 = rect.right;
            if (i9 > i3) {
                i3 = i9;
            }
            int i10 = rect.top;
            if (i10 < i4) {
                i4 = i10;
            }
            int i11 = rect.bottom;
            if (i11 > i5) {
                i5 = i11;
            }
        }
        this.b.i.set(i6, i4, i3, i5);
        l0(this.b.i, i, i2);
    }

    public abstract int n(vw vwVar);

    public final void n0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.b = null;
            this.a = null;
            this.m = 0;
            this.n = 0;
        } else {
            this.b = recyclerView;
            this.a = recyclerView.e;
            this.m = recyclerView.getWidth();
            this.n = recyclerView.getHeight();
        }
        this.k = 1073741824;
        this.l = 1073741824;
    }

    public final void o(rw rwVar) {
        for (int u = u() - 1; u >= 0; u--) {
            View t = t(u);
            nu G = RecyclerView.G(t);
            if (!G.p()) {
                if (G.g() && !G.i() && !this.b.l.b) {
                    e0(u);
                    rwVar.g(G);
                } else {
                    t(u);
                    this.a.i(u);
                    rwVar.h(t);
                    this.b.f.H(G);
                }
            }
        }
    }

    public final boolean o0(View view, int i, int i2, mw mwVar) {
        if (!view.isLayoutRequested() && this.g && I(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) mwVar).width) && I(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) mwVar).height)) {
            return false;
        }
        return true;
    }

    public View p(int i) {
        int u = u();
        for (int i2 = 0; i2 < u; i2++) {
            View t = t(i2);
            nu G = RecyclerView.G(t);
            if (G != null && G.c() == i && !G.p() && (this.b.e0.f || !G.i())) {
                return t;
            }
        }
        return null;
    }

    public boolean p0() {
        return false;
    }

    public abstract mw q();

    public final boolean q0(View view, int i, int i2, mw mwVar) {
        if (this.g && I(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) mwVar).width) && I(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) mwVar).height)) {
            return false;
        }
        return true;
    }

    public mw r(Context context, AttributeSet attributeSet) {
        return new mw(context, attributeSet);
    }

    public boolean r0() {
        return false;
    }

    public mw s(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof mw) {
            return new mw((mw) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new mw((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new mw(layoutParams);
    }

    public final View t(int i) {
        v5 v5Var = this.a;
        if (v5Var != null) {
            return v5Var.o(i);
        }
        return null;
    }

    public final int u() {
        v5 v5Var = this.a;
        if (v5Var != null) {
            return v5Var.p();
        }
        return 0;
    }

    public int w(rw rwVar, vw vwVar) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null && recyclerView.l != null && c()) {
            return ((ju) this.b.l).e.size();
        }
        return 1;
    }

    public void x(View view, Rect rect) {
        int[] iArr = RecyclerView.u0;
        mw mwVar = (mw) view.getLayoutParams();
        Rect rect2 = mwVar.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) mwVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) mwVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) mwVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) mwVar).bottomMargin);
    }

    public final int y() {
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = u70.a;
        return f70.d(recyclerView);
    }

    public final int z() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public void S() {
    }

    public void M(RecyclerView recyclerView) {
    }

    public void Y(Parcelable parcelable) {
    }

    public void a0(int i) {
    }

    public void R(int i, int i2) {
    }

    public void T(int i, int i2) {
    }

    public void U(int i, int i2) {
    }

    public void V(int i, int i2) {
    }

    public void h(int i, oh ohVar) {
    }

    public void g(int i, int i2, vw vwVar, oh ohVar) {
    }
}
