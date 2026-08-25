package defpackage;

import android.view.ViewTreeObserver;
/* renamed from: p4  reason: default package */
/* loaded from: classes.dex */
public abstract class p4 {
    public static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }
}
