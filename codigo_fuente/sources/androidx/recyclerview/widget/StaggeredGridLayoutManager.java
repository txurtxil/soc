package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.car.app.model.Alert;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends lw {
    public final ko A;
    public final int B;
    public boolean C;
    public boolean D;
    public y20 E;
    public final Rect F;
    public final v20 G;
    public final boolean H;
    public int[] I;
    public final c7 J;
    public final int o;
    public final z20[] p;
    public final pd q;
    public final pd r;
    public final int s;
    public int t;
    public final gk u;
    public boolean v;
    public final BitSet x;
    public boolean w = false;
    public int y = -1;
    public int z = Integer.MIN_VALUE;

    /* JADX WARN: Type inference failed for: r7v3, types: [gk, java.lang.Object] */
    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.o = -1;
        this.v = false;
        ko koVar = new ko(17, false);
        this.A = koVar;
        this.B = 2;
        this.F = new Rect();
        this.G = new v20(this);
        this.H = true;
        this.J = new c7(13, this);
        kw E = lw.E(context, attributeSet, i, i2);
        int i3 = E.a;
        if (i3 != 0 && i3 != 1) {
            c2.n("invalid orientation.");
            throw null;
        }
        b(null);
        if (i3 != this.s) {
            this.s = i3;
            pd pdVar = this.q;
            this.q = this.r;
            this.r = pdVar;
            g0();
        }
        int i4 = E.b;
        b(null);
        if (i4 != this.o) {
            int[] iArr = (int[]) koVar.b;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            koVar.c = null;
            g0();
            this.o = i4;
            this.x = new BitSet(this.o);
            this.p = new z20[this.o];
            for (int i5 = 0; i5 < this.o; i5++) {
                this.p[i5] = new z20(this, i5);
            }
            g0();
        }
        boolean z = E.c;
        b(null);
        y20 y20Var = this.E;
        if (y20Var != null && y20Var.h != z) {
            y20Var.h = z;
        }
        this.v = z;
        g0();
        ?? obj = new Object();
        obj.a = true;
        obj.f = 0;
        obj.g = 0;
        this.u = obj;
        this.q = pd.a(this, this.s);
        this.r = pd.a(this, 1 - this.s);
    }

    public static int S0(int i, int i2, int i3) {
        int mode;
        if ((i2 == 0 && i3 == 0) || ((mode = View.MeasureSpec.getMode(i)) != Integer.MIN_VALUE && mode != 1073741824)) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
    }

    public final int A0() {
        int u = u();
        if (u == 0) {
            return 0;
        }
        return lw.D(t(u - 1));
    }

    public final int B0(int i) {
        int f = this.p[0].f(i);
        for (int i2 = 1; i2 < this.o; i2++) {
            int f2 = this.p[i2].f(i);
            if (f2 > f) {
                f = f2;
            }
        }
        return f;
    }

    public final int C0(int i) {
        int h = this.p[0].h(i);
        for (int i2 = 1; i2 < this.o; i2++) {
            int h2 = this.p[i2].h(i);
            if (h2 < h) {
                h = h2;
            }
        }
        return h;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D0(int r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.D0(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x002a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View E0() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.E0():android.view.View");
    }

    @Override // defpackage.lw
    public final int F(rw rwVar, vw vwVar) {
        if (this.s == 0) {
            return this.o;
        }
        return super.F(rwVar, vwVar);
    }

    public final boolean F0() {
        if (y() == 1) {
            return true;
        }
        return false;
    }

    public final void G0(View view, int i, int i2) {
        RecyclerView recyclerView = this.b;
        Rect rect = this.F;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.H(view));
        }
        w20 w20Var = (w20) view.getLayoutParams();
        int S0 = S0(i, ((ViewGroup.MarginLayoutParams) w20Var).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) w20Var).rightMargin + rect.right);
        int S02 = S0(i2, ((ViewGroup.MarginLayoutParams) w20Var).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) w20Var).bottomMargin + rect.bottom);
        if (o0(view, S0, S02, w20Var)) {
            view.measure(S0, S02);
        }
    }

    @Override // defpackage.lw
    public final boolean H() {
        if (this.B != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0187, code lost:
        if (r4 != r17.w) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0189, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x018b, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0179, code lost:
        if (r17.w != false) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:260:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:293:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void H0(defpackage.rw r18, defpackage.vw r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.H0(rw, vw, boolean):void");
    }

    public final boolean I0(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.s == 0) {
            if (i == -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 == this.w) {
                return false;
            }
            return true;
        }
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z == this.w) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 != F0()) {
            return false;
        }
        return true;
    }

    public final void J0(int i) {
        int z0;
        int i2;
        if (i > 0) {
            z0 = A0();
            i2 = 1;
        } else {
            z0 = z0();
            i2 = -1;
        }
        gk gkVar = this.u;
        gkVar.a = true;
        Q0(z0);
        P0(i2);
        gkVar.c = z0 + gkVar.d;
        gkVar.b = Math.abs(i);
    }

    @Override // defpackage.lw
    public final void K(int i) {
        super.K(i);
        for (int i2 = 0; i2 < this.o; i2++) {
            z20 z20Var = this.p[i2];
            int i3 = z20Var.b;
            if (i3 != Integer.MIN_VALUE) {
                z20Var.b = i3 + i;
            }
            int i4 = z20Var.c;
            if (i4 != Integer.MIN_VALUE) {
                z20Var.c = i4 + i;
            }
        }
    }

    public final void K0(rw rwVar, gk gkVar) {
        if (gkVar.a && !gkVar.i) {
            int i = gkVar.b;
            int i2 = gkVar.e;
            if (i == 0) {
                if (i2 == -1) {
                    L0(rwVar, gkVar.g);
                    return;
                } else {
                    M0(rwVar, gkVar.f);
                    return;
                }
            }
            int i3 = this.o;
            z20[] z20VarArr = this.p;
            int i4 = 1;
            if (i2 == -1) {
                int i5 = gkVar.f;
                int h = z20VarArr[0].h(i5);
                while (i4 < i3) {
                    int h2 = z20VarArr[i4].h(i5);
                    if (h2 > h) {
                        h = h2;
                    }
                    i4++;
                }
                int i6 = i5 - h;
                int i7 = gkVar.g;
                if (i6 >= 0) {
                    i7 -= Math.min(i6, gkVar.b);
                }
                L0(rwVar, i7);
                return;
            }
            int i8 = gkVar.g;
            int f = z20VarArr[0].f(i8);
            while (i4 < i3) {
                int f2 = z20VarArr[i4].f(i8);
                if (f2 < f) {
                    f = f2;
                }
                i4++;
            }
            int i9 = f - gkVar.g;
            int i10 = gkVar.f;
            if (i9 >= 0) {
                i10 += Math.min(i9, gkVar.b);
            }
            M0(rwVar, i10);
        }
    }

    @Override // defpackage.lw
    public final void L(int i) {
        super.L(i);
        for (int i2 = 0; i2 < this.o; i2++) {
            z20 z20Var = this.p[i2];
            int i3 = z20Var.b;
            if (i3 != Integer.MIN_VALUE) {
                z20Var.b = i3 + i;
            }
            int i4 = z20Var.c;
            if (i4 != Integer.MIN_VALUE) {
                z20Var.c = i4 + i;
            }
        }
    }

    public final void L0(rw rwVar, int i) {
        for (int u = u() - 1; u >= 0; u--) {
            View t = t(u);
            pd pdVar = this.q;
            if (pdVar.e(t) >= i && pdVar.n(t) >= i) {
                w20 w20Var = (w20) t.getLayoutParams();
                w20Var.getClass();
                if (w20Var.e.a.size() != 1) {
                    z20 z20Var = w20Var.e;
                    ArrayList arrayList = z20Var.a;
                    int size = arrayList.size();
                    View view = (View) arrayList.remove(size - 1);
                    w20 w20Var2 = (w20) view.getLayoutParams();
                    w20Var2.e = null;
                    if (w20Var2.a.i() || w20Var2.a.l()) {
                        z20Var.d -= z20Var.f.q.c(view);
                    }
                    if (size == 1) {
                        z20Var.b = Integer.MIN_VALUE;
                    }
                    z20Var.c = Integer.MIN_VALUE;
                    d0(t, rwVar);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // defpackage.lw
    public final void M(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.J);
        }
        for (int i = 0; i < this.o; i++) {
            this.p[i].b();
        }
        recyclerView.requestLayout();
    }

    public final void M0(rw rwVar, int i) {
        while (u() > 0) {
            View t = t(0);
            pd pdVar = this.q;
            if (pdVar.b(t) <= i && pdVar.m(t) <= i) {
                w20 w20Var = (w20) t.getLayoutParams();
                w20Var.getClass();
                if (w20Var.e.a.size() != 1) {
                    z20 z20Var = w20Var.e;
                    ArrayList arrayList = z20Var.a;
                    View view = (View) arrayList.remove(0);
                    w20 w20Var2 = (w20) view.getLayoutParams();
                    w20Var2.e = null;
                    if (arrayList.size() == 0) {
                        z20Var.c = Integer.MIN_VALUE;
                    }
                    if (w20Var2.a.i() || w20Var2.a.l()) {
                        z20Var.d -= z20Var.f.q.c(view);
                    }
                    z20Var.b = Integer.MIN_VALUE;
                    d0(t, rwVar);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004d, code lost:
        if (r0 == 1) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0051, code lost:
        if (r0 == 0) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x005b, code lost:
        if (F0() == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0065, code lost:
        if (F0() == false) goto L107;
     */
    @Override // defpackage.lw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View N(android.view.View r9, int r10, defpackage.rw r11, defpackage.vw r12) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.N(android.view.View, int, rw, vw):android.view.View");
    }

    public final void N0() {
        if (this.s != 1 && F0()) {
            this.w = !this.v;
        } else {
            this.w = this.v;
        }
    }

    @Override // defpackage.lw
    public final void O(AccessibilityEvent accessibilityEvent) {
        super.O(accessibilityEvent);
        if (u() > 0) {
            View w0 = w0(false);
            View v0 = v0(false);
            if (w0 != null && v0 != null) {
                int D = lw.D(w0);
                int D2 = lw.D(v0);
                if (D < D2) {
                    accessibilityEvent.setFromIndex(D);
                    accessibilityEvent.setToIndex(D2);
                    return;
                }
                accessibilityEvent.setFromIndex(D2);
                accessibilityEvent.setToIndex(D);
            }
        }
    }

    public final int O0(int i, rw rwVar, vw vwVar) {
        if (u() == 0 || i == 0) {
            return 0;
        }
        J0(i);
        gk gkVar = this.u;
        int u0 = u0(rwVar, gkVar, vwVar);
        if (gkVar.b >= u0) {
            if (i < 0) {
                i = -u0;
            } else {
                i = u0;
            }
        }
        this.q.o(-i);
        this.C = this.w;
        gkVar.b = 0;
        K0(rwVar, gkVar);
        return i;
    }

    @Override // defpackage.lw
    public final void P(rw rwVar, vw vwVar, View view, g0 g0Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = g0Var.a;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof w20)) {
            Q(view, g0Var);
            return;
        }
        z20 z20Var = ((w20) layoutParams).e;
        int i = -1;
        if (this.s == 0) {
            if (z20Var != null) {
                i = z20Var.e;
            }
            accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, 1, -1, -1, false, false));
            return;
        }
        if (z20Var != null) {
            i = z20Var.e;
        }
        accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(-1, -1, i, 1, false, false));
    }

    public final void P0(int i) {
        boolean z;
        gk gkVar = this.u;
        gkVar.e = i;
        boolean z2 = this.w;
        int i2 = 1;
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z2 != z) {
            i2 = -1;
        }
        gkVar.d = i2;
    }

    public final void Q0(int i) {
        gk gkVar = this.u;
        boolean z = false;
        gkVar.b = 0;
        gkVar.c = i;
        RecyclerView recyclerView = this.b;
        pd pdVar = this.q;
        if (recyclerView != null && recyclerView.g) {
            gkVar.f = pdVar.k();
            gkVar.g = pdVar.g();
        } else {
            gkVar.g = pdVar.f();
            gkVar.f = 0;
        }
        gkVar.h = false;
        gkVar.a = true;
        if (pdVar.i() == 0 && pdVar.f() == 0) {
            z = true;
        }
        gkVar.i = z;
    }

    @Override // defpackage.lw
    public final void R(int i, int i2) {
        D0(i, i2, 1);
    }

    public final void R0(z20 z20Var, int i, int i2) {
        int i3 = z20Var.d;
        int i4 = z20Var.e;
        BitSet bitSet = this.x;
        if (i == -1) {
            int i5 = z20Var.b;
            if (i5 == Integer.MIN_VALUE) {
                View view = (View) z20Var.a.get(0);
                z20Var.b = z20Var.f.q.e(view);
                ((w20) view.getLayoutParams()).getClass();
                i5 = z20Var.b;
            }
            if (i5 + i3 <= i2) {
                bitSet.set(i4, false);
                return;
            }
            return;
        }
        int i6 = z20Var.c;
        if (i6 == Integer.MIN_VALUE) {
            z20Var.a();
            i6 = z20Var.c;
        }
        if (i6 - i3 >= i2) {
            bitSet.set(i4, false);
        }
    }

    @Override // defpackage.lw
    public final void S() {
        ko koVar = this.A;
        int[] iArr = (int[]) koVar.b;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        koVar.c = null;
        g0();
    }

    @Override // defpackage.lw
    public final void T(int i, int i2) {
        D0(i, i2, 8);
    }

    @Override // defpackage.lw
    public final void U(int i, int i2) {
        D0(i, i2, 2);
    }

    @Override // defpackage.lw
    public final void V(int i, int i2) {
        D0(i, i2, 4);
    }

    @Override // defpackage.lw
    public final void W(rw rwVar, vw vwVar) {
        H0(rwVar, vwVar, true);
    }

    @Override // defpackage.lw
    public final void X(vw vwVar) {
        this.y = -1;
        this.z = Integer.MIN_VALUE;
        this.E = null;
        this.G.a();
    }

    @Override // defpackage.lw
    public final void Y(Parcelable parcelable) {
        if (parcelable instanceof y20) {
            this.E = (y20) parcelable;
            g0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, y20, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.os.Parcelable, y20, java.lang.Object] */
    @Override // defpackage.lw
    public final Parcelable Z() {
        int z0;
        View w0;
        int h;
        int k;
        int[] iArr;
        y20 y20Var = this.E;
        if (y20Var != null) {
            ?? obj = new Object();
            obj.c = y20Var.c;
            obj.a = y20Var.a;
            obj.b = y20Var.b;
            obj.d = y20Var.d;
            obj.e = y20Var.e;
            obj.f = y20Var.f;
            obj.h = y20Var.h;
            obj.i = y20Var.i;
            obj.j = y20Var.j;
            obj.g = y20Var.g;
            return obj;
        }
        ?? obj2 = new Object();
        obj2.h = this.v;
        obj2.i = this.C;
        obj2.j = this.D;
        ko koVar = this.A;
        if (koVar != null && (iArr = (int[]) koVar.b) != null) {
            obj2.f = iArr;
            obj2.e = iArr.length;
            obj2.g = (ArrayList) koVar.c;
        } else {
            obj2.e = 0;
        }
        int i = -1;
        if (u() > 0) {
            if (this.C) {
                z0 = A0();
            } else {
                z0 = z0();
            }
            obj2.a = z0;
            if (this.w) {
                w0 = v0(true);
            } else {
                w0 = w0(true);
            }
            if (w0 != null) {
                i = lw.D(w0);
            }
            obj2.b = i;
            int i2 = this.o;
            obj2.c = i2;
            obj2.d = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                boolean z = this.C;
                pd pdVar = this.q;
                z20[] z20VarArr = this.p;
                if (z) {
                    h = z20VarArr[i3].f(Integer.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = pdVar.g();
                        h -= k;
                        obj2.d[i3] = h;
                    } else {
                        obj2.d[i3] = h;
                    }
                } else {
                    h = z20VarArr[i3].h(Integer.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = pdVar.k();
                        h -= k;
                        obj2.d[i3] = h;
                    } else {
                        obj2.d[i3] = h;
                    }
                }
            }
            return obj2;
        }
        obj2.a = -1;
        obj2.b = -1;
        obj2.c = 0;
        return obj2;
    }

    @Override // defpackage.lw
    public final void a0(int i) {
        if (i == 0) {
            s0();
        }
    }

    @Override // defpackage.lw
    public final void b(String str) {
        if (this.E == null) {
            super.b(str);
        }
    }

    @Override // defpackage.lw
    public final boolean c() {
        if (this.s == 0) {
            return true;
        }
        return false;
    }

    @Override // defpackage.lw
    public final boolean d() {
        if (this.s == 1) {
            return true;
        }
        return false;
    }

    @Override // defpackage.lw
    public final boolean e(mw mwVar) {
        return mwVar instanceof w20;
    }

    @Override // defpackage.lw
    public final void g(int i, int i2, vw vwVar, oh ohVar) {
        gk gkVar;
        int f;
        if (this.s != 0) {
            i = i2;
        }
        if (u() != 0 && i != 0) {
            J0(i);
            int[] iArr = this.I;
            int i3 = this.o;
            if (iArr == null || iArr.length < i3) {
                this.I = new int[i3];
            }
            int i4 = 0;
            int i5 = 0;
            while (true) {
                gkVar = this.u;
                if (i4 >= i3) {
                    break;
                }
                int i6 = gkVar.d;
                z20[] z20VarArr = this.p;
                if (i6 == -1) {
                    int i7 = gkVar.f;
                    f = i7 - z20VarArr[i4].h(i7);
                } else {
                    f = z20VarArr[i4].f(gkVar.g) - gkVar.g;
                }
                if (f >= 0) {
                    this.I[i5] = f;
                    i5++;
                }
                i4++;
            }
            Arrays.sort(this.I, 0, i5);
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = gkVar.c;
                if (i9 >= 0 && i9 < vwVar.b()) {
                    ohVar.a(gkVar.c, this.I[i8]);
                    gkVar.c += gkVar.d;
                } else {
                    return;
                }
            }
        }
    }

    @Override // defpackage.lw
    public final int h0(int i, rw rwVar, vw vwVar) {
        return O0(i, rwVar, vwVar);
    }

    @Override // defpackage.lw
    public final int i(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        boolean z = !this.H;
        return em.c(vwVar, this.q, w0(z), v0(z), this, this.H);
    }

    @Override // defpackage.lw
    public final int i0(int i, rw rwVar, vw vwVar) {
        return O0(i, rwVar, vwVar);
    }

    @Override // defpackage.lw
    public final int j(vw vwVar) {
        return t0(vwVar);
    }

    @Override // defpackage.lw
    public final int k(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        boolean z = !this.H;
        return em.e(vwVar, this.q, w0(z), v0(z), this, this.H);
    }

    @Override // defpackage.lw
    public final int l(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        boolean z = !this.H;
        return em.c(vwVar, this.q, w0(z), v0(z), this, this.H);
    }

    @Override // defpackage.lw
    public final void l0(Rect rect, int i, int i2) {
        int f;
        int f2;
        int B = B() + A();
        int z = z() + C();
        int i3 = this.s;
        int i4 = this.o;
        if (i3 == 1) {
            int height = rect.height() + z;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = u70.a;
            f2 = lw.f(i2, height, e70.d(recyclerView));
            f = lw.f(i, (this.t * i4) + B, e70.e(this.b));
        } else {
            int width = rect.width() + B;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = u70.a;
            f = lw.f(i, width, e70.e(recyclerView2));
            f2 = lw.f(i2, (this.t * i4) + z, e70.d(this.b));
        }
        this.b.setMeasuredDimension(f, f2);
    }

    @Override // defpackage.lw
    public final int m(vw vwVar) {
        return t0(vwVar);
    }

    @Override // defpackage.lw
    public final int n(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        boolean z = !this.H;
        return em.e(vwVar, this.q, w0(z), v0(z), this, this.H);
    }

    @Override // defpackage.lw
    public final mw q() {
        if (this.s == 0) {
            return new mw(-2, -1);
        }
        return new mw(-1, -2);
    }

    @Override // defpackage.lw
    public final mw r(Context context, AttributeSet attributeSet) {
        return new mw(context, attributeSet);
    }

    @Override // defpackage.lw
    public final boolean r0() {
        if (this.E == null) {
            return true;
        }
        return false;
    }

    @Override // defpackage.lw
    public final mw s(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new mw((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new mw(layoutParams);
    }

    public final boolean s0() {
        int z0;
        if (u() != 0 && this.B != 0 && this.f) {
            if (this.w) {
                z0 = A0();
                z0();
            } else {
                z0 = z0();
                A0();
            }
            if (z0 == 0 && E0() != null) {
                ko koVar = this.A;
                int[] iArr = (int[]) koVar.b;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                koVar.c = null;
                this.e = true;
                g0();
                return true;
            }
        }
        return false;
    }

    public final int t0(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        boolean z = !this.H;
        return em.d(vwVar, this.q, w0(z), v0(z), this, this.H, this.w);
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x026d, code lost:
        K0(r1, r7);
     */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int u0(defpackage.rw r25, defpackage.gk r26, defpackage.vw r27) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.u0(rw, gk, vw):int");
    }

    public final View v0(boolean z) {
        pd pdVar = this.q;
        int k = pdVar.k();
        int g = pdVar.g();
        View view = null;
        for (int u = u() - 1; u >= 0; u--) {
            View t = t(u);
            int e = pdVar.e(t);
            int b = pdVar.b(t);
            if (b > k && e < g) {
                if (b > g && z) {
                    if (view == null) {
                        view = t;
                    }
                } else {
                    return t;
                }
            }
        }
        return view;
    }

    @Override // defpackage.lw
    public final int w(rw rwVar, vw vwVar) {
        if (this.s == 1) {
            return this.o;
        }
        return super.w(rwVar, vwVar);
    }

    public final View w0(boolean z) {
        pd pdVar = this.q;
        int k = pdVar.k();
        int g = pdVar.g();
        int u = u();
        View view = null;
        for (int i = 0; i < u; i++) {
            View t = t(i);
            int e = pdVar.e(t);
            if (pdVar.b(t) > k && e < g) {
                if (e < k && z) {
                    if (view == null) {
                        view = t;
                    }
                } else {
                    return t;
                }
            }
        }
        return view;
    }

    public final void x0(rw rwVar, vw vwVar, boolean z) {
        int g;
        int B0 = B0(Integer.MIN_VALUE);
        if (B0 != Integer.MIN_VALUE && (g = this.q.g() - B0) > 0) {
            int i = g - (-O0(-g, rwVar, vwVar));
            if (z && i > 0) {
                this.q.o(i);
            }
        }
    }

    public final void y0(rw rwVar, vw vwVar, boolean z) {
        int k;
        int C0 = C0(Alert.DURATION_SHOW_INDEFINITELY);
        if (C0 != Integer.MAX_VALUE && (k = C0 - this.q.k()) > 0) {
            int O0 = k - O0(k, rwVar, vwVar);
            if (z && O0 > 0) {
                this.q.o(-O0);
            }
        }
    }

    public final int z0() {
        if (u() == 0) {
            return 0;
        }
        return lw.D(t(0));
    }
}
