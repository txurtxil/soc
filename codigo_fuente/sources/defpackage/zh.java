package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.IBinder;
import java.lang.reflect.Method;
/* renamed from: zh  reason: default package */
/* loaded from: classes.dex */
public abstract class zh {
    public static final Method a;
    public static final Method b;
    public static final Method c;
    public static final int d;

    static {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            i = 4194304;
        } else {
            i = 0;
        }
        d = i;
        try {
            Class<?> cls = Class.forName("android.os.ServiceManager");
            Class<?> cls2 = Integer.TYPE;
            if (i2 >= 28) {
                try {
                    a = cls.getDeclaredMethod("addService", String.class, IBinder.class, Boolean.TYPE, cls2);
                } catch (NoSuchMethodException unused) {
                }
            }
            if (a == null) {
                a = cls.getDeclaredMethod("addService", String.class, IBinder.class);
            }
            Method declaredMethod = ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class);
            b = declaredMethod;
            declaredMethod.setAccessible(true);
            c = Class.forName("android.ddm.DdmHandleAppName").getDeclaredMethod("setAppName", String.class, cls2);
        } catch (ReflectiveOperationException e) {
            k60.o("IPC", e);
        }
    }
}
