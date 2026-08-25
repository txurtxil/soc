package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;
/* renamed from: x50  reason: default package */
/* loaded from: classes.dex */
public final class x50 extends k60 {
    public static final Class s;
    public static final Constructor t;
    public static final Method u;
    public static final Method v;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            method2 = null;
        }
        t = constructor;
        s = cls;
        u = method2;
        v = method;
    }

    public static boolean L(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) u.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface M(Object obj) {
        try {
            Object newInstance = Array.newInstance(s, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) v.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // defpackage.k60
    public final Typeface j(Context context, mf mfVar, Resources resources, int i) {
        Object obj;
        nf[] nfVarArr;
        MappedByteBuffer mappedByteBuffer;
        FileInputStream fileInputStream;
        try {
            obj = t.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            for (nf nfVar : mfVar.a) {
                int i2 = nfVar.f;
                File n = em.n(context);
                if (n != null) {
                    try {
                        if (em.f(n, resources, i2)) {
                            try {
                                fileInputStream = new FileInputStream(n);
                            } catch (IOException unused2) {
                                mappedByteBuffer = null;
                            }
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                if (mappedByteBuffer != null && L(obj, mappedByteBuffer, nfVar.e, nfVar.b, nfVar.c)) {
                                }
                            } finally {
                                break;
                            }
                        }
                    } finally {
                        n.delete();
                    }
                }
                mappedByteBuffer = null;
                if (mappedByteBuffer != null) {
                }
            }
            return M(obj);
        }
        return null;
    }

    @Override // defpackage.k60
    public final Typeface k(Context context, pf[] pfVarArr, int i) {
        Object obj;
        try {
            obj = t.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            j20 j20Var = new j20();
            int length = pfVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    pf pfVar = pfVarArr[i2];
                    Uri uri = pfVar.a;
                    ByteBuffer byteBuffer = (ByteBuffer) j20Var.getOrDefault(uri, null);
                    if (byteBuffer == null) {
                        byteBuffer = em.q(context, uri);
                        j20Var.put(uri, byteBuffer);
                    }
                    if (byteBuffer == null || !L(obj, byteBuffer, pfVar.b, pfVar.c, pfVar.d)) {
                        break;
                    }
                    i2++;
                } else {
                    Typeface M = M(obj);
                    if (M != null) {
                        return Typeface.create(M, i);
                    }
                }
            }
        }
        return null;
    }
}
