package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: y50  reason: default package */
/* loaded from: classes.dex */
public class y50 extends w50 {
    public final Method A;
    public final Method B;
    public final Method C;
    public final Method D;
    public final Class x;
    public final Constructor y;
    public final Method z;

    public y50() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            method2 = Q(cls2);
            Class cls3 = Integer.TYPE;
            method3 = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method4 = cls2.getMethod("freeze", null);
            method5 = cls2.getMethod("abortCreation", null);
            method = R(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e.getClass().getName()), e);
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.x = cls;
        this.y = constructor;
        this.z = method2;
        this.A = method3;
        this.B = method4;
        this.C = method5;
        this.D = method;
    }

    public static Method Q(Class cls) {
        Class cls2 = Boolean.TYPE;
        Class cls3 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls3, cls2, cls3, cls3, cls3, FontVariationAxis[].class);
    }

    public final boolean N(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.z.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface O(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.x, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.D.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean P(Object obj) {
        try {
            return ((Boolean) this.B.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Method R(Class cls) {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // defpackage.w50, defpackage.k60
    public final Typeface j(Context context, mf mfVar, Resources resources, int i) {
        Object obj;
        Method method = this.z;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method != null) {
            try {
                obj = this.y.newInstance(null);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                obj = null;
            }
            if (obj != null) {
                nf[] nfVarArr = mfVar.a;
                int length = nfVarArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        nf nfVar = nfVarArr[i2];
                        String str = nfVar.a;
                        int i3 = nfVar.e;
                        int i4 = nfVar.b;
                        boolean z = nfVar.c;
                        FontVariationAxis[] fromFontVariationSettings = FontVariationAxis.fromFontVariationSettings(nfVar.d);
                        y50 y50Var = this;
                        Context context2 = context;
                        if (!y50Var.N(context2, obj, str, i3, i4, z ? 1 : 0, fromFontVariationSettings)) {
                            try {
                                y50Var.C.invoke(obj, null);
                                break;
                            } catch (IllegalAccessException | InvocationTargetException unused2) {
                            }
                        } else {
                            i2++;
                            this = y50Var;
                            context = context2;
                        }
                    } else {
                        y50 y50Var2 = this;
                        if (y50Var2.P(obj)) {
                            return y50Var2.O(obj);
                        }
                    }
                }
            }
            return null;
        }
        return super.j(context, mfVar, resources, i);
    }

    @Override // defpackage.w50, defpackage.k60
    public final Typeface k(Context context, pf[] pfVarArr, int i) {
        Object obj;
        Typeface O;
        boolean z;
        if (pfVarArr.length >= 1) {
            Method method = this.z;
            if (method == null) {
                Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
            }
            try {
                if (method != null) {
                    HashMap hashMap = new HashMap();
                    for (pf pfVar : pfVarArr) {
                        if (pfVar.e == 0) {
                            Uri uri = pfVar.a;
                            if (!hashMap.containsKey(uri)) {
                                hashMap.put(uri, em.q(context, uri));
                            }
                        }
                    }
                    Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
                    try {
                        obj = this.y.newInstance(null);
                    } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        obj = null;
                    }
                    if (obj != null) {
                        int length = pfVarArr.length;
                        int i2 = 0;
                        boolean z2 = false;
                        while (true) {
                            Method method2 = this.C;
                            if (i2 < length) {
                                pf pfVar2 = pfVarArr[i2];
                                ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(pfVar2.a);
                                if (byteBuffer != null) {
                                    try {
                                        z = ((Boolean) this.A.invoke(obj, byteBuffer, Integer.valueOf(pfVar2.b), null, Integer.valueOf(pfVar2.c), Integer.valueOf(pfVar2.d ? 1 : 0))).booleanValue();
                                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                                        z = false;
                                    }
                                    if (!z) {
                                        method2.invoke(obj, null);
                                        break;
                                    }
                                    z2 = true;
                                }
                                i2++;
                                z2 = z2;
                            } else if (!z2) {
                                method2.invoke(obj, null);
                            } else if (P(obj) && (O = O(obj)) != null) {
                                return Typeface.create(O, i);
                            }
                        }
                    }
                } else {
                    pf p = k60.p(i, pfVarArr);
                    ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(p.a, "r", null);
                    if (openFileDescriptor == null) {
                        if (openFileDescriptor != null) {
                            openFileDescriptor.close();
                            return null;
                        }
                    } else {
                        Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(p.c).setItalic(p.d).build();
                        openFileDescriptor.close();
                        return build;
                    }
                }
            } catch (IOException | IllegalAccessException | InvocationTargetException unused3) {
            }
        }
        return null;
    }

    @Override // defpackage.k60
    public final Typeface l(Context context, Resources resources, int i, String str, int i2) {
        Object obj;
        Method method = this.z;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method != null) {
            try {
                obj = this.y.newInstance(null);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                obj = null;
            }
            if (obj != null) {
                if (!N(context, obj, str, 0, -1, -1, null)) {
                    try {
                        this.C.invoke(obj, null);
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                } else if (P(obj)) {
                    return O(obj);
                }
            }
            return null;
        }
        return super.l(context, resources, i, str, i2);
    }
}
