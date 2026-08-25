package defpackage;

import android.view.WindowInsets;
/* renamed from: a90  reason: default package */
/* loaded from: classes.dex */
public class a90 extends z80 {
    public lj k;

    public a90(f90 f90Var, WindowInsets windowInsets) {
        super(f90Var, windowInsets);
        this.k = null;
    }

    @Override // defpackage.e90
    public f90 b() {
        return f90.e(this.c.consumeStableInsets(), null);
    }

    @Override // defpackage.e90
    public f90 c() {
        return f90.e(this.c.consumeSystemWindowInsets(), null);
    }

    @Override // defpackage.e90
    public final lj f() {
        if (this.k == null) {
            WindowInsets windowInsets = this.c;
            this.k = lj.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.k;
    }

    @Override // defpackage.e90
    public boolean i() {
        return this.c.isConsumed();
    }

    @Override // defpackage.e90
    public void m(lj ljVar) {
        this.k = ljVar;
    }
}
