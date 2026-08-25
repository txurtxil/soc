package defpackage;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: cw  reason: default package */
/* loaded from: classes.dex */
public final class cw {
    public final /* synthetic */ RecyclerView a;

    public /* synthetic */ cw(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public void a(y1 y1Var) {
        int i = y1Var.a;
        RecyclerView recyclerView = this.a;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 8) {
                        return;
                    }
                    recyclerView.m.T(y1Var.b, y1Var.d);
                    return;
                }
                recyclerView.m.V(y1Var.b, y1Var.d);
                return;
            }
            recyclerView.m.U(y1Var.b, y1Var.d);
            return;
        }
        recyclerView.m.R(y1Var.b, y1Var.d);
    }

    public nu b(int i) {
        RecyclerView recyclerView = this.a;
        int y = recyclerView.e.y();
        int i2 = 0;
        nu nuVar = null;
        while (true) {
            if (i2 >= y) {
                break;
            }
            nu G = RecyclerView.G(recyclerView.e.x(i2));
            if (G != null && !G.i() && G.c == i) {
                if (((ArrayList) recyclerView.e.d).contains(G.a)) {
                    nuVar = G;
                } else {
                    nuVar = G;
                    break;
                }
            }
            i2++;
        }
        if (nuVar != null) {
            if (!((ArrayList) recyclerView.e.d).contains(nuVar.a)) {
                return nuVar;
            }
        }
        return null;
    }

    public void c(int i, int i2, Object obj) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.a;
        int y = recyclerView.e.y();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < y; i6++) {
            View x = recyclerView.e.x(i6);
            nu G = RecyclerView.G(x);
            if (G != null && !G.p() && (i4 = G.c) >= i && i4 < i5) {
                G.a(2);
                if (obj == null) {
                    G.a(1024);
                } else if ((1024 & G.j) == 0) {
                    if (G.k == null) {
                        ArrayList arrayList = new ArrayList();
                        G.k = arrayList;
                        G.l = Collections.unmodifiableList(arrayList);
                    }
                    G.k.add(obj);
                }
                ((mw) x.getLayoutParams()).c = true;
            }
        }
        rw rwVar = recyclerView.b;
        ArrayList arrayList2 = rwVar.c;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            nu nuVar = (nu) arrayList2.get(size);
            if (nuVar != null && (i3 = nuVar.c) >= i && i3 < i5) {
                nuVar.a(2);
                rwVar.e(size);
            }
        }
        recyclerView.i0 = true;
    }

    public void d(int i, int i2) {
        RecyclerView recyclerView = this.a;
        int y = recyclerView.e.y();
        for (int i3 = 0; i3 < y; i3++) {
            nu G = RecyclerView.G(recyclerView.e.x(i3));
            if (G != null && !G.p() && G.c >= i) {
                G.m(i2, false);
                recyclerView.e0.e = true;
            }
        }
        ArrayList arrayList = recyclerView.b.c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            nu nuVar = (nu) arrayList.get(i4);
            if (nuVar != null && nuVar.c >= i) {
                nuVar.m(i2, true);
            }
        }
        recyclerView.requestLayout();
        recyclerView.h0 = true;
    }

    public void e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        RecyclerView recyclerView = this.a;
        int y = recyclerView.e.y();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < y; i11++) {
            nu G = RecyclerView.G(recyclerView.e.x(i11));
            if (G != null && (i9 = G.c) >= i4 && i9 <= i3) {
                if (i9 == i) {
                    G.m(i2 - i, false);
                } else {
                    G.m(i5, false);
                }
                recyclerView.e0.e = true;
            }
        }
        ArrayList arrayList = recyclerView.b.c;
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            nu nuVar = (nu) arrayList.get(i12);
            if (nuVar != null && (i8 = nuVar.c) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    nuVar.m(i2 - i, false);
                } else {
                    nuVar.m(i10, false);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.h0 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(defpackage.nu r8, defpackage.dr r9, defpackage.dr r10) {
        /*
            r7 = this;
            r0 = 0
            r8.o(r0)
            androidx.recyclerview.widget.RecyclerView r7 = r7.a
            hw r0 = r7.K
            r1 = r0
            zb r1 = (defpackage.zb) r1
            if (r9 == 0) goto L1d
            r1.getClass()
            int r3 = r9.a
            int r5 = r10.a
            if (r3 != r5) goto L1f
            int r0 = r9.b
            int r2 = r10.b
            if (r0 == r2) goto L1d
            goto L1f
        L1d:
            r2 = r8
            goto L29
        L1f:
            int r4 = r9.b
            int r6 = r10.b
            r2 = r8
            boolean r8 = r1.g(r2, r3, r4, r5, r6)
            goto L38
        L29:
            r1.l(r2)
            android.view.View r8 = r2.a
            r9 = 0
            r8.setAlpha(r9)
            java.util.ArrayList r8 = r1.i
            r8.add(r2)
            r8 = 1
        L38:
            if (r8 == 0) goto L3d
            r7.P()
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cw.f(nu, dr, dr):void");
    }

    public void g(nu nuVar, dr drVar, dr drVar2) {
        int i;
        int i2;
        boolean z;
        RecyclerView recyclerView = this.a;
        recyclerView.b.j(nuVar);
        recyclerView.e(nuVar);
        nuVar.o(false);
        zb zbVar = (zb) recyclerView.K;
        zbVar.getClass();
        int i3 = drVar.a;
        int i4 = drVar.b;
        View view = nuVar.a;
        if (drVar2 == null) {
            i = view.getLeft();
        } else {
            i = drVar2.a;
        }
        int i5 = i;
        if (drVar2 == null) {
            i2 = view.getTop();
        } else {
            i2 = drVar2.b;
        }
        int i6 = i2;
        if (!nuVar.i() && (i3 != i5 || i4 != i6)) {
            view.layout(i5, i6, view.getWidth() + i5, view.getHeight() + i6);
            z = zbVar.g(nuVar, i3, i4, i5, i6);
        } else {
            zbVar.l(nuVar);
            zbVar.h.add(nuVar);
            z = true;
        }
        if (z) {
            recyclerView.P();
        }
    }

    public void h(int i) {
        RecyclerView recyclerView = this.a;
        View childAt = recyclerView.getChildAt(i);
        if (childAt != null) {
            RecyclerView.G(childAt);
            dw dwVar = recyclerView.l;
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i);
    }
}
