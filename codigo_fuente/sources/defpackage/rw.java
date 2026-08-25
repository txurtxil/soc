package defpackage;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: rw  reason: default package */
/* loaded from: classes.dex */
public final class rw {
    public final ArrayList a;
    public ArrayList b;
    public final ArrayList c;
    public final List d;
    public int e;
    public int f;
    public qw g;
    public final /* synthetic */ RecyclerView h;

    public rw(RecyclerView recyclerView) {
        this.h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        this.b = null;
        this.c = new ArrayList();
        this.d = Collections.unmodifiableList(arrayList);
        this.e = 2;
        this.f = 2;
    }

    public final void a(nu nuVar, boolean z) {
        w wVar;
        RecyclerView.h(nuVar);
        View view = nuVar.a;
        RecyclerView recyclerView = this.h;
        zw zwVar = recyclerView.l0;
        if (zwVar != null) {
            w j = zwVar.j();
            if (j instanceof yw) {
                wVar = (w) ((yw) j).e.remove(view);
            } else {
                wVar = null;
            }
            u70.h(view, wVar);
        }
        if (z && recyclerView.e0 != null) {
            recyclerView.f.I(nuVar);
        }
        nuVar.r = null;
        qw c = c();
        c.getClass();
        int i = nuVar.f;
        ArrayList arrayList = c.a(i).a;
        if (((pw) c.a.get(i)).b <= arrayList.size()) {
            return;
        }
        nuVar.n();
        arrayList.add(nuVar);
    }

    public final int b(int i) {
        RecyclerView recyclerView = this.h;
        vw vwVar = recyclerView.e0;
        if (i >= 0 && i < vwVar.b()) {
            if (!vwVar.f) {
                return i;
            }
            return recyclerView.d.g(i, 0);
        }
        int b = vwVar.b();
        String w = recyclerView.w();
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + b + w);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [qw, java.lang.Object] */
    public final qw c() {
        if (this.g == null) {
            ?? obj = new Object();
            obj.a = new SparseArray();
            obj.b = 0;
            this.g = obj;
        }
        return this.g;
    }

    public final void d() {
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            e(size);
        }
        arrayList.clear();
        int[] iArr = RecyclerView.u0;
        oh ohVar = this.h.d0;
        int[] iArr2 = ohVar.c;
        if (iArr2 != null) {
            Arrays.fill(iArr2, -1);
        }
        ohVar.d = 0;
    }

    public final void e(int i) {
        ArrayList arrayList = this.c;
        a((nu) arrayList.get(i), true);
        arrayList.remove(i);
    }

    public final void f(View view) {
        nu G = RecyclerView.G(view);
        boolean k = G.k();
        RecyclerView recyclerView = this.h;
        if (k) {
            recyclerView.removeDetachedView(view, false);
        }
        if (G.j()) {
            G.n.j(G);
        } else if (G.q()) {
            G.j &= -33;
        }
        g(G);
        if (recyclerView.K != null && !G.h()) {
            recyclerView.K.d(G);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x008d, code lost:
        r6 = r6 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(defpackage.nu r12) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rw.g(nu):void");
    }

    public final void h(View view) {
        hw hwVar;
        nu G = RecyclerView.G(view);
        int i = G.j & 12;
        RecyclerView recyclerView = this.h;
        if (i == 0 && G.l() && (hwVar = recyclerView.K) != null) {
            zb zbVar = (zb) hwVar;
            if (G.d().isEmpty() && zbVar.g && !G.g()) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                G.n = this;
                G.o = true;
                this.b.add(G);
                return;
            }
        }
        if (G.g() && !G.i() && !recyclerView.l.b) {
            c2.n("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.".concat(recyclerView.w()));
            return;
        }
        G.n = this;
        G.o = false;
        this.a.add(G);
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x01e6, code lost:
        if (r13 != r10.f) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0588 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008e  */
    /* JADX WARN: Type inference failed for: r6v31, types: [java.lang.Object, dr] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.nu i(int r28, long r29) {
        /*
            Method dump skipped, instructions count: 1456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rw.i(int, long):nu");
    }

    public final void j(nu nuVar) {
        if (nuVar.o) {
            this.b.remove(nuVar);
        } else {
            this.a.remove(nuVar);
        }
        nuVar.n = null;
        nuVar.o = false;
        nuVar.j &= -33;
    }

    public final void k() {
        int i;
        lw lwVar = this.h.m;
        if (lwVar != null) {
            i = lwVar.i;
        } else {
            i = 0;
        }
        this.f = this.e + i;
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
            e(size);
        }
    }
}
