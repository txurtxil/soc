package defpackage;

import android.view.Window;
import android.view.WindowInsets;
/* renamed from: du  reason: default package */
/* loaded from: classes.dex */
public abstract class du {
    public static void a(Window window) {
        window.getDecorView().getWindowInsetsController().show(WindowInsets.Type.ime());
    }
}
