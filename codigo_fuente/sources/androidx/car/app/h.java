package androidx.car.app;

import java.util.List;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h(Object obj, int i, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                CarAppService carAppService = (CarAppService) this.b;
                SessionInfo sessionInfo = (SessionInfo) this.c;
                synchronized (carAppService.a) {
                    try {
                        CarAppBinder carAppBinder = (CarAppBinder) carAppService.a.remove(sessionInfo);
                        if (carAppBinder != null) {
                            carAppBinder.onDestroyLifecycle();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                CarContext$1.g((List) this.b, (List) this.c);
                return;
        }
    }
}
