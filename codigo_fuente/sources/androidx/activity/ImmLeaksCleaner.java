package androidx.activity;

import android.view.inputmethod.InputMethodManager;
/* loaded from: classes.dex */
final class ImmLeaksCleaner implements qk {
    public static int a;

    @Override // defpackage.qk
    public final void g(sk skVar, lk lkVar) {
        if (lkVar == lk.ON_DESTROY) {
            if (a == 0) {
                try {
                    a = 2;
                    InputMethodManager.class.getDeclaredField("mServedView").setAccessible(true);
                    InputMethodManager.class.getDeclaredField("mNextServedView").setAccessible(true);
                    InputMethodManager.class.getDeclaredField("mH").setAccessible(true);
                    a = 1;
                } catch (NoSuchFieldException unused) {
                }
            }
            if (a != 1) {
                return;
            }
            throw null;
        }
    }
}
