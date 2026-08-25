package androidx.car.app.utils;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ RemoteUtils$SurfaceCallbackStub b;
    public final /* synthetic */ x7 c;

    public /* synthetic */ a(RemoteUtils$SurfaceCallbackStub remoteUtils$SurfaceCallbackStub, x7 x7Var, int i) {
        this.a = i;
        this.b = remoteUtils$SurfaceCallbackStub;
        this.c = x7Var;
    }

    @Override // defpackage.hx
    public final Object b() {
        Object lambda$onSurfaceDestroyed$3;
        Object lambda$onSurfaceAvailable$0;
        int i = this.a;
        x7 x7Var = this.c;
        RemoteUtils$SurfaceCallbackStub remoteUtils$SurfaceCallbackStub = this.b;
        switch (i) {
            case 0:
                lambda$onSurfaceDestroyed$3 = remoteUtils$SurfaceCallbackStub.lambda$onSurfaceDestroyed$3(x7Var);
                return lambda$onSurfaceDestroyed$3;
            default:
                lambda$onSurfaceAvailable$0 = remoteUtils$SurfaceCallbackStub.lambda$onSurfaceAvailable$0(x7Var);
                return lambda$onSurfaceAvailable$0;
        }
    }
}
