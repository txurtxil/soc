package defpackage;

import android.util.Log;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
/* renamed from: su  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class su implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ su(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        boolean z = this.b;
        switch (i) {
            case 0:
                PrivilegedManager.ensureBackendHooks$lambda$5$lambda$4(z);
                return;
            default:
                if (b00.p != z) {
                    Log.d("ScreenMirrorManager", "setSelfDraw: " + z + " (applies when mirroring next starts)");
                    b00.p = z;
                    return;
                }
                return;
        }
    }
}
