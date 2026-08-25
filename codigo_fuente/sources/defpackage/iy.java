package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.concurrent.Callable;
/* renamed from: iy  reason: default package */
/* loaded from: classes.dex */
public abstract class iy extends ContextWrapper implements Callable {
    public static final /* synthetic */ int a = 0;

    static {
        try {
            Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class);
            ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class).setAccessible(true);
        } catch (Exception e) {
            c2.k(e);
        }
    }
}
