package defpackage;

import android.os.Build;
import android.view.View;
/* renamed from: e90  reason: default package */
/* loaded from: classes.dex */
public class e90 {
    public static final f90 b;
    public final f90 a;

    static {
        y80 v80Var;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            v80Var = new x80();
        } else if (i >= 29) {
            v80Var = new w80();
        } else {
            v80Var = new v80();
        }
        b = v80Var.b().a.a().a.b().a.c();
    }

    public e90(f90 f90Var) {
        this.a = f90Var;
    }

    public f90 a() {
        return this.a;
    }

    public f90 b() {
        return this.a;
    }

    public f90 c() {
        return this.a;
    }

    public rc e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e90)) {
            return false;
        }
        e90 e90Var = (e90) obj;
        if (j() == e90Var.j() && i() == e90Var.i() && vr.a(g(), e90Var.g()) && vr.a(f(), e90Var.f()) && vr.a(e(), e90Var.e())) {
            return true;
        }
        return false;
    }

    public lj f() {
        return lj.e;
    }

    public lj g() {
        return lj.e;
    }

    public f90 h(int i, int i2, int i3, int i4) {
        return b;
    }

    public int hashCode() {
        return vr.b(Boolean.valueOf(j()), Boolean.valueOf(i()), g(), f(), e());
    }

    public boolean i() {
        return false;
    }

    public boolean j() {
        return false;
    }

    public void d(View view) {
    }

    public void k(lj[] ljVarArr) {
    }

    public void l(f90 f90Var) {
    }

    public void m(lj ljVar) {
    }
}
