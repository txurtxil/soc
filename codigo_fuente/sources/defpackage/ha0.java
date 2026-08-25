package defpackage;

import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
/* renamed from: ha0  reason: default package */
/* loaded from: classes.dex */
public final class ha0 implements Runnable {
    public final /* synthetic */ ArrayList a;
    public final /* synthetic */ na0 b;

    public ha0(na0 na0Var, ArrayList arrayList) {
        this.b = na0Var;
        this.a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            na0 na0Var = this.b;
            if (i >= size) {
                arrayList.clear();
                na0Var.mAdditionsList.remove(arrayList);
                return;
            }
            Object obj = arrayList.get(i);
            i++;
            na0Var.animateAddImpl((RecyclerView.u) obj);
        }
    }
}
