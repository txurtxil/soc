package androidx.car.app.utils;

import android.graphics.Rect;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ RemoteUtils$SurfaceCallbackStub b;
    public final /* synthetic */ Rect c;

    public /* synthetic */ c(RemoteUtils$SurfaceCallbackStub remoteUtils$SurfaceCallbackStub, Rect rect, int i) {
        this.a = i;
        this.b = remoteUtils$SurfaceCallbackStub;
        this.c = rect;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        Rect rect = this.c;
        RemoteUtils$SurfaceCallbackStub remoteUtils$SurfaceCallbackStub = this.b;
        switch (i) {
            case 0:
                return RemoteUtils$SurfaceCallbackStub.n(remoteUtils$SurfaceCallbackStub, rect);
            default:
                return RemoteUtils$SurfaceCallbackStub.g(remoteUtils$SurfaceCallbackStub, rect);
        }
    }
}
