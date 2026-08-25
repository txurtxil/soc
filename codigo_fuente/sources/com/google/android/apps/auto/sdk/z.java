package com.google.android.apps.auto.sdk;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
abstract class z {
    protected String a;
    private Object b;

    public z(aa aaVar, String str, Object... objArr) {
        Constructor<?> constructor;
        int i = 0;
        try {
            int a = aa.a(aaVar.b());
            int a2 = aa.a(aaVar.a());
            if (a > a2) {
                String packageName = aaVar.a().getPackageName();
                String packageName2 = aaVar.b().getPackageName();
                String str2 = aaVar.a().getPackageManager().getPackageInfo(packageName, 0).versionName;
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 78 + String.valueOf(str2).length() + String.valueOf(packageName2).length());
                sb.append("Older version of Android Auto detected.");
                sb.append(packageName);
                sb.append("(");
                sb.append(str2);
                sb.append(", api=");
                sb.append(a2);
                sb.append(")\n");
                sb.append(packageName2);
                sb.append("(api=  ");
                sb.append(a);
                sb.append(")");
                Log.e("CSL.RemoteClass", sb.toString());
            }
        } catch (Exception e) {
            Log.e("CSL.RemoteClass", "Error extracting SDK version, you may face runtime errors", e);
        }
        this.a = str;
        Class<?> a3 = aaVar.a(str);
        Constructor<?>[] constructors = a3.getConstructors();
        int length = constructors.length;
        while (true) {
            if (i >= length) {
                constructor = null;
                break;
            }
            constructor = constructors[i];
            if (objArr.length == constructor.getParameterTypes().length) {
                break;
            }
            i++;
        }
        if (constructor == null) {
            c2.g("Cannot find SDK entry constructor.");
            throw null;
        }
        try {
            this.b = constructor.newInstance(objArr);
            a(a3.getDeclaredMethods());
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            Log.wtf("CSL.RemoteClass", "Unable to load SDK entry class.", e2);
            throw new IllegalStateException("Unable to load SDK entry class.", e2);
        }
    }

    public final Object a(Method method, Object... objArr) {
        if (method == null) {
            Log.e("CSL.RemoteClass", "Error invoking a null method.  Ignored.", new Exception());
            return null;
        }
        try {
            return method.invoke(this.b, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            String valueOf = String.valueOf(method.getName());
            Log.e("CSL.RemoteClass", valueOf.length() != 0 ? "Error invoking: ".concat(valueOf) : new String("Error invoking: "), e);
            return null;
        }
    }

    public abstract void a(Method[] methodArr);
}
