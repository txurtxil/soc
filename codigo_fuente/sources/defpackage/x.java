package defpackage;

import android.view.accessibility.AccessibilityEvent;
/* renamed from: x  reason: default package */
/* loaded from: classes.dex */
public abstract class x {
    public static int a(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }

    public static void b(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setContentChangeTypes(i);
    }
}
