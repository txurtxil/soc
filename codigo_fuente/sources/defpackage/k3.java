package defpackage;

import android.view.ViewGroup;
import java.util.WeakHashMap;
/* renamed from: k3  reason: default package */
/* loaded from: classes.dex */
public final class k3 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ w3 b;

    public /* synthetic */ k3(w3 w3Var, int i) {
        this.a = i;
        this.b = w3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        int i = this.a;
        w3 w3Var = this.b;
        switch (i) {
            case 0:
                if ((w3Var.Z & 1) != 0) {
                    w3Var.x(0);
                }
                if ((w3Var.Z & 4096) != 0) {
                    w3Var.x(108);
                }
                w3Var.Y = false;
                w3Var.Z = 0;
                return;
            default:
                w3Var.w.showAtLocation(w3Var.v, 55, 0, 0);
                h80 h80Var = w3Var.y;
                if (h80Var != null) {
                    h80Var.b();
                }
                if (w3Var.z && (viewGroup = w3Var.A) != null) {
                    WeakHashMap weakHashMap = u70.a;
                    if (g70.c(viewGroup)) {
                        w3Var.v.setAlpha(0.0f);
                        h80 a = u70.a(w3Var.v);
                        a.a(1.0f);
                        w3Var.y = a;
                        a.d(new m3(0, this));
                        return;
                    }
                }
                w3Var.v.setAlpha(1.0f);
                w3Var.v.setVisibility(0);
                return;
        }
    }
}
