package defpackage;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.HashMap;
/* renamed from: x30  reason: default package */
/* loaded from: classes.dex */
public abstract class x30 {
    public static final HashMap a = new HashMap();
    public static final Method b;

    static {
        new HashMap();
        try {
            b = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.w("SystemServiceHelper", Log.getStackTraceString(e));
        }
    }
}
