package defpackage;

import android.os.Handler;
import android.os.Looper;
/* renamed from: gv  reason: default package */
/* loaded from: classes.dex */
public abstract class gv {
    public static Handler a(Looper looper) {
        Handler createAsync;
        createAsync = Handler.createAsync(looper);
        return createAsync;
    }
}
