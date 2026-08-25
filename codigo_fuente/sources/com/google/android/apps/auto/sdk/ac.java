package com.google.android.apps.auto.sdk;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
/* loaded from: classes.dex */
final class ac implements LayoutInflater.Factory {
    private static final HashMap<String, Constructor<? extends View>> a = new HashMap<>();
    private static final ClassLoader b = LayoutInflater.class.getClassLoader();
    private static final Class<?>[] c = {Context.class, AttributeSet.class};

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        ClassLoader classLoader;
        if (str.startsWith("com.google.android.gms.car.support") || str.startsWith("android.support") || str.startsWith("com.google.android.apps.auto.sdk.ui")) {
            if (Log.isLoggable("CSL.SupportLibViewLoade", 2)) {
                Log.v("CSL.SupportLibViewLoade", String.format("createView %s with context %s", str, context));
            }
            Constructor<? extends View> constructor = a.get(str);
            if (constructor != null && (classLoader = constructor.getDeclaringClass().getClassLoader()) != b) {
                ClassLoader classLoader2 = context.getClassLoader();
                while (true) {
                    if (classLoader != classLoader2) {
                        classLoader2 = classLoader2.getParent();
                        if (classLoader2 == null) {
                            a.remove(str);
                            constructor = null;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (constructor == null) {
                if (Log.isLoggable("CSL.SupportLibViewLoade", 2)) {
                    Log.v("CSL.SupportLibViewLoade", "No cached constructor");
                }
                try {
                    constructor = context.getClassLoader().loadClass(str).asSubclass(View.class).getConstructor(c);
                    constructor.setAccessible(true);
                    a.put(str, constructor);
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    Log.w("CSL.SupportLibViewLoade", "Error creating view", e);
                    return null;
                }
            }
            try {
                return constructor.newInstance(context, attributeSet);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(valueOf.length() + 21);
                sb.append("Error creating view: ");
                sb.append(valueOf);
                Log.w("CSL.SupportLibViewLoade", sb.toString());
                return null;
            }
        }
        return null;
    }
}
