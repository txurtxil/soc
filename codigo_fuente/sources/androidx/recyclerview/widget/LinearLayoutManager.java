package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;
/* loaded from: classes.dex */
public class LinearLayoutManager extends lw {
    public final yk A;
    public final int B;
    public final int[] C;
    public int o;
    public zk p;
    public pd q;
    public boolean r;
    public final boolean s;
    public boolean t;
    public boolean u;
    public final boolean v;
    public int w;
    public int x;
    public al y;
    public final xk z;

    /* JADX WARN: Type inference failed for: r1v2, types: [yk, java.lang.Object] */
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.o = 1;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = true;
        this.w = -1;
        this.x = Integer.MIN_VALUE;
        this.y = null;
        this.z = new xk();
        this.A = new Object();
        this.B = 2;
        this.C = new int[2];
        kw E = lw.E(context, attributeSet, i, i2);
        P0(E.a);
        boolean z = E.c;
        b(null);
        if (z != this.s) {
            this.s = z;
            g0();
        }
        Q0(E.d);
    }

    public final View A0(boolean z) {
        if (this.t) {
            return C0(u() - 1, -1, z);
        }
        return C0(0, u(), z);
    }

    public final View B0(int i, int i2) {
        int i3;
        int i4;
        x0();
        if (i2 > i || i2 < i) {
            if (this.q.e(t(i)) < this.q.k()) {
                i3 = 16644;
                i4 = 16388;
            } else {
                i3 = 4161;
                i4 = 4097;
            }
            if (this.o == 0) {
                return this.c.t(i, i2, i3, i4);
            }
            return this.d.t(i, i2, i3, i4);
        }
        return t(i);
    }

    public final View C0(int i, int i2, boolean z) {
        int i3;
        x0();
        if (z) {
            i3 = 24579;
        } else {
            i3 = 320;
        }
        if (this.o == 0) {
            return this.c.t(i, i2, i3, 320);
        }
        return this.d.t(i, i2, i3, 320);
    }

    public View D0(rw rwVar, vw vwVar, int i, int i2, int i3) {
        int i4;
        x0();
        int k = this.q.k();
        int g = this.q.g();
        if (i2 > i) {
            i4 = 1;
        } else {
            i4 = -1;
        }
        View view = null;
        View view2 = null;
        while (i != i2) {
            View t = t(i);
            int D = lw.D(t);
            if (D >= 0 && D < i3) {
                if (((mw) t.getLayoutParams()).a.i()) {
                    if (view2 == null) {
                        view2 = t;
                    }
                } else if (this.q.e(t) < g && this.q.b(t) >= k) {
                    return t;
                } else {
                    if (view == null) {
                        view = t;
                    }
                }
            }
            i += i4;
        }
        if (view != null) {
            return view;
        }
        return view2;
    }

    public final int E0(int i, rw rwVar, vw vwVar, boolean z) {
        int g;
        int g2 = this.q.g() - i;
        if (g2 > 0) {
            int i2 = -O0(-g2, rwVar, vwVar);
            int i3 = i + i2;
            if (z && (g = this.q.g() - i3) > 0) {
                this.q.o(g);
                return g + i2;
            }
            return i2;
        }
        return 0;
    }

    public final int F0(int i, rw rwVar, vw vwVar, boolean z) {
        int k;
        int k2 = i - this.q.k();
        if (k2 > 0) {
            int i2 = -O0(k2, rwVar, vwVar);
            int i3 = i + i2;
            if (z && (k = i3 - this.q.k()) > 0) {
                this.q.o(-k);
                return i2 - k;
            }
            return i2;
        }
        return 0;
    }

    public final View G0() {
        int u;
        if (this.t) {
            u = 0;
        } else {
            u = u() - 1;
        }
        return t(u);
    }

    @Override // defpackage.lw
    public final boolean H() {
        return true;
    }

    public final View H0() {
        int i;
        if (this.t) {
            i = u() - 1;
        } else {
            i = 0;
        }
        return t(i);
    }

    public final boolean I0() {
        if (y() == 1) {
            return true;
        }
        return false;
    }

    public void J0(rw rwVar, vw vwVar, zk zkVar, yk ykVar) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        View b = zkVar.b(rwVar);
        if (b == null) {
            ykVar.b = true;
            return;
        }
        mw mwVar = (mw) b.getLayoutParams();
        List list = zkVar.k;
        boolean z3 = this.t;
        int i5 = zkVar.f;
        if (list == null) {
            if (i5 == -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z3 == z2) {
                a(b, -1, false);
            } else {
                a(b, 0, false);
            }
        } else {
            if (i5 == -1) {
                z = true;
            } else {
                z = false;
            }
            if (z3 == z) {
                a(b, -1, true);
            } else {
                a(b, 0, true);
            }
        }
        mw mwVar2 = (mw) b.getLayoutParams();
        Rect H = this.b.H(b);
        int i6 = H.left + H.right;
        int i7 = H.top + H.bottom;
        int v = lw.v(c(), this.m, this.k, B() + A() + ((ViewGroup.MarginLayoutParams) mwVar2).leftMargin + ((ViewGroup.MarginLayoutParams) mwVar2).rightMargin + i6, ((ViewGroup.MarginLayoutParams) mwVar2).width);
        int v2 = lw.v(d(), this.n, this.l, z() + C() + ((ViewGroup.MarginLayoutParams) mwVar2).topMargin + ((ViewGroup.MarginLayoutParams) mwVar2).bottomMargin + i7, ((ViewGroup.MarginLayoutParams) mwVar2).height);
        if (o0(b, v, v2, mwVar2)) {
            b.measure(v, v2);
        }
        ykVar.a = this.q.c(b);
        if (this.o == 1) {
            if (I0()) {
                i4 = this.m - B();
                i2 = i4 - this.q.d(b);
            } else {
                int A = A();
                i4 = this.q.d(b) + A;
                i2 = A;
            }
            int i8 = zkVar.f;
            i3 = zkVar.b;
            int i9 = ykVar.a;
            if (i8 == -1) {
                int i10 = i3 - i9;
                i = i3;
                i3 = i10;
            } else {
                i = i9 + i3;
            }
        } else {
            int C = C();
            int d = this.q.d(b) + C;
            int i11 = zkVar.f;
            int i12 = zkVar.b;
            int i13 = ykVar.a;
            if (i11 == -1) {
                int i14 = i12 - i13;
                i4 = i12;
                i3 = C;
                i = d;
                i2 = i14;
            } else {
                int i15 = i12 + i13;
                i = d;
                i2 = i12;
                i3 = C;
                i4 = i15;
            }
        }
        lw.J(b, i2, i3, i4, i);
        if (mwVar.a.i() || mwVar.a.l()) {
            ykVar.c = true;
        }
        ykVar.d = b.hasFocusable();
    }

    public final void L0(rw rwVar, zk zkVar) {
        if (zkVar.a && !zkVar.l) {
            int i = zkVar.g;
            int i2 = zkVar.i;
            if (zkVar.f == -1) {
                int u = u();
                if (i >= 0) {
                    int f = (this.q.f() - i) + i2;
                    if (this.t) {
                        for (int i3 = 0; i3 < u; i3++) {
                            View t = t(i3);
                            if (this.q.e(t) < f || this.q.n(t) < f) {
                                M0(rwVar, 0, i3);
                                return;
                            }
                        }
                        return;
                    }
                    int i4 = u - 1;
                    for (int i5 = i4; i5 >= 0; i5--) {
                        View t2 = t(i5);
                        if (this.q.e(t2) < f || this.q.n(t2) < f) {
                            M0(rwVar, i4, i5);
                            return;
                        }
                    }
                }
            } else if (i >= 0) {
                int i6 = i - i2;
                int u2 = u();
                if (this.t) {
                    int i7 = u2 - 1;
                    for (int i8 = i7; i8 >= 0; i8--) {
                        View t3 = t(i8);
                        if (this.q.b(t3) > i6 || this.q.m(t3) > i6) {
                            M0(rwVar, i7, i8);
                            return;
                        }
                    }
                    return;
                }
                for (int i9 = 0; i9 < u2; i9++) {
                    View t4 = t(i9);
                    if (this.q.b(t4) > i6 || this.q.m(t4) > i6) {
                        M0(rwVar, 0, i9);
                        return;
                    }
                }
            }
        }
    }

    public final void M0(rw rwVar, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    View t = t(i3);
                    e0(i3);
                    rwVar.f(t);
                }
                return;
            }
            while (i > i2) {
                View t2 = t(i);
                e0(i);
                rwVar.f(t2);
                i--;
            }
        }
    }

    @Override // defpackage.lw
    public View N(View view, int i, rw rwVar, vw vwVar) {
        int w0;
        View B0;
        View G0;
        N0();
        if (u() != 0 && (w0 = w0(i)) != Integer.MIN_VALUE) {
            x0();
            R0(w0, (int) (this.q.l() * 0.33333334f), false, vwVar);
            zk zkVar = this.p;
            zkVar.g = Integer.MIN_VALUE;
            zkVar.a = false;
            y0(rwVar, zkVar, vwVar, true);
            boolean z = this.t;
            if (w0 == -1) {
                if (z) {
                    B0 = B0(u() - 1, -1);
                } else {
                    B0 = B0(0, u());
                }
            } else if (z) {
                B0 = B0(0, u());
            } else {
                B0 = B0(u() - 1, -1);
            }
            if (w0 == -1) {
                G0 = H0();
            } else {
                G0 = G0();
            }
            if (G0.hasFocusable()) {
                if (B0 != null) {
                    return G0;
                }
            } else {
                return B0;
            }
        }
        return null;
    }

    public final void N0() {
        if (this.o != 1 && I0()) {
            this.t = !this.s;
        } else {
            this.t = this.s;
        }
    }

    @Override // defpackage.lw
    public final void O(AccessibilityEvent accessibilityEvent) {
        int D;
        super.O(accessibilityEvent);
        if (u() > 0) {
            View C0 = C0(0, u(), false);
            int i = -1;
            if (C0 == null) {
                D = -1;
            } else {
                D = lw.D(C0);
            }
            accessibilityEvent.setFromIndex(D);
            View C02 = C0(u() - 1, -1, false);
            if (C02 != null) {
                i = lw.D(C02);
            }
            accessibilityEvent.setToIndex(i);
        }
    }

    public final int O0(int i, rw rwVar, vw vwVar) {
        int i2;
        if (u() != 0 && i != 0) {
            x0();
            this.p.a = true;
            if (i > 0) {
                i2 = 1;
            } else {
                i2 = -1;
            }
            int abs = Math.abs(i);
            R0(i2, abs, true, vwVar);
            zk zkVar = this.p;
            int y0 = y0(rwVar, zkVar, vwVar, false) + zkVar.g;
            if (y0 >= 0) {
                if (abs > y0) {
                    i = i2 * y0;
                }
                this.q.o(-i);
                this.p.j = i;
                return i;
            }
        }
        return 0;
    }

    public final void P0(int i) {
        if (i != 0 && i != 1) {
            c2.n(t20.d(i, "invalid orientation:"));
            return;
        }
        b(null);
        if (i == this.o && this.q != null) {
            return;
        }
        pd a = pd.a(this, i);
        this.q = a;
        this.z.a = a;
        this.o = i;
        g0();
    }

    public void Q0(boolean z) {
        b(null);
        if (this.u == z) {
            return;
        }
        this.u = z;
        g0();
    }

    public final void R0(int i, int i2, boolean z, vw vwVar) {
        boolean z2;
        int i3;
        int k;
        zk zkVar = this.p;
        boolean z3 = false;
        int i4 = 1;
        if (this.q.i() == 0 && this.q.f() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        zkVar.l = z2;
        this.p.f = i;
        int[] iArr = this.C;
        iArr[0] = 0;
        iArr[1] = 0;
        vwVar.getClass();
        int i5 = this.p.f;
        iArr[0] = 0;
        iArr[1] = 0;
        int max = Math.max(0, 0);
        int max2 = Math.max(0, iArr[1]);
        if (i == 1) {
            z3 = true;
        }
        zk zkVar2 = this.p;
        if (z3) {
            i3 = max2;
        } else {
            i3 = max;
        }
        zkVar2.h = i3;
        if (!z3) {
            max = max2;
        }
        zkVar2.i = max;
        if (z3) {
            zkVar2.h = this.q.h() + i3;
            View G0 = G0();
            zk zkVar3 = this.p;
            if (this.t) {
                i4 = -1;
            }
            zkVar3.e = i4;
            int D = lw.D(G0);
            zk zkVar4 = this.p;
            zkVar3.d = D + zkVar4.e;
            zkVar4.b = this.q.b(G0);
            k = this.q.b(G0) - this.q.g();
        } else {
            View H0 = H0();
            zk zkVar5 = this.p;
            zkVar5.h = this.q.k() + zkVar5.h;
            zk zkVar6 = this.p;
            if (!this.t) {
                i4 = -1;
            }
            zkVar6.e = i4;
            int D2 = lw.D(H0);
            zk zkVar7 = this.p;
            zkVar6.d = D2 + zkVar7.e;
            zkVar7.b = this.q.e(H0);
            k = (-this.q.e(H0)) + this.q.k();
        }
        zk zkVar8 = this.p;
        zkVar8.c = i2;
        if (z) {
            zkVar8.c = i2 - k;
        }
        zkVar8.g = k;
    }

    public final void S0(int i, int i2) {
        int i3;
        this.p.c = this.q.g() - i2;
        zk zkVar = this.p;
        if (this.t) {
            i3 = -1;
        } else {
            i3 = 1;
        }
        zkVar.e = i3;
        zkVar.d = i;
        zkVar.f = 1;
        zkVar.b = i2;
        zkVar.g = Integer.MIN_VALUE;
    }

    public final void T0(int i, int i2) {
        int i3;
        this.p.c = i2 - this.q.k();
        zk zkVar = this.p;
        zkVar.d = i;
        if (this.t) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        zkVar.e = i3;
        zkVar.f = -1;
        zkVar.b = i2;
        zkVar.g = Integer.MIN_VALUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02a8  */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v22 */
    @Override // defpackage.lw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W(defpackage.rw r18, defpackage.vw r19) {
        /*
            Method dump skipped, instructions count: 1198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.W(rw, vw):void");
    }

    @Override // defpackage.lw
    public void X(vw vwVar) {
        this.y = null;
        this.w = -1;
        this.x = Integer.MIN_VALUE;
        this.z.c();
    }

    @Override // defpackage.lw
    public final void Y(Parcelable parcelable) {
        if (parcelable instanceof al) {
            this.y = (al) parcelable;
            g0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, java.lang.Object, al] */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.os.Parcelable, java.lang.Object, al] */
    @Override // defpackage.lw
    public final Parcelable Z() {
        al alVar = this.y;
        if (alVar != null) {
            ?? obj = new Object();
            obj.a = alVar.a;
            obj.b = alVar.b;
            obj.c = alVar.c;
            return obj;
        }
        ?? obj2 = new Object();
        if (u() > 0) {
            x0();
            boolean z = this.r ^ this.t;
            obj2.c = z;
            if (z) {
                View G0 = G0();
                obj2.b = this.q.g() - this.q.b(G0);
                obj2.a = lw.D(G0);
                return obj2;
            }
            View H0 = H0();
            obj2.a = lw.D(H0);
            obj2.b = this.q.e(H0) - this.q.k();
            return obj2;
        }
        obj2.a = -1;
        return obj2;
    }

    @Override // defpackage.lw
    public final void b(String str) {
        if (this.y == null) {
            super.b(str);
        }
    }

    @Override // defpackage.lw
    public final boolean c() {
        if (this.o == 0) {
            return true;
        }
        return false;
    }

    @Override // defpackage.lw
    public final boolean d() {
        if (this.o == 1) {
            return true;
        }
        return false;
    }

    @Override // defpackage.lw
    public final void g(int i, int i2, vw vwVar, oh ohVar) {
        int i3;
        if (this.o != 0) {
            i = i2;
        }
        if (u() != 0 && i != 0) {
            x0();
            if (i > 0) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            R0(i3, Math.abs(i), true, vwVar);
            s0(vwVar, this.p, ohVar);
        }
    }

    @Override // defpackage.lw
    public final void h(int i, oh ohVar) {
        boolean z;
        int i2;
        al alVar = this.y;
        int i3 = -1;
        if (alVar != null && (i2 = alVar.a) >= 0) {
            z = alVar.c;
        } else {
            N0();
            z = this.t;
            i2 = this.w;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        }
        if (!z) {
            i3 = 1;
        }
        for (int i4 = 0; i4 < this.B && i2 >= 0 && i2 < i; i4++) {
            ohVar.a(i2, 0);
            i2 += i3;
        }
    }

    @Override // defpackage.lw
    public int h0(int i, rw rwVar, vw vwVar) {
        if (this.o == 1) {
            return 0;
        }
        return O0(i, rwVar, vwVar);
    }

    @Override // defpackage.lw
    public final int i(vw vwVar) {
        return t0(vwVar);
    }

    @Override // defpackage.lw
    public int i0(int i, rw rwVar, vw vwVar) {
        if (this.o == 0) {
            return 0;
        }
        return O0(i, rwVar, vwVar);
    }

    @Override // defpackage.lw
    public int j(vw vwVar) {
        return u0(vwVar);
    }

    @Override // defpackage.lw
    public int k(vw vwVar) {
        return v0(vwVar);
    }

    @Override // defpackage.lw
    public final int l(vw vwVar) {
        return t0(vwVar);
    }

    @Override // defpackage.lw
    public int m(vw vwVar) {
        return u0(vwVar);
    }

    @Override // defpackage.lw
    public int n(vw vwVar) {
        return v0(vwVar);
    }

    @Override // defpackage.lw
    public final View p(int i) {
        int u = u();
        if (u == 0) {
            return null;
        }
        int D = i - lw.D(t(0));
        if (D >= 0 && D < u) {
            View t = t(D);
            if (lw.D(t) == i) {
                return t;
            }
        }
        return super.p(i);
    }

    @Override // defpackage.lw
    public final boolean p0() {
        if (this.l != 1073741824 && this.k != 1073741824) {
            int u = u();
            for (int i = 0; i < u; i++) {
                ViewGroup.LayoutParams layoutParams = t(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.lw
    public mw q() {
        return new mw(-2, -2);
    }

    @Override // defpackage.lw
    public boolean r0() {
        if (this.y == null && this.r == this.u) {
            return true;
        }
        return false;
    }

    public void s0(vw vwVar, zk zkVar, oh ohVar) {
        int i = zkVar.d;
        if (i >= 0 && i < vwVar.b()) {
            ohVar.a(i, Math.max(0, zkVar.g));
        }
    }

    public final int t0(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        x0();
        pd pdVar = this.q;
        boolean z = !this.v;
        return em.c(vwVar, pdVar, A0(z), z0(z), this, this.v);
    }

    public final int u0(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        x0();
        pd pdVar = this.q;
        boolean z = !this.v;
        return em.d(vwVar, pdVar, A0(z), z0(z), this, this.v, this.t);
    }

    public final int v0(vw vwVar) {
        if (u() == 0) {
            return 0;
        }
        x0();
        pd pdVar = this.q;
        boolean z = !this.v;
        return em.e(vwVar, pdVar, A0(z), z0(z), this, this.v);
    }

    public final int w0(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 17) {
                    if (i != 33) {
                        if (i != 66) {
                            if (i == 130 && this.o == 1) {
                                return 1;
                            }
                            return Integer.MIN_VALUE;
                        } else if (this.o == 0) {
                            return 1;
                        } else {
                            return Integer.MIN_VALUE;
                        }
                    } else if (this.o == 1) {
                        return -1;
                    } else {
                        return Integer.MIN_VALUE;
                    }
                } else if (this.o == 0) {
                    return -1;
                } else {
                    return Integer.MIN_VALUE;
                }
            } else if (this.o != 1 && I0()) {
                return -1;
            } else {
                return 1;
            }
        } else if (this.o == 1 || !I0()) {
            return -1;
        } else {
            return 1;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [zk, java.lang.Object] */
    public final void x0() {
        if (this.p == null) {
            ?? obj = new Object();
            obj.a = true;
            obj.h = 0;
            obj.i = 0;
            obj.k = null;
            this.p = obj;
        }
    }

    public final int y0(rw rwVar, zk zkVar, vw vwVar, boolean z) {
        int i;
        int i2 = zkVar.c;
        int i3 = zkVar.g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                zkVar.g = i3 + i2;
            }
            L0(rwVar, zkVar);
        }
        int i4 = zkVar.c + zkVar.h;
        while (true) {
            if ((!zkVar.l && i4 <= 0) || (i = zkVar.d) < 0 || i >= vwVar.b()) {
                break;
            }
            yk ykVar = this.A;
            ykVar.a = 0;
            ykVar.b = false;
            ykVar.c = false;
            ykVar.d = false;
            J0(rwVar, vwVar, zkVar, ykVar);
            if (!ykVar.b) {
                int i5 = zkVar.b;
                int i6 = ykVar.a;
                zkVar.b = (zkVar.f * i6) + i5;
                if (!ykVar.c || zkVar.k != null || !vwVar.f) {
                    zkVar.c -= i6;
                    i4 -= i6;
                }
                int i7 = zkVar.g;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    zkVar.g = i8;
                    int i9 = zkVar.c;
                    if (i9 < 0) {
                        zkVar.g = i8 + i9;
                    }
                    L0(rwVar, zkVar);
                }
                if (z && ykVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - zkVar.c;
    }

    public final View z0(boolean z) {
        if (this.t) {
            return C0(0, u(), z);
        }
        return C0(u() - 1, -1, z);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [yk, java.lang.Object] */
    public LinearLayoutManager() {
        this.o = 1;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = true;
        this.w = -1;
        this.x = Integer.MIN_VALUE;
        this.y = null;
        this.z = new xk();
        this.A = new Object();
        this.B = 2;
        this.C = new int[2];
        P0(1);
        b(null);
        if (this.s) {
            this.s = false;
            g0();
        }
    }

    @Override // defpackage.lw
    public final void M(RecyclerView recyclerView) {
    }

    public void K0(rw rwVar, vw vwVar, xk xkVar, int i) {
    }
}
