package idv.lzn.screenonauto.privileged;

import android.content.Intent;
import android.os.IBinder;
/* loaded from: classes.dex */
public final class PrivilegedRootService extends jy {
    public PrivilegedRootService() {
        super(null);
    }

    @Override // defpackage.jy
    public IBinder onBind(Intent intent) {
        intent.getClass();
        return new PrivilegedServiceImpl();
    }
}
