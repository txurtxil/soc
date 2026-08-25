package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
/* renamed from: tb  reason: default package */
/* loaded from: classes.dex */
public final class tb implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ zb c;

    public /* synthetic */ tb(zb zbVar, ArrayList arrayList, int i) {
        this.a = i;
        this.c = zbVar;
        this.b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view;
        char c;
        int i = this.a;
        int i2 = 0;
        ArrayList arrayList = this.b;
        switch (i) {
            case 0:
                int size = arrayList.size();
                while (true) {
                    zb zbVar = this.c;
                    if (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        yb ybVar = (yb) obj;
                        nu nuVar = ybVar.a;
                        int i3 = ybVar.b;
                        int i4 = ybVar.c;
                        int i5 = ybVar.d;
                        int i6 = ybVar.e;
                        zbVar.getClass();
                        View view2 = nuVar.a;
                        int i7 = i5 - i3;
                        int i8 = i6 - i4;
                        if (i7 != 0) {
                            view2.animate().translationX(0.0f);
                        }
                        if (i8 != 0) {
                            view2.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator animate = view2.animate();
                        zbVar.p.add(nuVar);
                        animate.setDuration(zbVar.e).setListener(new vb(zbVar, nuVar, i7, view2, i8, animate)).start();
                    } else {
                        arrayList.clear();
                        zbVar.m.remove(arrayList);
                        return;
                    }
                }
            case 1:
                int size2 = arrayList.size();
                while (true) {
                    zb zbVar2 = this.c;
                    if (i2 < size2) {
                        Object obj2 = arrayList.get(i2);
                        i2++;
                        xb xbVar = (xb) obj2;
                        ArrayList arrayList2 = zbVar2.r;
                        long j = zbVar2.f;
                        nu nuVar2 = xbVar.a;
                        View view3 = null;
                        if (nuVar2 == null) {
                            view = null;
                        } else {
                            view = nuVar2.a;
                        }
                        nu nuVar3 = xbVar.b;
                        if (nuVar3 != null) {
                            view3 = nuVar3.a;
                        }
                        View view4 = view3;
                        if (view != null) {
                            ViewPropertyAnimator duration = view.animate().setDuration(j);
                            arrayList2.add(xbVar.a);
                            duration.translationX(xbVar.e - xbVar.c);
                            duration.translationY(xbVar.f - xbVar.d);
                            duration.alpha(0.0f).setListener(new wb(zbVar2, xbVar, duration, view, 0)).start();
                        }
                        if (view4 != null) {
                            ViewPropertyAnimator animate2 = view4.animate();
                            arrayList2.add(xbVar.b);
                            c = 0;
                            animate2.translationX(0.0f).translationY(0.0f).setDuration(j).alpha(1.0f).setListener(new wb(zbVar2, xbVar, animate2, view4, 1)).start();
                        } else {
                            c = 0;
                        }
                    } else {
                        arrayList.clear();
                        zbVar2.n.remove(arrayList);
                        return;
                    }
                }
            default:
                int size3 = arrayList.size();
                while (true) {
                    zb zbVar3 = this.c;
                    if (i2 < size3) {
                        Object obj3 = arrayList.get(i2);
                        i2++;
                        nu nuVar4 = (nu) obj3;
                        zbVar3.getClass();
                        View view5 = nuVar4.a;
                        ViewPropertyAnimator animate3 = view5.animate();
                        zbVar3.o.add(nuVar4);
                        animate3.alpha(1.0f).setDuration(zbVar3.c).setListener(new ub(zbVar3, nuVar4, view5, animate3)).start();
                    } else {
                        arrayList.clear();
                        zbVar3.l.remove(arrayList);
                        return;
                    }
                }
        }
    }
}
