package defpackage;
/* renamed from: ez  reason: default package */
/* loaded from: classes.dex */
public final class ez extends k60 {
    @Override // defpackage.k60
    public final void s(j10 j10Var, float f, float f2) {
        j10Var.d(f2 * f, 180.0f, 90.0f);
        float f3 = f2 * 2.0f * f;
        f10 f10Var = new f10(0.0f, 0.0f, f3, f3);
        f10Var.f = 180.0f;
        f10Var.g = 90.0f;
        j10Var.f.add(f10Var);
        d10 d10Var = new d10(f10Var);
        j10Var.a(180.0f);
        j10Var.g.add(d10Var);
        j10Var.d = 270.0f;
        float f4 = (0.0f + f3) * 0.5f;
        float f5 = (f3 - 0.0f) / 2.0f;
        j10Var.b = (((float) Math.cos(Math.toRadians(270.0d))) * f5) + f4;
        j10Var.c = (f5 * ((float) Math.sin(Math.toRadians(270.0d)))) + f4;
    }
}
