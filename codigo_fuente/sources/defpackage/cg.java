package defpackage;

import androidx.fragment.app.a;
import java.lang.reflect.InvocationTargetException;
/* renamed from: cg  reason: default package */
/* loaded from: classes.dex */
public final class cg {
    public static final j20 b = new j20();
    public final /* synthetic */ a a;

    public cg(a aVar) {
        this.a = aVar;
    }

    public static Class b(ClassLoader classLoader, String str) {
        j20 j20Var = b;
        j20 j20Var2 = (j20) j20Var.getOrDefault(classLoader, null);
        if (j20Var2 == null) {
            j20Var2 = new j20();
            j20Var.put(classLoader, j20Var2);
        }
        Class cls = (Class) j20Var2.getOrDefault(str, null);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            j20Var2.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e) {
            throw new RuntimeException(t20.f("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(t20.f("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }

    public final vf a(String str) {
        try {
            return (vf) c(this.a.o.k.getClassLoader(), str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(t20.f("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(t20.f("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(t20.f("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(t20.f("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }
}
