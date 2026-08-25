package defpackage;

import android.view.WindowInsets;
/* renamed from: w80  reason: default package */
/* loaded from: classes.dex */
public class w80 extends y80 {
    public final WindowInsets.Builder a;

    public w80(f90 f90Var) {
        super(f90Var);
        WindowInsets.Builder f;
        WindowInsets d = f90Var.d();
        if (d != null) {
            f = b0.g(d);
        } else {
            f = b0.f();
        }
        this.a = f;
    }

    @Override // defpackage.y80
    public f90 b() {
        WindowInsets build;
        a();
        build = this.a.build();
        f90 e = f90.e(build, null);
        e.a.k(null);
        return e;
    }

    @Override // defpackage.y80
    public void c(lj ljVar) {
        this.a.setStableInsets(ljVar.b());
    }

    @Override // defpackage.y80
    public void d(lj ljVar) {
        this.a.setSystemWindowInsets(ljVar.b());
    }

    public w80() {
        this.a = b0.f();
    }
}
