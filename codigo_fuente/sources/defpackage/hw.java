package defpackage;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
/* renamed from: hw  reason: default package */
/* loaded from: classes.dex */
public abstract class hw {
    public cw a;
    public ArrayList b;
    public long c;
    public long d;
    public long e;
    public long f;

    public static void b(nu nuVar) {
        RecyclerView recyclerView;
        int i = nuVar.j;
        if (!nuVar.g() && (i & 4) == 0 && (recyclerView = nuVar.r) != null) {
            recyclerView.D(nuVar);
        }
    }

    public abstract boolean a(nu nuVar, nu nuVar2, dr drVar, dr drVar2);

    public final void c(nu nuVar) {
        cw cwVar = this.a;
        if (cwVar != null) {
            RecyclerView recyclerView = cwVar.a;
            boolean z = true;
            nuVar.o(true);
            View view = nuVar.a;
            if (nuVar.h != null && nuVar.i == null) {
                nuVar.h = null;
            }
            nuVar.i = null;
            if ((nuVar.j & 16) == 0) {
                rw rwVar = recyclerView.b;
                recyclerView.Y();
                v5 v5Var = recyclerView.e;
                o9 o9Var = (o9) v5Var.c;
                cw cwVar2 = (cw) v5Var.b;
                int indexOfChild = cwVar2.a.indexOfChild(view);
                if (indexOfChild == -1) {
                    v5Var.F(view);
                } else if (o9Var.d(indexOfChild)) {
                    o9Var.f(indexOfChild);
                    v5Var.F(view);
                    cwVar2.h(indexOfChild);
                } else {
                    z = false;
                }
                if (z) {
                    nu G = RecyclerView.G(view);
                    rwVar.j(G);
                    rwVar.g(G);
                }
                recyclerView.Z(!z);
                if (!z && nuVar.k()) {
                    recyclerView.removeDetachedView(view, false);
                }
            }
        }
    }

    public abstract void d(nu nuVar);

    public abstract void e();

    public abstract boolean f();
}
