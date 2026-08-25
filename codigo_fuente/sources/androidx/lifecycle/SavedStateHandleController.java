package androidx.lifecycle;
/* loaded from: classes.dex */
public final class SavedStateHandleController implements qk {
    public boolean a;

    @Override // defpackage.qk
    public final void g(sk skVar, lk lkVar) {
        if (lkVar == lk.ON_DESTROY) {
            this.a = false;
            skVar.f().b(this);
        }
    }
}
