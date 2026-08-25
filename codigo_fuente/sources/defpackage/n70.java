package defpackage;

import android.view.View;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.Objects;
/* renamed from: n70  reason: default package */
/* loaded from: classes.dex */
public abstract class n70 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$OnUnhandledKeyEventListener, java.lang.Object] */
    public static void a(View view, s70 s70Var) {
        j20 j20Var = (j20) view.getTag(R.id.tag_unhandled_key_listeners);
        j20 j20Var2 = j20Var;
        if (j20Var == null) {
            j20 j20Var3 = new j20();
            view.setTag(R.id.tag_unhandled_key_listeners, j20Var3);
            j20Var2 = j20Var3;
        }
        Objects.requireNonNull(s70Var);
        ?? obj = new Object();
        j20Var2.put(s70Var, obj);
        view.addOnUnhandledKeyEventListener(obj);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, s70 s70Var) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        j20 j20Var = (j20) view.getTag(R.id.tag_unhandled_key_listeners);
        if (j20Var != null && (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) j20Var.getOrDefault(s70Var, null)) != null) {
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }
    }

    public static <T> T f(View view, int i) {
        return (T) view.requireViewById(i);
    }

    public static void g(View view, boolean z) {
        view.setAccessibilityHeading(z);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, boolean z) {
        view.setScreenReaderFocusable(z);
    }
}
