package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
/* renamed from: z3  reason: default package */
/* loaded from: classes.dex */
public final class z3 {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static z3 c;
    public rx a;

    public static synchronized z3 a() {
        z3 z3Var;
        synchronized (z3.class) {
            try {
                if (c == null) {
                    c();
                }
                z3Var = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z3Var;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [z3, java.lang.Object] */
    public static synchronized void c() {
        synchronized (z3.class) {
            if (c == null) {
                ?? obj = new Object();
                c = obj;
                obj.a = rx.c();
                rx rxVar = c.a;
                y3 y3Var = new y3();
                synchronized (rxVar) {
                    rxVar.e = y3Var;
                }
            }
        }
    }

    public static void d(Drawable drawable, p40 p40Var, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        PorterDuff.Mode mode2 = rx.f;
        int[] state = drawable.getState();
        int[] iArr2 = xc.a;
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = p40Var.d;
            if (!z && !p40Var.c) {
                drawable.clearColorFilter();
                return;
            }
            PorterDuffColorFilter porterDuffColorFilter = null;
            if (z) {
                colorStateList = p40Var.a;
            } else {
                colorStateList = null;
            }
            if (p40Var.c) {
                mode = p40Var.b;
            } else {
                mode = rx.f;
            }
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = rx.f(colorStateList.getColorForState(iArr, 0), mode);
            }
            drawable.setColorFilter(porterDuffColorFilter);
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    public final synchronized Drawable b(Context context, int i) {
        return this.a.d(context, i);
    }
}
