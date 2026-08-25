package defpackage;

import android.view.View;
import android.widget.PopupWindow;
/* renamed from: el  reason: default package */
/* loaded from: classes.dex */
public abstract class el {
    public static int a(PopupWindow popupWindow, View view, int i, boolean z) {
        return popupWindow.getMaxAvailableHeight(view, i, z);
    }
}
