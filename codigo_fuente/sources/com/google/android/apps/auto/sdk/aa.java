package com.google.android.apps.auto.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes.dex */
public final class aa {
    private Context a;
    private Context b;

    public aa(Context context) {
        this.a = context;
        this.b = b(context);
    }

    private Context b(Context context) {
        String a = ab.a(context);
        try {
            Context createPackageContext = context.createPackageContext(a, 3);
            ya0.a(context, a);
            return createPackageContext;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(a);
            throw new IllegalStateException(valueOf.length() != 0 ? "Bad package: ".concat(valueOf) : new String("Bad package: "), e);
        }
    }

    public final Class<?> a(String str) {
        try {
            return this.b.getClassLoader().loadClass(str);
        } catch (ClassNotFoundException e) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to load SDK class ".concat(valueOf) : new String("Unable to load SDK class "), e);
        }
    }

    public final Context a() {
        return this.b;
    }

    public final Context b() {
        return this.a;
    }

    public static int a(Context context) {
        return ((Integer) context.getClassLoader().loadClass("com.google.android.apps.auto.sdk.SdkVersion").getDeclaredMethod("getVersion", null).invoke(null, null)).intValue();
    }
}
