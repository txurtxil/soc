package androidx.car.app;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ i b;

    public /* synthetic */ a(i iVar, int i) {
        this.a = i;
        this.b = iVar;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        i iVar = this.b;
        switch (i) {
            case 0:
                return AppManager$1.g(iVar);
            case 1:
                return AppManager$1.h(iVar);
            default:
                return AppManager$1.i(iVar);
        }
    }
}
