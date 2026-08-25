package defpackage;

import android.os.Handler;
import android.os.Looper;
/* renamed from: e60  reason: default package */
/* loaded from: classes.dex */
public abstract class e60 {
    public static final Handler a = new Handler(Looper.getMainLooper());
    public static final cv b = new cv(1);

    public static void a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            a.post(runnable);
        }
    }
}
