package defpackage;

import android.media.projection.MediaProjection;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
import java.util.List;
/* renamed from: ou  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class ou implements Runnable {
    public final /* synthetic */ int a;

    public /* synthetic */ ou(b5 b5Var) {
        this.a = 2;
    }

    private final void a() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                PrivilegedInputInjector.c();
                return;
            case 1:
                PrivilegedInputInjector.a();
                return;
            case 2:
                return;
            case 3:
                List<zz> list = b00.n;
                if (list == null || !list.isEmpty()) {
                    for (zz zzVar : list) {
                        if (zzVar.i) {
                            b00.b();
                            return;
                        }
                    }
                    return;
                }
                return;
            default:
                b00.c();
                MediaProjection mediaProjection = b00.j;
                if (mediaProjection != null) {
                    mediaProjection.unregisterCallback(b00.q);
                }
                MediaProjection mediaProjection2 = b00.j;
                if (mediaProjection2 != null) {
                    mediaProjection2.stop();
                }
                b00.j = null;
                cm cmVar = b00.g;
                if (cmVar != null) {
                    cmVar.b(Boolean.FALSE);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ ou(int i) {
        this.a = i;
    }
}
