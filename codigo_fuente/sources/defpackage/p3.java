package defpackage;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;
/* renamed from: p3  reason: default package */
/* loaded from: classes.dex */
public abstract class p3 {
    public static OnBackInvokedDispatcher a(Activity activity) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
        return onBackInvokedDispatcher;
    }

    public static OnBackInvokedCallback b(Object obj, w3 w3Var) {
        Objects.requireNonNull(w3Var);
        o3 o3Var = new o3(0, w3Var);
        a0.e(obj).registerOnBackInvokedCallback(1000000, o3Var);
        return o3Var;
    }

    public static void c(Object obj, Object obj2) {
        a0.e(obj).unregisterOnBackInvokedCallback(a0.b(obj2));
    }
}
