package defpackage;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import com.google.android.apps.auto.sdk.ui.R;
import com.google.android.material.snackbar.SnackbarContentLayout;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: p7  reason: default package */
/* loaded from: classes.dex */
public abstract class p7 {
    public final int a;
    public final int b;
    public final int c;
    public final TimeInterpolator d;
    public final TimeInterpolator e;
    public final TimeInterpolator f;
    public final ViewGroup g;
    public final Context h;
    public final o7 i;
    public final SnackbarContentLayout j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public final AccessibilityManager q;
    public final m7 r = new m7(this);
    public static final ue s = v2.b;
    public static final LinearInterpolator t = v2.a;
    public static final ue u = v2.c;
    public static final int[] w = {R.attr.snackbarStyle};
    public static final String x = p7.class.getSimpleName();
    public static final Handler v = new Handler(Looper.getMainLooper(), new Object());

    public p7(Context context, ViewGroup viewGroup, View view, SnackbarContentLayout snackbarContentLayout) {
        int i;
        int i2;
        int i3;
        int i4;
        if (view != null) {
            if (snackbarContentLayout != null) {
                this.g = viewGroup;
                this.j = snackbarContentLayout;
                this.h = context;
                s8.n(context, s8.f, "Theme.AppCompat");
                LayoutInflater from = LayoutInflater.from(context);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(w);
                int resourceId = obtainStyledAttributes.getResourceId(0, -1);
                obtainStyledAttributes.recycle();
                if (resourceId != -1) {
                    i = R.layout.mtrl_layout_snackbar;
                } else {
                    i = R.layout.design_layout_snackbar;
                }
                o7 o7Var = (o7) from.inflate(i, viewGroup, false);
                this.i = o7Var;
                o7.a(o7Var, this);
                if (view instanceof SnackbarContentLayout) {
                    SnackbarContentLayout snackbarContentLayout2 = (SnackbarContentLayout) view;
                    float actionTextColorAlpha = o7Var.getActionTextColorAlpha();
                    if (actionTextColorAlpha != 1.0f) {
                        snackbarContentLayout2.b.setTextColor(s8.w(s8.p(snackbarContentLayout2, R.attr.colorSurface), snackbarContentLayout2.b.getCurrentTextColor(), actionTextColorAlpha));
                    }
                    snackbarContentLayout2.setMaxInlineActionWidth(o7Var.getMaxInlineActionWidth());
                }
                o7Var.addView(view);
                WeakHashMap weakHashMap = u70.a;
                g70.f(o7Var, 1);
                e70.s(o7Var, 1);
                o7Var.setFitsSystemWindows(true);
                j70.u(o7Var, new c9(6, this));
                u70.h(o7Var, new l7(0, this));
                this.q = (AccessibilityManager) context.getSystemService("accessibility");
                TypedValue t2 = em.t(context, R.attr.motionDurationLong2);
                if (t2 != null && t2.type == 16) {
                    i2 = t2.data;
                } else {
                    i2 = 250;
                }
                this.c = i2;
                TypedValue t3 = em.t(context, R.attr.motionDurationLong2);
                if (t3 != null && t3.type == 16) {
                    i3 = t3.data;
                } else {
                    i3 = 150;
                }
                this.a = i3;
                TypedValue t4 = em.t(context, R.attr.motionDurationMedium1);
                if (t4 != null && t4.type == 16) {
                    i4 = t4.data;
                } else {
                    i4 = 75;
                }
                this.b = i4;
                this.d = em.v(context, t);
                this.f = em.v(context, u);
                this.e = em.v(context, s);
                return;
            }
            c2.n("Transient bottom bar must have non-null callback");
            throw null;
        }
        c2.n("Transient bottom bar must have non-null content");
        throw null;
    }

    public final void a() {
        vp c = vp.c();
        m7 m7Var = this.r;
        synchronized (c.a) {
            try {
                if (c.d(m7Var)) {
                    c.c = null;
                    if (((n20) c.d) != null) {
                        c.h();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ViewParent parent = this.i.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.i);
        }
    }

    public final void b() {
        vp c = vp.c();
        m7 m7Var = this.r;
        synchronized (c.a) {
            try {
                if (c.d(m7Var)) {
                    c.g((n20) c.c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        boolean z = true;
        AccessibilityManager accessibilityManager = this.q;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            z = false;
        }
        o7 o7Var = this.i;
        if (z) {
            o7Var.post(new k7(this, 2));
            return;
        }
        if (o7Var.getParent() != null) {
            o7Var.setVisibility(0);
        }
        b();
    }

    public final void d() {
        boolean z;
        o7 o7Var = this.i;
        ViewGroup.LayoutParams layoutParams = o7Var.getLayoutParams();
        boolean z2 = layoutParams instanceof ViewGroup.MarginLayoutParams;
        String str = x;
        if (!z2) {
            Log.w(str, "Unable to update margins because layout params are not MarginLayoutParams");
        } else if (o7Var.j == null) {
            Log.w(str, "Unable to update margins because original view margins are not set");
        } else if (o7Var.getParent() != null) {
            int i = this.k;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            Rect rect = o7Var.j;
            int i2 = rect.bottom + i;
            int i3 = rect.left + this.l;
            int i4 = rect.right + this.m;
            int i5 = rect.top;
            if (marginLayoutParams.bottomMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4 && marginLayoutParams.topMargin == i5) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                marginLayoutParams.bottomMargin = i2;
                marginLayoutParams.leftMargin = i3;
                marginLayoutParams.rightMargin = i4;
                marginLayoutParams.topMargin = i5;
                o7Var.requestLayout();
            }
            if ((z || this.o != this.n) && Build.VERSION.SDK_INT >= 29 && this.n > 0) {
                o7Var.getLayoutParams();
            }
        }
    }
}
