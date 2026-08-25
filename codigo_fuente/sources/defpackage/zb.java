package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;
/* renamed from: zb  reason: default package */
/* loaded from: classes.dex */
public final class zb extends hw {
    public static TimeInterpolator s;
    public boolean g;
    public ArrayList h;
    public ArrayList i;
    public ArrayList j;
    public ArrayList k;
    public ArrayList l;
    public ArrayList m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((nu) arrayList.get(size)).a.animate().cancel();
        }
    }

    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.Object, xb] */
    @Override // defpackage.hw
    public final boolean a(nu nuVar, nu nuVar2, dr drVar, dr drVar2) {
        int i;
        int i2;
        int i3 = drVar.a;
        int i4 = drVar.b;
        if (nuVar2.p()) {
            int i5 = drVar.a;
            i2 = drVar.b;
            i = i5;
        } else {
            i = drVar2.a;
            i2 = drVar2.b;
        }
        if (nuVar == nuVar2) {
            return g(nuVar, i3, i4, i, i2);
        }
        View view = nuVar.a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(nuVar);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        View view2 = nuVar2.a;
        l(nuVar2);
        view2.setTranslationX(-((int) ((i - i3) - translationX)));
        view2.setTranslationY(-((int) ((i2 - i4) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.k;
        ?? obj = new Object();
        obj.a = nuVar;
        obj.b = nuVar2;
        obj.c = i3;
        obj.d = i4;
        obj.e = i;
        obj.f = i2;
        arrayList.add(obj);
        return true;
    }

    @Override // defpackage.hw
    public final void d(nu nuVar) {
        ArrayList arrayList = this.l;
        ArrayList arrayList2 = this.m;
        ArrayList arrayList3 = this.n;
        View view = nuVar.a;
        view.animate().cancel();
        ArrayList arrayList4 = this.j;
        int size = arrayList4.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (((yb) arrayList4.get(size)).a == nuVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(nuVar);
                arrayList4.remove(size);
            }
        }
        j(this.k, nuVar);
        if (this.h.remove(nuVar)) {
            view.setAlpha(1.0f);
            c(nuVar);
        }
        if (this.i.remove(nuVar)) {
            view.setAlpha(1.0f);
            c(nuVar);
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList5 = (ArrayList) arrayList3.get(size2);
            j(arrayList5, nuVar);
            if (arrayList5.isEmpty()) {
                arrayList3.remove(size2);
            }
        }
        for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList6 = (ArrayList) arrayList2.get(size3);
            int size4 = arrayList6.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (((yb) arrayList6.get(size4)).a == nuVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(nuVar);
                    arrayList6.remove(size4);
                    if (arrayList6.isEmpty()) {
                        arrayList2.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = arrayList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList.get(size5);
            if (arrayList7.remove(nuVar)) {
                view.setAlpha(1.0f);
                c(nuVar);
                if (arrayList7.isEmpty()) {
                    arrayList.remove(size5);
                }
            }
        }
        this.q.remove(nuVar);
        this.o.remove(nuVar);
        this.r.remove(nuVar);
        this.p.remove(nuVar);
        i();
    }

    @Override // defpackage.hw
    public final void e() {
        ArrayList arrayList = this.k;
        ArrayList arrayList2 = this.n;
        ArrayList arrayList3 = this.l;
        ArrayList arrayList4 = this.m;
        ArrayList arrayList5 = this.i;
        ArrayList arrayList6 = this.h;
        ArrayList arrayList7 = this.j;
        int size = arrayList7.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            yb ybVar = (yb) arrayList7.get(size);
            View view = ybVar.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(ybVar.a);
            arrayList7.remove(size);
        }
        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
            c((nu) arrayList6.get(size2));
            arrayList6.remove(size2);
        }
        int size3 = arrayList5.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            nu nuVar = (nu) arrayList5.get(size3);
            nuVar.a.setAlpha(1.0f);
            c(nuVar);
            arrayList5.remove(size3);
        }
        for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
            xb xbVar = (xb) arrayList.get(size4);
            nu nuVar2 = xbVar.a;
            if (nuVar2 != null) {
                k(xbVar, nuVar2);
            }
            nu nuVar3 = xbVar.b;
            if (nuVar3 != null) {
                k(xbVar, nuVar3);
            }
        }
        arrayList.clear();
        if (!f()) {
            return;
        }
        for (int size5 = arrayList4.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList8 = (ArrayList) arrayList4.get(size5);
            for (int size6 = arrayList8.size() - 1; size6 >= 0; size6--) {
                yb ybVar2 = (yb) arrayList8.get(size6);
                View view2 = ybVar2.a.a;
                view2.setTranslationY(0.0f);
                view2.setTranslationX(0.0f);
                c(ybVar2.a);
                arrayList8.remove(size6);
                if (arrayList8.isEmpty()) {
                    arrayList4.remove(arrayList8);
                }
            }
        }
        for (int size7 = arrayList3.size() - 1; size7 >= 0; size7--) {
            ArrayList arrayList9 = (ArrayList) arrayList3.get(size7);
            for (int size8 = arrayList9.size() - 1; size8 >= 0; size8--) {
                nu nuVar4 = (nu) arrayList9.get(size8);
                nuVar4.a.setAlpha(1.0f);
                c(nuVar4);
                arrayList9.remove(size8);
                if (arrayList9.isEmpty()) {
                    arrayList3.remove(arrayList9);
                }
            }
        }
        for (int size9 = arrayList2.size() - 1; size9 >= 0; size9--) {
            ArrayList arrayList10 = (ArrayList) arrayList2.get(size9);
            for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                xb xbVar2 = (xb) arrayList10.get(size10);
                nu nuVar5 = xbVar2.a;
                if (nuVar5 != null) {
                    k(xbVar2, nuVar5);
                }
                nu nuVar6 = xbVar2.b;
                if (nuVar6 != null) {
                    k(xbVar2, nuVar6);
                }
                if (arrayList10.isEmpty()) {
                    arrayList2.remove(arrayList10);
                }
            }
        }
        h(this.q);
        h(this.p);
        h(this.o);
        h(this.r);
        ArrayList arrayList11 = this.b;
        if (arrayList11.size() <= 0) {
            arrayList11.clear();
            return;
        }
        arrayList11.get(0).getClass();
        c2.l();
    }

    @Override // defpackage.hw
    public final boolean f() {
        if (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [yb, java.lang.Object] */
    public final boolean g(nu nuVar, int i, int i2, int i3, int i4) {
        View view = nuVar.a;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) nuVar.a.getTranslationY());
        l(nuVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            c(nuVar);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.j;
        ?? obj = new Object();
        obj.a = nuVar;
        obj.b = translationX;
        obj.c = translationY;
        obj.d = i3;
        obj.e = i4;
        arrayList.add(obj);
        return true;
    }

    public final void i() {
        if (!f()) {
            ArrayList arrayList = this.b;
            if (arrayList.size() <= 0) {
                arrayList.clear();
                return;
            }
            arrayList.get(0).getClass();
            c2.l();
        }
    }

    public final void j(ArrayList arrayList, nu nuVar) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            xb xbVar = (xb) arrayList.get(size);
            if (k(xbVar, nuVar) && xbVar.a == null && xbVar.b == null) {
                arrayList.remove(xbVar);
            }
        }
    }

    public final boolean k(xb xbVar, nu nuVar) {
        if (xbVar.b == nuVar) {
            xbVar.b = null;
        } else if (xbVar.a == nuVar) {
            xbVar.a = null;
        } else {
            return false;
        }
        View view = nuVar.a;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        c(nuVar);
        return true;
    }

    public final void l(nu nuVar) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        nuVar.a.animate().setInterpolator(s);
        d(nuVar);
    }
}
