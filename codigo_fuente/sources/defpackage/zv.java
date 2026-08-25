package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: zv  reason: default package */
/* loaded from: classes.dex */
public final class zv implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ RecyclerView b;

    public /* synthetic */ zv(RecyclerView recyclerView, int i) {
        this.a = i;
        this.b = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        long j;
        int i = this.a;
        RecyclerView recyclerView = this.b;
        switch (i) {
            case 0:
                if (recyclerView.t && !recyclerView.isLayoutRequested()) {
                    if (!recyclerView.r) {
                        recyclerView.requestLayout();
                        return;
                    } else if (recyclerView.w) {
                        recyclerView.v = true;
                        return;
                    } else {
                        recyclerView.k();
                        return;
                    }
                }
                return;
            default:
                hw hwVar = recyclerView.K;
                if (hwVar != null) {
                    zb zbVar = (zb) hwVar;
                    long j2 = zbVar.d;
                    ArrayList arrayList = zbVar.h;
                    boolean isEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = zbVar.j;
                    boolean isEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = zbVar.k;
                    boolean isEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = zbVar.i;
                    boolean isEmpty4 = arrayList4.isEmpty();
                    if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            nu nuVar = (nu) obj;
                            View view = nuVar.a;
                            ArrayList arrayList5 = arrayList;
                            ViewPropertyAnimator animate = view.animate();
                            zbVar.q.add(nuVar);
                            animate.setDuration(j2).alpha(0.0f).setListener(new ub(zbVar, nuVar, animate, view)).start();
                            arrayList = arrayList5;
                            isEmpty = isEmpty;
                            isEmpty2 = isEmpty2;
                        }
                        boolean z2 = isEmpty;
                        boolean z3 = isEmpty2;
                        arrayList.clear();
                        if (!z3) {
                            ArrayList arrayList6 = new ArrayList();
                            arrayList6.addAll(arrayList2);
                            zbVar.m.add(arrayList6);
                            arrayList2.clear();
                            tb tbVar = new tb(zbVar, arrayList6, 0);
                            if (!z2) {
                                View view2 = ((yb) arrayList6.get(0)).a.a;
                                WeakHashMap weakHashMap = u70.a;
                                e70.n(view2, tbVar, j2);
                            } else {
                                tbVar.run();
                            }
                        }
                        if (!isEmpty3) {
                            ArrayList arrayList7 = new ArrayList();
                            arrayList7.addAll(arrayList3);
                            zbVar.n.add(arrayList7);
                            arrayList3.clear();
                            tb tbVar2 = new tb(zbVar, arrayList7, 1);
                            if (!z2) {
                                View view3 = ((xb) arrayList7.get(0)).a.a;
                                WeakHashMap weakHashMap2 = u70.a;
                                e70.n(view3, tbVar2, j2);
                            } else {
                                tbVar2.run();
                            }
                        }
                        if (!isEmpty4) {
                            ArrayList arrayList8 = new ArrayList();
                            arrayList8.addAll(arrayList4);
                            zbVar.l.add(arrayList8);
                            arrayList4.clear();
                            tb tbVar3 = new tb(zbVar, arrayList8, 2);
                            if (z2 && z3 && isEmpty3) {
                                tbVar3.run();
                            } else {
                                long j3 = 0;
                                if (z2) {
                                    j2 = 0;
                                }
                                if (!z3) {
                                    j = zbVar.e;
                                } else {
                                    j = 0;
                                }
                                if (!isEmpty3) {
                                    j3 = zbVar.f;
                                }
                                long max = Math.max(j, j3) + j2;
                                z = false;
                                View view4 = ((nu) arrayList8.get(0)).a;
                                WeakHashMap weakHashMap3 = u70.a;
                                e70.n(view4, tbVar3, max);
                                recyclerView.k0 = z;
                                return;
                            }
                        }
                    }
                }
                z = false;
                recyclerView.k0 = z;
                return;
        }
    }
}
