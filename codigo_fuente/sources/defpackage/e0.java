package defpackage;

import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
/* renamed from: e0  reason: default package */
/* loaded from: classes.dex */
public final class e0 {
    public static final e0 d;
    public static final e0 e;
    public static final e0 f;
    public static final e0 g;
    public final Object a;
    public final int b;
    public final Class c;

    static {
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction2;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction3;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction4;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction5;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction6;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction7;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction8;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction9;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction10;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction11;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction12;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction13;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction14;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction15;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction16;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction17;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction18;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction19;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction20;
        new e0(1);
        new e0(2);
        new e0(4);
        new e0(8);
        new e0(16);
        new e0(32);
        new e0(64);
        new e0(128);
        new e0(256, i0.class);
        new e0(512, i0.class);
        new e0(1024, j0.class);
        new e0(2048, j0.class);
        d = new e0(4096);
        e = new e0(8192);
        new e0(16384);
        new e0(32768);
        new e0(65536);
        new e0(131072, n0.class);
        new e0(262144);
        new e0(524288);
        new e0(1048576);
        new e0(2097152, o0.class);
        new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, 16908342, null, null, null);
        new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, 16908343, null, null, l0.class);
        f = new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, 16908344, null, null, null);
        new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, 16908345, null, null, null);
        g = new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, 16908346, null, null, null);
        new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, 16908347, null, null, null);
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction21 = null;
        if (i >= 29) {
            accessibilityAction20 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP;
            accessibilityAction = accessibilityAction20;
        } else {
            accessibilityAction = null;
        }
        new e0(accessibilityAction, 16908358, null, null, null);
        if (i >= 29) {
            accessibilityAction19 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN;
            accessibilityAction2 = accessibilityAction19;
        } else {
            accessibilityAction2 = null;
        }
        new e0(accessibilityAction2, 16908359, null, null, null);
        if (i >= 29) {
            accessibilityAction3 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT;
        } else {
            accessibilityAction3 = null;
        }
        new e0(accessibilityAction3, 16908360, null, null, null);
        if (i >= 29) {
            accessibilityAction18 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT;
            accessibilityAction4 = accessibilityAction18;
        } else {
            accessibilityAction4 = null;
        }
        new e0(accessibilityAction4, 16908361, null, null, null);
        new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, 16908348, null, null, null);
        new e0(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, 16908349, null, null, m0.class);
        if (i >= 26) {
            accessibilityAction5 = AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW;
        } else {
            accessibilityAction5 = null;
        }
        new e0(accessibilityAction5, 16908354, null, null, k0.class);
        if (i >= 28) {
            accessibilityAction17 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
            accessibilityAction6 = accessibilityAction17;
        } else {
            accessibilityAction6 = null;
        }
        new e0(accessibilityAction6, 16908356, null, null, null);
        if (i >= 28) {
            accessibilityAction16 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            accessibilityAction7 = accessibilityAction16;
        } else {
            accessibilityAction7 = null;
        }
        new e0(accessibilityAction7, 16908357, null, null, null);
        if (i >= 30) {
            accessibilityAction8 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD;
        } else {
            accessibilityAction8 = null;
        }
        new e0(accessibilityAction8, 16908362, null, null, null);
        if (i >= 30) {
            accessibilityAction15 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
            accessibilityAction9 = accessibilityAction15;
        } else {
            accessibilityAction9 = null;
        }
        new e0(accessibilityAction9, 16908372, null, null, null);
        if (i >= 32) {
            accessibilityAction10 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START;
        } else {
            accessibilityAction10 = null;
        }
        new e0(accessibilityAction10, 16908373, null, null, null);
        if (i >= 32) {
            accessibilityAction14 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP;
            accessibilityAction11 = accessibilityAction14;
        } else {
            accessibilityAction11 = null;
        }
        new e0(accessibilityAction11, 16908374, null, null, null);
        if (i >= 32) {
            accessibilityAction13 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL;
            accessibilityAction12 = accessibilityAction13;
        } else {
            accessibilityAction12 = null;
        }
        new e0(accessibilityAction12, 16908375, null, null, null);
        if (i >= 33) {
            accessibilityAction21 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS;
        }
        new e0(accessibilityAction21, 16908376, null, null, null);
    }

    public e0(Object obj, int i, String str, p0 p0Var, Class cls) {
        this.b = i;
        if (obj == null) {
            this.a = new AccessibilityNodeInfo.AccessibilityAction(i, str);
        } else {
            this.a = obj;
        }
        this.c = cls;
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.a).getId();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof e0)) {
            return false;
        }
        Object obj2 = ((e0) obj).a;
        Object obj3 = this.a;
        if (obj3 == null) {
            if (obj2 != null) {
                return false;
            }
            return true;
        } else if (!obj3.equals(obj2)) {
            return false;
        } else {
            return true;
        }
    }

    public final int hashCode() {
        Object obj = this.a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String b = g0.b(this.b);
        if (b.equals("ACTION_UNKNOWN")) {
            Object obj = this.a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                b = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(b);
        return sb.toString();
    }

    public e0(int i, Class cls) {
        this(null, i, null, null, cls);
    }

    public e0(int i) {
        this(null, i, null, null, null);
    }
}
