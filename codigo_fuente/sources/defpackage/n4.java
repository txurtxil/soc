package defpackage;
/* renamed from: n4  reason: default package */
/* loaded from: classes.dex */
public final class n4 extends rf {
    public final /* synthetic */ w4 j;
    public final /* synthetic */ z4 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n4(z4 z4Var, z4 z4Var2, w4 w4Var) {
        super(z4Var2);
        this.k = z4Var;
        this.j = w4Var;
    }

    @Override // defpackage.rf
    public final g20 b() {
        return this.j;
    }

    @Override // defpackage.rf
    public final boolean c() {
        z4 z4Var = this.k;
        if (!z4Var.getInternalPopup().b()) {
            z4Var.f.n(q4.b(z4Var), q4.a(z4Var));
            return true;
        }
        return true;
    }
}
