package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: u70  reason: default package */
/* loaded from: classes.dex */
public abstract class u70 {
    public static WeakHashMap a;
    public static Field b;
    public static boolean c;
    public static final a70 d;
    public static final c70 e;

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, a70] */
    static {
        new AtomicInteger(1);
        a = null;
        c = false;
        d = new Object();
        e = new c70();
    }

    public static h80 a(View view) {
        if (a == null) {
            a = new WeakHashMap();
        }
        h80 h80Var = (h80) a.get(view);
        if (h80Var == null) {
            h80 h80Var2 = new h80(view);
            a.put(view, h80Var2);
            return h80Var2;
        }
        return h80Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, t70] */
    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList = t70.d;
            t70 t70Var = (t70) view.getTag(R.id.tag_unhandled_key_event_manager);
            t70 t70Var2 = t70Var;
            if (t70Var == null) {
                ?? obj = new Object();
                obj.a = null;
                obj.b = null;
                obj.c = null;
                view.setTag(R.id.tag_unhandled_key_event_manager, obj);
                t70Var2 = obj;
            }
            if (keyEvent.getAction() == 0) {
                WeakHashMap weakHashMap = t70Var2.a;
                if (weakHashMap != null) {
                    weakHashMap.clear();
                }
                ArrayList arrayList2 = t70.d;
                if (!arrayList2.isEmpty()) {
                    synchronized (arrayList2) {
                        try {
                            if (t70Var2.a == null) {
                                t70Var2.a = new WeakHashMap();
                            }
                            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                                ArrayList arrayList3 = t70.d;
                                View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                                if (view2 == null) {
                                    arrayList3.remove(size);
                                } else {
                                    t70Var2.a.put(view2, Boolean.TRUE);
                                    for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                        t70Var2.a.put((View) parent, Boolean.TRUE);
                                    }
                                }
                            }
                        } finally {
                        }
                    }
                }
            }
            View a2 = t70Var2.a(view);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (a2 != null && !KeyEvent.isModifierKey(keyCode)) {
                    if (t70Var2.b == null) {
                        t70Var2.b = new SparseArray();
                    }
                    t70Var2.b.put(keyCode, new WeakReference(a2));
                }
            }
            if (a2 != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static View.AccessibilityDelegate c(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return o70.a(view);
        }
        if (!c) {
            if (b == null) {
                try {
                    Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                    b = declaredField;
                    declaredField.setAccessible(true);
                } catch (Throwable unused) {
                    c = true;
                    return null;
                }
            }
            try {
                Object obj = b.get(view);
                if (obj instanceof View.AccessibilityDelegate) {
                    return (View.AccessibilityDelegate) obj;
                }
                return null;
            } catch (Throwable unused2) {
                c = true;
                return null;
            }
        }
        return null;
    }

    public static String[] d(b4 b4Var) {
        if (Build.VERSION.SDK_INT >= 31) {
            return q70.a(b4Var);
        }
        return (String[]) b4Var.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void e(View view, int i) {
        Object tag;
        boolean z;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            int i2 = Build.VERSION.SDK_INT;
            CharSequence charSequence = null;
            if (i2 >= 28) {
                tag = n70.b(view);
            } else {
                tag = view.getTag(R.id.tag_accessibility_pane_title);
                if (!CharSequence.class.isInstance(tag)) {
                    tag = null;
                }
            }
            if (((CharSequence) tag) != null && view.isShown() && view.getWindowVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            int i3 = 32;
            if (g70.a(view) == 0 && !z) {
                if (i == 32) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    view.onInitializeAccessibilityEvent(obtain);
                    obtain.setEventType(32);
                    g70.g(obtain, i);
                    obtain.setSource(view);
                    view.onPopulateAccessibilityEvent(obtain);
                    List<CharSequence> text = obtain.getText();
                    if (i2 >= 28) {
                        charSequence = n70.b(view);
                    } else {
                        Object tag2 = view.getTag(R.id.tag_accessibility_pane_title);
                        if (CharSequence.class.isInstance(tag2)) {
                            charSequence = tag2;
                        }
                    }
                    text.add(charSequence);
                    accessibilityManager.sendAccessibilityEvent(obtain);
                    return;
                } else if (view.getParent() != null) {
                    try {
                        g70.e(view.getParent(), view, view, i);
                        return;
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                        return;
                    }
                } else {
                    return;
                }
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            if (!z) {
                i3 = 2048;
            }
            obtain2.setEventType(i3);
            g70.g(obtain2, i);
            if (z) {
                List<CharSequence> text2 = obtain2.getText();
                if (i2 >= 28) {
                    charSequence = n70.b(view);
                } else {
                    Object tag3 = view.getTag(R.id.tag_accessibility_pane_title);
                    if (CharSequence.class.isInstance(tag3)) {
                        charSequence = tag3;
                    }
                }
                text2.add(charSequence);
                if (e70.c(view) == 0) {
                    e70.s(view, 1);
                }
                ViewParent parent = view.getParent();
                while (true) {
                    if (!(parent instanceof View)) {
                        break;
                    } else if (e70.c((View) parent) == 4) {
                        e70.s(view, 2);
                        break;
                    } else {
                        parent = parent.getParent();
                    }
                }
            }
            view.sendAccessibilityEventUnchecked(obtain2);
        }
    }

    public static va f(View view, va vaVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + vaVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return q70.b(view, vaVar);
        }
        ns nsVar = (ns) view.getTag(R.id.tag_on_receive_content_listener);
        os osVar = d;
        if (nsVar != null) {
            va a2 = ((l40) nsVar).a(view, vaVar);
            if (a2 == null) {
                return null;
            }
            if (view instanceof os) {
                osVar = (os) view;
            }
            return osVar.a(a2);
        }
        if (view instanceof os) {
            osVar = (os) view;
        }
        return osVar.a(vaVar);
    }

    public static void g(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            o70.c(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void h(View view, w wVar) {
        u uVar;
        if (wVar == null && (c(view) instanceof u)) {
            wVar = new w();
        }
        if (wVar == null) {
            uVar = null;
        } else {
            uVar = wVar.b;
        }
        view.setAccessibilityDelegate(uVar);
    }

    public static void i(View view, CharSequence charSequence) {
        boolean z;
        new b70(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).d(view, charSequence);
        c70 c70Var = e;
        if (charSequence != null) {
            WeakHashMap weakHashMap = c70Var.a;
            if (view.isShown() && view.getWindowVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            weakHashMap.put(view, Boolean.valueOf(z));
            view.addOnAttachStateChangeListener(c70Var);
            if (g70.b(view)) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(c70Var);
                return;
            }
            return;
        }
        c70Var.a.remove(view);
        view.removeOnAttachStateChangeListener(c70Var);
        e70.o(view.getViewTreeObserver(), c70Var);
    }
}
