package defpackage;

import android.media.session.MediaSessionManager;
import android.text.TextUtils;
/* renamed from: ho  reason: default package */
/* loaded from: classes.dex */
public class ho extends go {
    /* JADX WARN: Type inference failed for: r0v0, types: [lo, java.lang.Object] */
    @Override // defpackage.go
    public final lo b() {
        MediaSessionManager.RemoteUserInfo currentControllerInfo;
        String packageName;
        String packageName2;
        int pid;
        int uid;
        currentControllerInfo = this.a.getCurrentControllerInfo();
        ?? obj = new Object();
        packageName = currentControllerInfo.getPackageName();
        if (packageName != null) {
            if (!TextUtils.isEmpty(packageName)) {
                packageName2 = currentControllerInfo.getPackageName();
                pid = currentControllerInfo.getPid();
                uid = currentControllerInfo.getUid();
                obj.a = new oo(pid, uid, packageName2);
                return obj;
            }
            c2.n("packageName should be nonempty");
            return null;
        }
        throw new NullPointerException("package shouldn't be null");
    }

    @Override // defpackage.go
    public final void d(lo loVar) {
    }
}
