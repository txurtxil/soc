package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean D;
    public final int E;
    public int[] F;
    public View[] G;
    public final SparseIntArray H;
    public final SparseIntArray I;
    public final ko J;
    public final Rect K;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.D = false;
        this.E = -1;
        this.H = new SparseIntArray();
        this.I = new SparseIntArray();
        ko koVar = new ko(13);
        this.J = koVar;
        this.K = new Rect();
        int i3 = lw.E(context, attributeSet, i, i2).b;
        if (i3 == this.E) {
            return;
        }
        this.D = true;
        if (i3 >= 1) {
            this.E = i3;
            koVar.x();
            g0();
            return;
        }
        c2.n(t20.d(i3, "Span count should be at least 1. Provided "));
        throw null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View D0(rw rwVar, vw vwVar, int i, int i2, int i3) {
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
            if (D >= 0 && D < i3 && Y0(D, rwVar, vwVar) == 0) {
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

    @Override // defpackage.lw
    public final int F(rw rwVar, vw vwVar) {
        if (this.o == 0) {
            return this.E;
        }
        if (vwVar.b() < 1) {
            return 0;
        }
        return X0(vwVar.b() - 1, rwVar, vwVar) + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
        r23.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008f, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v32 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J0(defpackage.rw r20, defpackage.vw r21, defpackage.zk r22, defpackage.yk r23) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.J0(rw, vw, zk, yk):void");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void K0(rw rwVar, vw vwVar, xk xkVar, int i) {
        boolean z;
        b1();
        if (vwVar.b() > 0 && !vwVar.f) {
            if (i == 1) {
                z = true;
            } else {
                z = false;
            }
            int Y0 = Y0(xkVar.b, rwVar, vwVar);
            if (z) {
                while (Y0 > 0) {
                    int i2 = xkVar.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    xkVar.b = i3;
                    Y0 = Y0(i3, rwVar, vwVar);
                }
            } else {
                int b = vwVar.b() - 1;
                int i4 = xkVar.b;
                while (i4 < b) {
                    int i5 = i4 + 1;
                    int Y02 = Y0(i5, rwVar, vwVar);
                    if (Y02 <= Y0) {
                        break;
                    }
                    i4 = i5;
                    Y0 = Y02;
                }
                xkVar.b = i4;
            }
        }
        V0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e2, code lost:
        if (r13 == r10) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0107, code lost:
        if (r13 == r9) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (((java.util.ArrayList) r22.a.d).contains(r3) != false) goto L4;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View N(android.view.View r23, int r24, defpackage.rw r25, defpackage.vw r26) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.N(android.view.View, int, rw, vw):android.view.View");
    }

    @Override // defpackage.lw
    public final void P(rw rwVar, vw vwVar, View view, g0 g0Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = g0Var.a;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof th)) {
            Q(view, g0Var);
            return;
        }
        th thVar = (th) layoutParams;
        int X0 = X0(thVar.a.c(), rwVar, vwVar);
        int i = this.o;
        int i2 = thVar.e;
        int i3 = thVar.f;
        if (i == 0) {
            accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, X0, 1, false, false));
        } else {
            accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(X0, 1, i2, i3, false, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void Q0(boolean z) {
        if (!z) {
            super.Q0(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // defpackage.lw
    public final void R(int i, int i2) {
        ko koVar = this.J;
        koVar.x();
        ((SparseIntArray) koVar.c).clear();
    }

    @Override // defpackage.lw
    public final void S() {
        ko koVar = this.J;
        koVar.x();
        ((SparseIntArray) koVar.c).clear();
    }

    @Override // defpackage.lw
    public final void T(int i, int i2) {
        ko koVar = this.J;
        koVar.x();
        ((SparseIntArray) koVar.c).clear();
    }

    @Override // defpackage.lw
    public final void U(int i, int i2) {
        ko koVar = this.J;
        koVar.x();
        ((SparseIntArray) koVar.c).clear();
    }

    public final void U0(int i) {
        int i2;
        int[] iArr = this.F;
        int i3 = this.E;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 > 0 && i3 - i4 < i6) {
                i2 = i5 + 1;
                i4 -= i3;
            } else {
                i2 = i5;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.F = iArr;
    }

    @Override // defpackage.lw
    public final void V(int i, int i2) {
        ko koVar = this.J;
        koVar.x();
        ((SparseIntArray) koVar.c).clear();
    }

    public final void V0() {
        View[] viewArr = this.G;
        if (viewArr != null && viewArr.length == this.E) {
            return;
        }
        this.G = new View[this.E];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final void W(rw rwVar, vw vwVar) {
        boolean z = vwVar.f;
        SparseIntArray sparseIntArray = this.I;
        SparseIntArray sparseIntArray2 = this.H;
        if (z) {
            int u = u();
            for (int i = 0; i < u; i++) {
                th thVar = (th) t(i).getLayoutParams();
                int c = thVar.a.c();
                sparseIntArray2.put(c, thVar.f);
                sparseIntArray.put(c, thVar.e);
            }
        }
        super.W(rwVar, vwVar);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    public final int W0(int i, int i2) {
        if (this.o == 1 && I0()) {
            int[] iArr = this.F;
            int i3 = this.E;
            return iArr[i3 - i] - iArr[(i3 - i) - i2];
        }
        int[] iArr2 = this.F;
        return iArr2[i2 + i] - iArr2[i];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final void X(vw vwVar) {
        super.X(vwVar);
        this.D = false;
    }

    public final int X0(int i, rw rwVar, vw vwVar) {
        boolean z = vwVar.f;
        int i2 = this.E;
        ko koVar = this.J;
        if (!z) {
            koVar.getClass();
            return ko.v(i, i2);
        }
        int b = rwVar.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        koVar.getClass();
        return ko.v(b, i2);
    }

    public final int Y0(int i, rw rwVar, vw vwVar) {
        boolean z = vwVar.f;
        int i2 = this.E;
        ko koVar = this.J;
        if (!z) {
            koVar.getClass();
            return i % i2;
        }
        int i3 = this.I.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int b = rwVar.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        koVar.getClass();
        return b % i2;
    }

    public final int Z0(int i, rw rwVar, vw vwVar) {
        boolean z = vwVar.f;
        ko koVar = this.J;
        if (!z) {
            koVar.getClass();
            return 1;
        }
        int i2 = this.H.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (rwVar.b(i) == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        koVar.getClass();
        return 1;
    }

    public final void a1(View view, int i, boolean z) {
        int i2;
        int i3;
        boolean o0;
        th thVar = (th) view.getLayoutParams();
        Rect rect = thVar.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) thVar).topMargin + ((ViewGroup.MarginLayoutParams) thVar).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) thVar).leftMargin + ((ViewGroup.MarginLayoutParams) thVar).rightMargin;
        int W0 = W0(thVar.e, thVar.f);
        if (this.o == 1) {
            i3 = lw.v(false, W0, i, i5, ((ViewGroup.MarginLayoutParams) thVar).width);
            i2 = lw.v(true, this.q.l(), this.l, i4, ((ViewGroup.MarginLayoutParams) thVar).height);
        } else {
            int v = lw.v(false, W0, i, i4, ((ViewGroup.MarginLayoutParams) thVar).height);
            int v2 = lw.v(true, this.q.l(), this.k, i5, ((ViewGroup.MarginLayoutParams) thVar).width);
            i2 = v;
            i3 = v2;
        }
        mw mwVar = (mw) view.getLayoutParams();
        if (z) {
            o0 = q0(view, i3, i2, mwVar);
        } else {
            o0 = o0(view, i3, i2, mwVar);
        }
        if (o0) {
            view.measure(i3, i2);
        }
    }

    public final void b1() {
        int z;
        int C;
        if (this.o == 1) {
            z = this.m - B();
            C = A();
        } else {
            z = this.n - z();
            C = C();
        }
        U0(z - C);
    }

    @Override // defpackage.lw
    public final boolean e(mw mwVar) {
        return mwVar instanceof th;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final int h0(int i, rw rwVar, vw vwVar) {
        b1();
        V0();
        return super.h0(i, rwVar, vwVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final int i0(int i, rw rwVar, vw vwVar) {
        b1();
        V0();
        return super.i0(i, rwVar, vwVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final int j(vw vwVar) {
        return u0(vwVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final int k(vw vwVar) {
        return v0(vwVar);
    }

    @Override // defpackage.lw
    public final void l0(Rect rect, int i, int i2) {
        int f;
        int f2;
        if (this.F == null) {
            super.l0(rect, i, i2);
        }
        int B = B() + A();
        int z = z() + C();
        if (this.o == 1) {
            int height = rect.height() + z;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = u70.a;
            f2 = lw.f(i2, height, e70.d(recyclerView));
            int[] iArr = this.F;
            f = lw.f(i, iArr[iArr.length - 1] + B, e70.e(this.b));
        } else {
            int width = rect.width() + B;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = u70.a;
            f = lw.f(i, width, e70.e(recyclerView2));
            int[] iArr2 = this.F;
            f2 = lw.f(i2, iArr2[iArr2.length - 1] + z, e70.d(this.b));
        }
        this.b.setMeasuredDimension(f, f2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final int m(vw vwVar) {
        return u0(vwVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final int n(vw vwVar) {
        return v0(vwVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final mw q() {
        if (this.o == 0) {
            return new th(-2, -1);
        }
        return new th(-1, -2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [th, mw] */
    @Override // defpackage.lw
    public final mw r(Context context, AttributeSet attributeSet) {
        ?? mwVar = new mw(context, attributeSet);
        mwVar.e = -1;
        mwVar.f = 0;
        return mwVar;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, defpackage.lw
    public final boolean r0() {
        if (this.y == null && !this.D) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [th, mw] */
    /* JADX WARN: Type inference failed for: r2v3, types: [th, mw] */
    @Override // defpackage.lw
    public final mw s(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? mwVar = new mw((ViewGroup.MarginLayoutParams) layoutParams);
            mwVar.e = -1;
            mwVar.f = 0;
            return mwVar;
        }
        ?? mwVar2 = new mw(layoutParams);
        mwVar2.e = -1;
        mwVar2.f = 0;
        return mwVar2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void s0(vw vwVar, zk zkVar, oh ohVar) {
        int i = this.E;
        int i2 = i;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = zkVar.d;
            if (i4 >= 0 && i4 < vwVar.b() && i2 > 0) {
                ohVar.a(zkVar.d, Math.max(0, zkVar.g));
                this.J.getClass();
                i2--;
                zkVar.d += zkVar.e;
            } else {
                return;
            }
        }
    }

    @Override // defpackage.lw
    public final int w(rw rwVar, vw vwVar) {
        if (this.o == 1) {
            return this.E;
        }
        if (vwVar.b() < 1) {
            return 0;
        }
        return X0(vwVar.b() - 1, rwVar, vwVar) + 1;
    }
}
