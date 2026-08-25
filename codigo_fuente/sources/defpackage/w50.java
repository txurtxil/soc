package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: w50  reason: default package */
/* loaded from: classes.dex */
public class w50 extends k60 {
    public static Class s = null;
    public static Constructor t = null;
    public static Method u = null;
    public static Method v = null;
    public static boolean w = false;

    public static boolean L(Object obj, String str, int i, boolean z) {
        M();
        try {
            return ((Boolean) u.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            c2.k(e);
            return false;
        }
    }

    public static void M() {
        Method method;
        Class<?> cls;
        Method method2;
        if (w) {
            return;
        }
        w = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            method = null;
            cls = null;
            method2 = null;
        }
        t = constructor;
        s = cls;
        u = method2;
        v = method;
    }

    @Override // defpackage.k60
    public Typeface j(Context context, mf mfVar, Resources resources, int i) {
        nf[] nfVarArr;
        M();
        try {
            Object newInstance = t.newInstance(null);
            for (nf nfVar : mfVar.a) {
                File n = em.n(context);
                if (n == null) {
                    return null;
                }
                try {
                    if (!em.f(n, resources, nfVar.f)) {
                        return null;
                    }
                    if (!L(newInstance, n.getPath(), nfVar.b, nfVar.c)) {
                        return null;
                    }
                    n.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    n.delete();
                }
            }
            M();
            try {
                Object newInstance2 = Array.newInstance(s, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) v.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e) {
                c2.k(e);
                return null;
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            c2.k(e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // defpackage.k60
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface k(android.content.Context r3, defpackage.pf[] r4, int r5) {
        /*
            r2 = this;
            int r2 = r4.length
            r0 = 1
            r1 = 0
            if (r2 >= r0) goto L7
            goto La1
        L7:
            pf r2 = defpackage.k60.p(r5, r4)
            android.content.ContentResolver r4 = r3.getContentResolver()
            android.net.Uri r2 = r2.a     // Catch: java.io.IOException -> La1
            java.lang.String r5 = "r"
            android.os.ParcelFileDescriptor r2 = r4.openFileDescriptor(r2, r5, r1)     // Catch: java.io.IOException -> La1
            if (r2 != 0) goto L1f
            if (r2 == 0) goto La1
            r2.close()     // Catch: java.io.IOException -> La1
            return r1
        L1f:
            java.lang.String r4 = "/proc/self/fd/"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            r5.<init>(r4)     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            int r4 = r2.getFd()     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            r5.append(r4)     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            java.lang.String r4 = r5.toString()     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            java.lang.String r4 = android.system.Os.readlink(r4)     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            android.system.StructStat r5 = android.system.Os.stat(r4)     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            int r5 = r5.st_mode     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            boolean r5 = android.system.OsConstants.S_ISREG(r5)     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            if (r5 == 0) goto L47
            java.io.File r5 = new java.io.File     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            r5.<init>(r4)     // Catch: android.system.ErrnoException -> L47 java.lang.Throwable -> L59
            goto L48
        L47:
            r5 = r1
        L48:
            if (r5 == 0) goto L5b
            boolean r4 = r5.canRead()     // Catch: java.lang.Throwable -> L59
            if (r4 != 0) goto L51
            goto L5b
        L51:
            android.graphics.Typeface r3 = android.graphics.Typeface.createFromFile(r5)     // Catch: java.lang.Throwable -> L59
            r2.close()     // Catch: java.io.IOException -> La1
            return r3
        L59:
            r3 = move-exception
            goto L98
        L5b:
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L59
            java.io.FileDescriptor r5 = r2.getFileDescriptor()     // Catch: java.lang.Throwable -> L59
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L59
            java.io.File r3 = defpackage.em.n(r3)     // Catch: java.lang.Throwable -> L8e
            if (r3 != 0) goto L6c
        L6a:
            r5 = r1
            goto L87
        L6c:
            boolean r5 = defpackage.em.g(r3, r4)     // Catch: java.lang.RuntimeException -> L72 java.lang.Throwable -> L82
            if (r5 != 0) goto L76
        L72:
            r3.delete()     // Catch: java.lang.Throwable -> L8e
            goto L6a
        L76:
            java.lang.String r5 = r3.getPath()     // Catch: java.lang.RuntimeException -> L72 java.lang.Throwable -> L82
            android.graphics.Typeface r5 = android.graphics.Typeface.createFromFile(r5)     // Catch: java.lang.RuntimeException -> L72 java.lang.Throwable -> L82
            r3.delete()     // Catch: java.lang.Throwable -> L8e
            goto L87
        L82:
            r5 = move-exception
            r3.delete()     // Catch: java.lang.Throwable -> L8e
            throw r5     // Catch: java.lang.Throwable -> L8e
        L87:
            r4.close()     // Catch: java.lang.Throwable -> L59
            r2.close()     // Catch: java.io.IOException -> La1
            return r5
        L8e:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L93
            goto L97
        L93:
            r4 = move-exception
            r3.addSuppressed(r4)     // Catch: java.lang.Throwable -> L59
        L97:
            throw r3     // Catch: java.lang.Throwable -> L59
        L98:
            r2.close()     // Catch: java.lang.Throwable -> L9c
            goto La0
        L9c:
            r2 = move-exception
            r3.addSuppressed(r2)     // Catch: java.io.IOException -> La1
        La0:
            throw r3     // Catch: java.io.IOException -> La1
        La1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w50.k(android.content.Context, pf[], int):android.graphics.Typeface");
    }
}
