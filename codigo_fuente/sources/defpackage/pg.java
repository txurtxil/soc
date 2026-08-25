package defpackage;

import androidx.lifecycle.a;
/* renamed from: pg  reason: default package */
/* loaded from: classes.dex */
public final class pg implements xh, vz, c80 {
    public final b80 a;
    public a b = null;
    public qg c = null;

    public pg(b80 b80Var) {
        this.a = b80Var;
    }

    @Override // defpackage.vz
    public final f3 a() {
        d();
        return (f3) this.c.c;
    }

    public final void b(lk lkVar) {
        this.b.e(lkVar);
    }

    public final void d() {
        if (this.b == null) {
            this.b = new a(this);
            this.c = new qg(this);
        }
    }

    @Override // defpackage.c80
    public final b80 e() {
        d();
        return this.a;
    }

    @Override // defpackage.sk
    public final a f() {
        d();
        return this.b;
    }
}
