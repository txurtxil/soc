package defpackage;

import android.os.Process;
/* renamed from: mx  reason: default package */
/* loaded from: classes.dex */
public final class mx extends Thread {
    public final int a;

    public mx(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.a = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.a);
        super.run();
    }
}
