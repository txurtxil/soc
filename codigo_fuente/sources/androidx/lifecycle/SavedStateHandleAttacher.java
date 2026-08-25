package androidx.lifecycle;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements qk {
    public final qz a;

    public SavedStateHandleAttacher(qz qzVar) {
        this.a = qzVar;
    }

    @Override // defpackage.qk
    public final void g(sk skVar, lk lkVar) {
        if (lkVar == lk.ON_CREATE) {
            skVar.f().b(this);
            qz qzVar = this.a;
            if (!qzVar.b) {
                Bundle c = qzVar.a.c("androidx.lifecycle.internal.SavedStateHandlesProvider");
                Bundle bundle = new Bundle();
                Bundle bundle2 = qzVar.c;
                if (bundle2 != null) {
                    bundle.putAll(bundle2);
                }
                if (c != null) {
                    bundle.putAll(c);
                }
                qzVar.c = bundle;
                qzVar.b = true;
                rz rzVar = (rz) qzVar.d.a();
                return;
            }
            return;
        }
        throw new IllegalStateException(("Next event must be ON_CREATE, it was " + lkVar).toString());
    }
}
