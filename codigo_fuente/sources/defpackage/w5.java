package defpackage;

import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.util.concurrent.ThreadFactory;
/* renamed from: w5  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class w5 implements ThreadFactory {
    public final /* synthetic */ int a;

    public /* synthetic */ w5(int i) {
        this.a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.a) {
            case 0:
                Thread thread = new Thread(runnable, "AppLaunch-icon");
                thread.setDaemon(true);
                return thread;
            default:
                return PrivilegedManager.g(runnable);
        }
    }
}
