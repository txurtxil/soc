package androidx.car.app.utils;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ RemoteUtils$SurfaceCallbackStub b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;

    public /* synthetic */ b(RemoteUtils$SurfaceCallbackStub remoteUtils$SurfaceCallbackStub, float f, float f2, int i) {
        this.a = i;
        this.b = remoteUtils$SurfaceCallbackStub;
        this.c = f;
        this.d = f2;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        float f = this.d;
        float f2 = this.c;
        RemoteUtils$SurfaceCallbackStub remoteUtils$SurfaceCallbackStub = this.b;
        switch (i) {
            case 0:
                return RemoteUtils$SurfaceCallbackStub.h(remoteUtils$SurfaceCallbackStub, f2, f);
            case 1:
                return RemoteUtils$SurfaceCallbackStub.j(remoteUtils$SurfaceCallbackStub, f2, f);
            default:
                return RemoteUtils$SurfaceCallbackStub.k(remoteUtils$SurfaceCallbackStub, f2, f);
        }
    }
}
