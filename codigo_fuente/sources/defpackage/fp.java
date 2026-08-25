package defpackage;

import android.transition.Transition;
import android.widget.PopupWindow;
/* renamed from: fp  reason: default package */
/* loaded from: classes.dex */
public abstract class fp {
    public static void a(PopupWindow popupWindow, Transition transition) {
        popupWindow.setEnterTransition(transition);
    }

    public static void b(PopupWindow popupWindow, Transition transition) {
        popupWindow.setExitTransition(transition);
    }
}
