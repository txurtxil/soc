package androidx.car.app;
/* loaded from: classes.dex */
public abstract class l implements sk {
    public final androidx.lifecycle.a a;
    public final androidx.lifecycle.a b;
    public final i c;

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.car.app.j] */
    public l() {
        ac acVar = new ac() { // from class: androidx.car.app.Session$LifecycleObserverImpl
            @Override // defpackage.ac
            public final void a(sk skVar) {
                l.this.b.e(lk.ON_PAUSE);
            }

            @Override // defpackage.ac
            public final void b(sk skVar) {
                l.this.b.e(lk.ON_STOP);
            }

            @Override // defpackage.ac
            public final void c(sk skVar) {
                l.this.b.e(lk.ON_START);
            }

            @Override // defpackage.ac
            public final void d(sk skVar) {
                l.this.b.e(lk.ON_DESTROY);
                skVar.f().b(this);
            }

            @Override // defpackage.ac
            public final void e(sk skVar) {
                l.this.b.e(lk.ON_RESUME);
            }

            @Override // defpackage.ac
            public final void f(sk skVar) {
                l.this.b.e(lk.ON_CREATE);
            }
        };
        androidx.lifecycle.a aVar = new androidx.lifecycle.a(this);
        this.a = aVar;
        this.b = new androidx.lifecycle.a(this);
        aVar.a(acVar);
        this.c = new i(aVar, new Object());
    }

    public final void b(lk lkVar) {
        this.a.e(lkVar);
    }

    @Override // defpackage.sk
    public final androidx.lifecycle.a f() {
        return this.b;
    }
}
