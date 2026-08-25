package defpackage;

import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: jf  reason: default package */
/* loaded from: classes.dex */
public abstract class jf {
    public static final bm a = new bm(16);
    public static final ThreadPoolExecutor b;
    public static final Object c;
    public static final j20 d;

    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), (ThreadFactory) new Object());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        c = new Object();
        d = new j20();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.hf a(java.lang.String r6, android.content.Context r7, defpackage.cf r8, int r9) {
        /*
            bm r0 = defpackage.jf.a
            java.lang.Object r1 = r0.a(r6)
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1
            if (r1 == 0) goto L10
            hf r6 = new hf
            r6.<init>(r1)
            return r6
        L10:
            n2 r8 = defpackage.em.k(r8, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5c
            java.lang.Object r1 = r8.c
            pf[] r1 = (defpackage.pf[]) r1
            int r8 = r8.b
            r2 = -3
            r3 = 1
            if (r8 == 0) goto L24
            if (r8 == r3) goto L22
        L20:
            r3 = r2
            goto L3d
        L22:
            r3 = -2
            goto L3d
        L24:
            if (r1 == 0) goto L3d
            int r8 = r1.length
            if (r8 != 0) goto L2a
            goto L3d
        L2a:
            int r8 = r1.length
            r3 = 0
            r4 = r3
        L2d:
            if (r4 >= r8) goto L3d
            r5 = r1[r4]
            int r5 = r5.e
            if (r5 == 0) goto L3a
            if (r5 >= 0) goto L38
            goto L20
        L38:
            r3 = r5
            goto L3d
        L3a:
            int r4 = r4 + 1
            goto L2d
        L3d:
            if (r3 == 0) goto L45
            hf r6 = new hf
            r6.<init>(r3)
            return r6
        L45:
            k60 r8 = defpackage.v50.a
            android.graphics.Typeface r7 = r8.k(r7, r1, r9)
            if (r7 == 0) goto L56
            r0.b(r6, r7)
            hf r6 = new hf
            r6.<init>(r7)
            return r6
        L56:
            hf r6 = new hf
            r6.<init>(r2)
            return r6
        L5c:
            hf r6 = new hf
            r7 = -1
            r6.<init>(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jf.a(java.lang.String, android.content.Context, cf, int):hf");
    }
}
