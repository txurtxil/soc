package defpackage;

import java.util.ArrayList;
/* renamed from: ga0  reason: default package */
/* loaded from: classes.dex */
public final class ga0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ na0 c;

    public /* synthetic */ ga0(na0 na0Var, ArrayList arrayList, int i) {
        this.a = i;
        this.c = na0Var;
        this.b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        int i2 = 0;
        ArrayList arrayList = this.b;
        switch (i) {
            case 0:
                int size = arrayList.size();
                while (true) {
                    na0 na0Var = this.c;
                    if (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        ma0 ma0Var = (ma0) obj;
                        na0Var.animateMoveImpl(ma0Var.a, ma0Var.b, ma0Var.c, ma0Var.d, ma0Var.e);
                    } else {
                        arrayList.clear();
                        na0Var.mMovesList.remove(arrayList);
                        return;
                    }
                }
            default:
                int size2 = arrayList.size();
                while (true) {
                    na0 na0Var2 = this.c;
                    if (i2 < size2) {
                        Object obj2 = arrayList.get(i2);
                        i2++;
                        na0Var2.animateChangeImpl((la0) obj2);
                    } else {
                        arrayList.clear();
                        na0Var2.mChangesList.remove(arrayList);
                        return;
                    }
                }
        }
    }
}
