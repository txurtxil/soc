package defpackage;

import android.database.Observable;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: ew  reason: default package */
/* loaded from: classes.dex */
public final class ew extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((tw) ((Observable) this).mObservers.get(size)).a;
            recyclerView.g(null);
            recyclerView.e0.e = true;
            recyclerView.R(true);
            if (!recyclerView.d.j()) {
                recyclerView.requestLayout();
            }
        }
    }

    public final void c(int i, int i2, Preference preference) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            tw twVar = (tw) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = twVar.a;
            recyclerView.g(null);
            z1 z1Var = recyclerView.d;
            ArrayList arrayList = (ArrayList) z1Var.c;
            if (i2 >= 1) {
                arrayList.add(z1Var.l(preference, 4, i, i2));
                z1Var.a = 4 | z1Var.a;
                if (arrayList.size() == 1) {
                    int[] iArr = RecyclerView.u0;
                    RecyclerView recyclerView2 = twVar.a;
                    if (recyclerView2.s && recyclerView2.r) {
                        zv zvVar = recyclerView2.h;
                        WeakHashMap weakHashMap = u70.a;
                        e70.m(recyclerView2, zvVar);
                    } else {
                        recyclerView2.z = true;
                        recyclerView2.requestLayout();
                    }
                }
            }
        }
    }
}
