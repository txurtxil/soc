package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: w60  reason: default package */
/* loaded from: classes.dex */
public abstract class w60 {
    public final u6 a;
    public final u6 b;
    public final u6 c;

    public w60(u6 u6Var, u6 u6Var2, u6 u6Var3) {
        this.a = u6Var;
        this.b = u6Var2;
        this.c = u6Var3;
    }

    public abstract x60 a();

    public final Class b(Class cls) {
        String name = cls.getName();
        u6 u6Var = this.c;
        Class cls2 = (Class) u6Var.getOrDefault(name, null);
        if (cls2 == null) {
            String name2 = cls.getPackage().getName();
            String simpleName = cls.getSimpleName();
            Class<?> cls3 = Class.forName(name2 + "." + simpleName + "Parcelizer", false, cls.getClassLoader());
            u6Var.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    public final Method c(String str) {
        u6 u6Var = this.a;
        Method method = (Method) u6Var.getOrDefault(str, null);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, w60.class.getClassLoader()).getDeclaredMethod("read", w60.class);
            u6Var.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public final Method d(Class cls) {
        String name = cls.getName();
        u6 u6Var = this.b;
        Method method = (Method) u6Var.getOrDefault(name, null);
        if (method == null) {
            Class b = b(cls);
            System.currentTimeMillis();
            Method declaredMethod = b.getDeclaredMethod("write", cls, w60.class);
            u6Var.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public abstract boolean e(int i);

    public final int f(int i, int i2) {
        if (!e(i2)) {
            return i;
        }
        return ((x60) this).e.readInt();
    }

    public final Parcelable g(Parcelable parcelable, int i) {
        if (!e(i)) {
            return parcelable;
        }
        return ((x60) this).e.readParcelable(x60.class.getClassLoader());
    }

    public final y60 h() {
        String readString = ((x60) this).e.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (y60) c(readString).invoke(null, a());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    public abstract void i(int i);

    public final void j(int i, int i2) {
        i(i2);
        ((x60) this).e.writeInt(i);
    }

    public final void k(Parcelable parcelable, int i) {
        i(i);
        ((x60) this).e.writeParcelable(parcelable, 0);
    }

    public final void l(y60 y60Var) {
        if (y60Var == null) {
            ((x60) this).e.writeString(null);
            return;
        }
        try {
            ((x60) this).e.writeString(b(y60Var.getClass()).getName());
            x60 a = a();
            try {
                d(y60Var.getClass()).invoke(null, y60Var, a);
                Parcel parcel = a.e;
                int i = a.i;
                if (i >= 0) {
                    int i2 = a.d.get(i);
                    int dataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(dataPosition - i2);
                    parcel.setDataPosition(dataPosition);
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(y60Var.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
