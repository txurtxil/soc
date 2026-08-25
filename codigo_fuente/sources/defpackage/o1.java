package defpackage;

import android.app.Activity;
import android.app.SharedElementCallback;
/* renamed from: o1  reason: default package */
/* loaded from: classes.dex */
public abstract class o1 {
    public static void a(Object obj) {
        ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
    }

    public static void b(Activity activity, String[] strArr, int i) {
        activity.requestPermissions(strArr, i);
    }

    public static boolean c(Activity activity, String str) {
        return activity.shouldShowRequestPermissionRationale(str);
    }
}
