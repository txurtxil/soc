package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.WeakHashMap;
/* renamed from: ep  reason: default package */
/* loaded from: classes.dex */
public class ep {
    public final Context a;
    public final so b;
    public final boolean c;
    public final int d;
    public View e;
    public boolean g;
    public kp h;
    public bp i;
    public PopupWindow.OnDismissListener j;
    public int f = 8388611;
    public final cp k = new cp(this);

    public ep(Context context, so soVar, View view, boolean z, int i, int i2) {
        this.a = context;
        this.b = soVar;
        this.e = view;
        this.c = z;
        this.d = i;
    }

    public final bp a() {
        bp b30Var;
        if (this.i == null) {
            Context context = this.a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            dp.a(defaultDisplay, point);
            int min = Math.min(point.x, point.y);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width);
            Context context2 = this.a;
            if (min >= dimensionPixelSize) {
                b30Var = new m9(context2, this.e, this.d, this.c);
            } else {
                b30Var = new b30(context2, this.b, this.e, this.d, this.c);
            }
            b30Var.l(this.b);
            b30Var.r(this.k);
            b30Var.n(this.e);
            b30Var.e(this.h);
            b30Var.o(this.g);
            b30Var.p(this.f);
            this.i = b30Var;
        }
        return this.i;
    }

    public final boolean b() {
        bp bpVar = this.i;
        if (bpVar != null && bpVar.b()) {
            return true;
        }
        return false;
    }

    public void c() {
        this.i = null;
        PopupWindow.OnDismissListener onDismissListener = this.j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i, int i2, boolean z, boolean z2) {
        bp a = a();
        a.s(z2);
        if (z) {
            int i3 = this.f;
            View view = this.e;
            WeakHashMap weakHashMap = u70.a;
            if ((Gravity.getAbsoluteGravity(i3, f70.d(view)) & 7) == 5) {
                i -= this.e.getWidth();
            }
            a.q(i);
            a.t(i2);
            int i4 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a.a = new Rect(i - i4, i2 - i4, i + i4, i2 + i4);
        }
        a.d();
    }
}
