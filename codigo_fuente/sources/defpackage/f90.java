package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;
/* renamed from: f90  reason: default package */
/* loaded from: classes.dex */
public final class f90 {
    public static final f90 b;
    public final e90 a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            b = d90.l;
        } else {
            b = e90.b;
        }
    }

    public f90(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.a = new d90(this, windowInsets);
        } else if (i >= 29) {
            this.a = new c90(this, windowInsets);
        } else if (i >= 28) {
            this.a = new b90(this, windowInsets);
        } else {
            this.a = new a90(this, windowInsets);
        }
    }

    public static lj c(lj ljVar, int i, int i2, int i3, int i4) {
        int max = Math.max(0, ljVar.a - i);
        int max2 = Math.max(0, ljVar.b - i2);
        int max3 = Math.max(0, ljVar.c - i3);
        int max4 = Math.max(0, ljVar.d - i4);
        if (max == i && max2 == i2 && max3 == i3 && max4 == i4) {
            return ljVar;
        }
        return lj.a(max, max2, max3, max4);
    }

    public static f90 e(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        f90 f90Var = new f90(windowInsets);
        if (view != null) {
            WeakHashMap weakHashMap = u70.a;
            if (g70.b(view)) {
                f90 a = k70.a(view);
                e90 e90Var = f90Var.a;
                e90Var.l(a);
                e90Var.d(view.getRootView());
            }
        }
        return f90Var;
    }

    public final int a() {
        return this.a.g().a;
    }

    public final int b() {
        return this.a.g().c;
    }

    public final WindowInsets d() {
        e90 e90Var = this.a;
        if (e90Var instanceof z80) {
            return ((z80) e90Var).c;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f90)) {
            return false;
        }
        return vr.a(this.a, ((f90) obj).a);
    }

    public final int hashCode() {
        e90 e90Var = this.a;
        if (e90Var == null) {
            return 0;
        }
        return e90Var.hashCode();
    }

    public f90() {
        this.a = new e90(this);
    }
}
