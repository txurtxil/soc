package defpackage;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: v50  reason: default package */
/* loaded from: classes.dex */
public abstract class v50 {
    public static final k60 a;
    public static final bm b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            a = new k60();
        } else if (i >= 28) {
            a = new y50();
        } else if (i >= 26) {
            a = new y50();
        } else {
            Method method = x50.u;
            if (method == null) {
                Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
            }
            if (method != null) {
                a = new k60();
            } else {
                a = new k60();
            }
        }
        b = new bm(16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r1.equals(r5) == false) goto L11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [ox, java.lang.Object, java.lang.Runnable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface a(android.content.Context r11, defpackage.lf r12, android.content.res.Resources r13, int r14, java.lang.String r15, int r16, int r17, defpackage.b5 r18) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v50.a(android.content.Context, lf, android.content.res.Resources, int, java.lang.String, int, int, b5):android.graphics.Typeface");
    }

    public static String b(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }
}
