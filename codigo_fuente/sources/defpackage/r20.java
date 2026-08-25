package defpackage;
/* renamed from: r20  reason: default package */
/* loaded from: classes.dex */
public final class r20 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ s20 b;
    public final /* synthetic */ gc c;

    public /* synthetic */ r20(gc gcVar, s20 s20Var, int i) {
        this.a = i;
        this.c = gcVar;
        this.b = s20Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        s20 s20Var = this.b;
        gc gcVar = this.c;
        switch (i) {
            case 0:
                if (gcVar.b.contains(s20Var)) {
                    t20.a(s20Var.c.F, s20Var.a);
                    return;
                }
                return;
            default:
                gcVar.b.remove(s20Var);
                gcVar.c.remove(s20Var);
                return;
        }
    }
}
