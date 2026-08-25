package androidx.lifecycle;
/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements qk {
    public final ac a;
    public final qk b;

    public DefaultLifecycleObserverAdapter(ac acVar, qk qkVar) {
        this.a = acVar;
        this.b = qkVar;
    }

    @Override // defpackage.qk
    public final void g(sk skVar, lk lkVar) {
        int i = bc.a[lkVar.ordinal()];
        ac acVar = this.a;
        switch (i) {
            case 1:
                acVar.f(skVar);
                break;
            case 2:
                acVar.c(skVar);
                break;
            case 3:
                acVar.e(skVar);
                break;
            case 4:
                acVar.a(skVar);
                break;
            case 5:
                acVar.b(skVar);
                break;
            case 6:
                acVar.d(skVar);
                break;
            case 7:
                c2.n("ON_ANY must not been send by anybody");
                return;
        }
        qk qkVar = this.b;
        if (qkVar != null) {
            qkVar.g(skVar, lkVar);
        }
    }
}
