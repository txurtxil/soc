package defpackage;

import android.view.View;
import java.util.Collection;
/* renamed from: l70  reason: default package */
/* loaded from: classes.dex */
public abstract class l70 {
    public static void a(View view, Collection<View> collection, int i) {
        view.addKeyboardNavigationClusters(collection, i);
    }

    public static int b(View view) {
        return view.getImportantForAutofill();
    }

    public static int c(View view) {
        return view.getNextClusterForwardId();
    }

    public static boolean d(View view) {
        return view.hasExplicitFocusable();
    }

    public static boolean e(View view) {
        return view.isFocusedByDefault();
    }

    public static boolean f(View view) {
        return view.isImportantForAutofill();
    }

    public static boolean g(View view) {
        return view.isKeyboardNavigationCluster();
    }

    public static View h(View view, View view2, int i) {
        return view.keyboardNavigationClusterSearch(view2, i);
    }

    public static boolean i(View view) {
        return view.restoreDefaultFocus();
    }

    public static void j(View view, String... strArr) {
        view.setAutofillHints(strArr);
    }

    public static void k(View view, boolean z) {
        view.setFocusedByDefault(z);
    }

    public static void l(View view, int i) {
        view.setImportantForAutofill(i);
    }

    public static void m(View view, boolean z) {
        view.setKeyboardNavigationCluster(z);
    }

    public static void n(View view, int i) {
        view.setNextClusterForwardId(i);
    }

    public static void o(View view, CharSequence charSequence) {
        view.setTooltipText(charSequence);
    }
}
