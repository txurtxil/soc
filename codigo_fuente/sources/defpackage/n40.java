package defpackage;

import android.os.Handler;
import android.os.Looper;
/* renamed from: n40  reason: default package */
/* loaded from: classes.dex */
public abstract class n40 {
    public static final Handler a = new Handler(Looper.getMainLooper());

    public static void a() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        c2.g("Not running on main thread when it is required to");
    }

    public static void b(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            a.post(runnable);
        }
    }
}
