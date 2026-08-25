package defpackage;

import android.view.ViewConfiguration;
/* renamed from: w70  reason: default package */
/* loaded from: classes.dex */
public abstract class w70 {
    public static int a(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static boolean b(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
