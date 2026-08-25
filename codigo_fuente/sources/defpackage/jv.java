package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
/* renamed from: jv  reason: default package */
/* loaded from: classes.dex */
public abstract class jv {
    public static final px a = new Object();
    public static final Object b = new Object();
    public static hd c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return hv.a(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static hd b() {
        hd hdVar = new hd(25);
        c = hdVar;
        px pxVar = a;
        pxVar.getClass();
        if (s.f.e(pxVar, null, hdVar)) {
            s.b(pxVar);
        }
        return c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:14|(1:80)(1:18)|19|(1:79)(1:23)|24|25|26|(2:64|65)(1:28)|29|(9:36|(1:40)|(1:47)|48|(2:56|57)|52|53|54|55)|(1:63)|(1:40)|(3:42|45|47)|48|(1:50)|56|57|52|53|54|55) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009e, code lost:
        r6 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jv.c(android.content.Context, boolean):void");
    }
}
