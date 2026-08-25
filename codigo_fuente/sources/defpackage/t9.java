package defpackage;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* renamed from: t9  reason: default package */
/* loaded from: classes.dex */
public final class t9 {
    public static final t9 c = new t9();
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();

    public static void b(HashMap hashMap, s9 s9Var, lk lkVar, Class cls) {
        lk lkVar2 = (lk) hashMap.get(s9Var);
        if (lkVar2 != null && lkVar != lkVar2) {
            String name = s9Var.b.getName();
            String name2 = cls.getName();
            throw new IllegalArgumentException("Method " + name + " in " + name2 + " already declared with different @OnLifecycleEvent value: previous value " + lkVar2 + ", new value " + lkVar);
        } else if (lkVar2 == null) {
            hashMap.put(s9Var, lkVar);
        }
    }

    public final r9 a(Class cls, Method[] methodArr) {
        Class<?>[] interfaces;
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.a;
        if (superclass != null) {
            r9 r9Var = (r9) hashMap2.get(superclass);
            if (r9Var == null) {
                r9Var = a(superclass, null);
            }
            hashMap.putAll(r9Var.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            r9 r9Var2 = (r9) hashMap2.get(cls2);
            if (r9Var2 == null) {
                r9Var2 = a(cls2, null);
            }
            for (Map.Entry entry : r9Var2.b.entrySet()) {
                b(hashMap, (s9) entry.getKey(), (lk) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            ms msVar = (ms) method.getAnnotation(ms.class);
            if (msVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length > 0) {
                    if (sk.class.isAssignableFrom(parameterTypes[0])) {
                        i = 1;
                    } else {
                        c2.n("invalid parameter type. Must be one and instanceof LifecycleOwner");
                        return null;
                    }
                } else {
                    i = 0;
                }
                lk value = msVar.value();
                if (parameterTypes.length > 1) {
                    if (lk.class.isAssignableFrom(parameterTypes[1])) {
                        if (value == lk.ON_ANY) {
                            i = 2;
                        } else {
                            c2.n("Second arg is supported only for ON_ANY value");
                            return null;
                        }
                    } else {
                        c2.n("invalid parameter type. second arg must be an event");
                        return null;
                    }
                }
                if (parameterTypes.length <= 2) {
                    b(hashMap, new s9(i, method), value, cls);
                    z = true;
                } else {
                    c2.n("cannot have more than 2 params");
                    return null;
                }
            }
        }
        r9 r9Var3 = new r9(hashMap);
        hashMap2.put(cls, r9Var3);
        this.b.put(cls, Boolean.valueOf(z));
        return r9Var3;
    }
}
