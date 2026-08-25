package defpackage;

import android.view.View;
import android.view.WindowInsets;
/* renamed from: k70  reason: default package */
/* loaded from: classes.dex */
public abstract class k70 {
    public static f90 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        f90 e = f90.e(rootWindowInsets, null);
        e90 e90Var = e.a;
        e90Var.l(e);
        e90Var.d(view.getRootView());
        return e;
    }

    public static int b(View view) {
        return view.getScrollIndicators();
    }

    public static void c(View view, int i) {
        view.setScrollIndicators(i);
    }

    public static void d(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }
}
