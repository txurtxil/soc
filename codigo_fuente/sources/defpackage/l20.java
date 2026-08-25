package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import com.google.android.apps.auto.sdk.ui.R;
import com.google.android.material.snackbar.SnackbarContentLayout;
/* renamed from: l20  reason: default package */
/* loaded from: classes.dex */
public final class l20 extends p7 {
    public static final int[] z = {R.attr.snackbarButtonStyle, R.attr.snackbarTextViewStyle};
    public final AccessibilityManager y;

    public l20(Context context, ViewGroup viewGroup, SnackbarContentLayout snackbarContentLayout, SnackbarContentLayout snackbarContentLayout2) {
        super(context, viewGroup, snackbarContentLayout, snackbarContentLayout2);
        this.y = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public static l20 e(View view, CharSequence charSequence) {
        ViewGroup viewGroup;
        int i;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    viewGroup = (ViewGroup) view;
                    break;
                }
                viewGroup2 = (ViewGroup) view;
            }
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                    continue;
                } else {
                    view = null;
                    continue;
                }
            }
            if (view == null) {
                viewGroup = viewGroup2;
                break;
            }
        }
        if (viewGroup != null) {
            Context context = viewGroup.getContext();
            LayoutInflater from = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(z);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
            obtainStyledAttributes.recycle();
            if (resourceId != -1 && resourceId2 != -1) {
                i = R.layout.mtrl_layout_snackbar_include;
            } else {
                i = R.layout.design_layout_snackbar_include;
            }
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate(i, viewGroup, false);
            l20 l20Var = new l20(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
            ((SnackbarContentLayout) l20Var.i.getChildAt(0)).getMessageView().setText(charSequence);
            return l20Var;
        }
        c2.n("No suitable parent found from the given view. Please provide a valid view.");
        return null;
    }

    public final void f() {
        int i;
        vp c = vp.c();
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 29) {
            i = this.y.getRecommendedTimeoutMillis(0, 3);
        } else {
            i = 0;
        }
        m7 m7Var = this.r;
        synchronized (c.a) {
            try {
                if (c.d(m7Var)) {
                    n20 n20Var = (n20) c.c;
                    n20Var.b = i;
                    ((Handler) c.b).removeCallbacksAndMessages(n20Var);
                    c.g((n20) c.c);
                    return;
                }
                n20 n20Var2 = (n20) c.d;
                if (n20Var2 != null && n20Var2.a.get() == m7Var) {
                    z2 = true;
                }
                if (z2) {
                    ((n20) c.d).b = i;
                } else {
                    c.d = new n20(i, m7Var);
                }
                n20 n20Var3 = (n20) c.c;
                if (n20Var3 != null && c.a(n20Var3, 4)) {
                    return;
                }
                c.c = null;
                c.h();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
