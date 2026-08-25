package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
/* renamed from: qh  reason: default package */
/* loaded from: classes.dex */
public final class qh implements Runnable {
    public static final ThreadLocal e = new ThreadLocal();
    public static final o6 f = new o6(1);
    public ArrayList a;
    public long b;
    public long c;
    public ArrayList d;

    public static nu c(RecyclerView recyclerView, int i, long j) {
        int y = recyclerView.e.y();
        for (int i2 = 0; i2 < y; i2++) {
            nu G = RecyclerView.G(recyclerView.e.x(i2));
            if (G.c == i && !G.g()) {
                return null;
            }
        }
        rw rwVar = recyclerView.b;
        try {
            recyclerView.M();
            nu i3 = rwVar.i(i, j);
            if (i3 != null) {
                if (i3.f() && !i3.g()) {
                    rwVar.f(i3.a);
                } else {
                    rwVar.a(i3, false);
                }
            }
            recyclerView.N(false);
            return i3;
        } catch (Throwable th) {
            recyclerView.N(false);
            throw th;
        }
    }

    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.r && this.b == 0) {
            this.b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        oh ohVar = recyclerView.d0;
        ohVar.a = i;
        ohVar.b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(long j) {
        ph phVar;
        RecyclerView recyclerView;
        long j2;
        RecyclerView recyclerView2;
        ph phVar2;
        boolean z;
        ArrayList arrayList = this.d;
        ArrayList arrayList2 = this.a;
        int size = arrayList2.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList2.get(i2);
            int windowVisibility = recyclerView3.getWindowVisibility();
            oh ohVar = recyclerView3.d0;
            if (windowVisibility == 0) {
                ohVar.b(recyclerView3, false);
                i += ohVar.d;
            }
        }
        arrayList.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList2.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                oh ohVar2 = recyclerView4.d0;
                int abs = Math.abs(ohVar2.b) + Math.abs(ohVar2.a);
                for (int i5 = 0; i5 < ohVar2.d * 2; i5 += 2) {
                    if (i3 >= arrayList.size()) {
                        Object obj = new Object();
                        arrayList.add(obj);
                        phVar2 = obj;
                    } else {
                        phVar2 = (ph) arrayList.get(i3);
                    }
                    int[] iArr = ohVar2.c;
                    int i6 = iArr[i5 + 1];
                    if (i6 <= abs) {
                        z = true;
                    } else {
                        z = false;
                    }
                    phVar2.a = z;
                    phVar2.b = abs;
                    phVar2.c = i6;
                    phVar2.d = recyclerView4;
                    phVar2.e = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(arrayList, f);
        for (int i7 = 0; i7 < arrayList.size() && (recyclerView = (phVar = (ph) arrayList.get(i7)).d) != null; i7++) {
            if (phVar.a) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j;
            }
            nu c = c(recyclerView, phVar.e, j2);
            if (c != null && c.b != null && c.f() && !c.g() && (recyclerView2 = (RecyclerView) c.b.get()) != null) {
                if (recyclerView2.B && recyclerView2.e.y() != 0) {
                    rw rwVar = recyclerView2.b;
                    hw hwVar = recyclerView2.K;
                    if (hwVar != null) {
                        hwVar.e();
                    }
                    lw lwVar = recyclerView2.m;
                    if (lwVar != null) {
                        lwVar.b0(rwVar);
                        recyclerView2.m.c0(rwVar);
                    }
                    rwVar.a.clear();
                    rwVar.d();
                }
                oh ohVar3 = recyclerView2.d0;
                ohVar3.b(recyclerView2, true);
                if (ohVar3.d != 0) {
                    try {
                        int i8 = n50.a;
                        m50.a("RV Nested Prefetch");
                        vw vwVar = recyclerView2.e0;
                        dw dwVar = recyclerView2.l;
                        vwVar.c = 1;
                        vwVar.d = ((ju) dwVar).e.size();
                        vwVar.f = false;
                        vwVar.g = false;
                        vwVar.h = false;
                        for (int i9 = 0; i9 < ohVar3.d * 2; i9 += 2) {
                            c(recyclerView2, ohVar3.c[i9], j);
                        }
                        m50.b();
                        phVar.a = false;
                        phVar.b = 0;
                        phVar.c = 0;
                        phVar.d = null;
                        phVar.e = 0;
                    } catch (Throwable th) {
                        int i10 = n50.a;
                        m50.b();
                        throw th;
                    }
                }
            }
            phVar.a = false;
            phVar.b = 0;
            phVar.c = 0;
            phVar.d = null;
            phVar.e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.a;
        try {
            int i = n50.a;
            m50.a("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(j) + this.c);
                }
            }
            this.b = 0L;
            m50.b();
        } catch (Throwable th) {
            this.b = 0L;
            int i3 = n50.a;
            m50.b();
            throw th;
        }
    }
}
