package defpackage;

import android.os.Bundle;
import androidx.lifecycle.a;
import androidx.savedstate.Recreator;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: qg  reason: default package */
/* loaded from: classes.dex */
public final class qg {
    public boolean a;
    public final Object b;
    public final Object c;

    public qg(ja jaVar, y6 y6Var) {
        this.b = new Object();
        this.c = new ArrayList();
    }

    public void a() {
        vz vzVar = (vz) this.b;
        a f = vzVar.f();
        if (f.c == mk.b) {
            f.a(new Recreator(vzVar));
            final f3 f3Var = (f3) this.c;
            f3Var.getClass();
            if (!f3Var.c) {
                f.a(new qk() { // from class: sz
                    @Override // defpackage.qk
                    public final void g(sk skVar, lk lkVar) {
                        f3 f3Var2 = f3.this;
                        f3Var2.getClass();
                        if (lkVar == lk.ON_START) {
                            f3Var2.e = true;
                        } else if (lkVar == lk.ON_STOP) {
                            f3Var2.e = false;
                        }
                    }
                });
                f3Var.c = true;
                this.a = true;
                return;
            }
            c2.g("SavedStateRegistry was already attached.");
            return;
        }
        c2.g("Restarter must be created only during owner's initialization stage");
    }

    public void b(Bundle bundle) {
        Bundle bundle2;
        if (!this.a) {
            a();
        }
        a f = ((vz) this.b).f();
        if (f.c.compareTo(mk.d) < 0) {
            f3 f3Var = (f3) this.c;
            if (f3Var.c) {
                if (!f3Var.d) {
                    if (bundle != null) {
                        bundle2 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                    } else {
                        bundle2 = null;
                    }
                    f3Var.a = bundle2;
                    f3Var.d = true;
                    return;
                }
                c2.g("SavedStateRegistry was already restored.");
                return;
            }
            c2.g("You must call performAttach() before calling performRestore(Bundle).");
            return;
        }
        mk mkVar = f.c;
        throw new IllegalStateException(("performRestore cannot be called when owner is " + mkVar).toString());
    }

    public void c(Bundle bundle) {
        bundle.getClass();
        f3 f3Var = (f3) this.c;
        f3Var.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = (Bundle) f3Var.a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        pz pzVar = (pz) f3Var.f;
        pzVar.getClass();
        nz nzVar = new nz(pzVar);
        pzVar.c.put(nzVar, Boolean.FALSE);
        while (nzVar.hasNext()) {
            Map.Entry entry = (Map.Entry) nzVar.next();
            bundle2.putBundle((String) entry.getKey(), ((uz) entry.getValue()).a());
        }
        if (!bundle2.isEmpty()) {
            bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
        }
    }

    public qg(vz vzVar) {
        this.b = vzVar;
        this.c = new f3();
    }
}
