package defpackage;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: z50  reason: default package */
/* loaded from: classes.dex */
public final class z50 extends y50 {
    @Override // defpackage.y50
    public final Typeface O(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.x, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.D.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            c2.k(e);
            return null;
        }
    }

    @Override // defpackage.y50
    public final Method R(Class cls) {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, String.class, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
