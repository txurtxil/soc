package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
/* renamed from: z80  reason: default package */
/* loaded from: classes.dex */
public abstract class z80 extends e90 {
    public static boolean f = false;
    public static Method g;
    public static Class h;
    public static Field i;
    public static Field j;
    public final WindowInsets c;
    public lj d;
    public lj e;

    public z80(f90 f90Var, WindowInsets windowInsets) {
        super(f90Var);
        this.d = null;
        this.c = windowInsets;
    }

    private lj n(View view) {
        if (Build.VERSION.SDK_INT < 30) {
            if (!f) {
                o();
            }
            Method method = g;
            if (method != null && h != null && i != null) {
                try {
                    Object invoke = method.invoke(view, null);
                    if (invoke == null) {
                        Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) i.get(j.get(invoke));
                    if (rect != null) {
                        return lj.a(rect.left, rect.top, rect.right, rect.bottom);
                    }
                } catch (ReflectiveOperationException e) {
                    Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                }
            }
            return null;
        }
        throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
    }

    private static void o() {
        try {
            g = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            h = cls;
            i = cls.getDeclaredField("mVisibleInsets");
            j = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            i.setAccessible(true);
            j.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
        }
        f = true;
    }

    @Override // defpackage.e90
    public void d(View view) {
        lj n = n(view);
        if (n == null) {
            n = lj.e;
        }
        p(n);
    }

    @Override // defpackage.e90
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        return Objects.equals(this.e, ((z80) obj).e);
    }

    @Override // defpackage.e90
    public final lj g() {
        if (this.d == null) {
            WindowInsets windowInsets = this.c;
            this.d = lj.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.d;
    }

    @Override // defpackage.e90
    public f90 h(int i2, int i3, int i4, int i5) {
        y80 v80Var;
        f90 e = f90.e(this.c, null);
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30) {
            v80Var = new x80(e);
        } else if (i6 >= 29) {
            v80Var = new w80(e);
        } else {
            v80Var = new v80(e);
        }
        v80Var.d(f90.c(g(), i2, i3, i4, i5));
        v80Var.c(f90.c(f(), i2, i3, i4, i5));
        return v80Var.b();
    }

    @Override // defpackage.e90
    public boolean j() {
        return this.c.isRound();
    }

    public void p(lj ljVar) {
        this.e = ljVar;
    }

    @Override // defpackage.e90
    public void k(lj[] ljVarArr) {
    }

    @Override // defpackage.e90
    public void l(f90 f90Var) {
    }
}
