package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* renamed from: l3  reason: default package */
/* loaded from: classes.dex */
public final class l3 implements wr, qa, kp {
    public final /* synthetic */ int a;
    public final /* synthetic */ w3 b;

    public /* synthetic */ l3(w3 w3Var, int i) {
        this.a = i;
        this.b = w3Var;
    }

    @Override // defpackage.kp
    public void a(so soVar, boolean z) {
        boolean z2;
        int i;
        v3 v3Var;
        int i2 = this.a;
        w3 w3Var = this.b;
        switch (i2) {
            case 2:
                w3Var.t(soVar);
                return;
            default:
                so k = soVar.k();
                int i3 = 0;
                if (k != soVar) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    soVar = k;
                }
                v3[] v3VarArr = w3Var.L;
                if (v3VarArr != null) {
                    i = v3VarArr.length;
                } else {
                    i = 0;
                }
                while (true) {
                    if (i3 < i) {
                        v3Var = v3VarArr[i3];
                        if (v3Var == null || v3Var.h != soVar) {
                            i3++;
                        }
                    } else {
                        v3Var = null;
                    }
                }
                if (v3Var != null) {
                    if (z2) {
                        w3Var.s(v3Var.a, v3Var, k);
                        w3Var.u(v3Var, true);
                        return;
                    }
                    w3Var.u(v3Var, z);
                    return;
                }
                return;
        }
    }

    @Override // defpackage.wr
    public f90 g(View view, f90 f90Var) {
        boolean z;
        f90 f90Var2;
        y80 v80Var;
        int i;
        boolean z2;
        int a;
        int b;
        int a2;
        e90 e90Var = f90Var.a;
        int i2 = e90Var.g().b;
        w3 w3Var = this.b;
        Context context = w3Var.k;
        int i3 = e90Var.g().b;
        ActionBarContextView actionBarContextView = w3Var.v;
        if (actionBarContextView != null && (actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) w3Var.v.getLayoutParams();
            if (w3Var.v.isShown()) {
                if (w3Var.c0 == null) {
                    w3Var.c0 = new Rect();
                    w3Var.d0 = new Rect();
                }
                Rect rect = w3Var.c0;
                Rect rect2 = w3Var.d0;
                rect.set(f90Var.a(), e90Var.g().b, f90Var.b(), e90Var.g().d);
                ViewGroup viewGroup = w3Var.A;
                Method method = l80.a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception e) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
                    }
                }
                int i4 = rect.top;
                int i5 = rect.left;
                int i6 = rect.right;
                ViewGroup viewGroup2 = w3Var.A;
                WeakHashMap weakHashMap = u70.a;
                f90 a3 = k70.a(viewGroup2);
                if (a3 == null) {
                    a = 0;
                } else {
                    a = a3.a();
                }
                if (a3 == null) {
                    b = 0;
                } else {
                    b = a3.b();
                }
                if (marginLayoutParams.topMargin == i4 && marginLayoutParams.leftMargin == i5 && marginLayoutParams.rightMargin == i6) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i4;
                    marginLayoutParams.leftMargin = i5;
                    marginLayoutParams.rightMargin = i6;
                    z2 = true;
                }
                if (i4 > 0 && w3Var.C == null) {
                    View view2 = new View(context);
                    w3Var.C = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = a;
                    layoutParams.rightMargin = b;
                    w3Var.A.addView(w3Var.C, -1, layoutParams);
                } else {
                    View view3 = w3Var.C;
                    if (view3 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                        int i7 = marginLayoutParams2.height;
                        int i8 = marginLayoutParams.topMargin;
                        if (i7 != i8 || marginLayoutParams2.leftMargin != a || marginLayoutParams2.rightMargin != b) {
                            marginLayoutParams2.height = i8;
                            marginLayoutParams2.leftMargin = a;
                            marginLayoutParams2.rightMargin = b;
                            w3Var.C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                View view4 = w3Var.C;
                if (view4 != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z && view4.getVisibility() != 0) {
                    View view5 = w3Var.C;
                    if ((e70.g(view5) & 8192) != 0) {
                        a2 = za.a(context, R.color.abc_decor_view_status_guard_light);
                    } else {
                        a2 = za.a(context, R.color.abc_decor_view_status_guard);
                    }
                    view5.setBackgroundColor(a2);
                }
                if (!w3Var.H && z) {
                    i3 = 0;
                }
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            if (z2) {
                w3Var.v.setLayoutParams(marginLayoutParams);
            }
        } else {
            z = false;
        }
        View view6 = w3Var.C;
        if (view6 != null) {
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            view6.setVisibility(i);
        }
        if (i2 != i3) {
            int a4 = f90Var.a();
            int b2 = f90Var.b();
            int i9 = e90Var.g().d;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                v80Var = new x80(f90Var);
            } else if (i10 >= 29) {
                v80Var = new w80(f90Var);
            } else {
                v80Var = new v80(f90Var);
            }
            v80Var.d(lj.a(a4, i3, b2, i9));
            f90Var2 = v80Var.b();
        } else {
            f90Var2 = f90Var;
        }
        WeakHashMap weakHashMap2 = u70.a;
        WindowInsets d = f90Var2.d();
        if (d != null) {
            WindowInsets b3 = h70.b(view, d);
            if (!b3.equals(d)) {
                return f90.e(b3, view);
            }
            return f90Var2;
        }
        return f90Var2;
    }

    @Override // defpackage.kp
    public boolean q(so soVar) {
        Window.Callback callback;
        int i = this.a;
        w3 w3Var = this.b;
        switch (i) {
            case 2:
                Window.Callback callback2 = w3Var.l.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, soVar);
                }
                return true;
            default:
                if (soVar == soVar.k() && w3Var.F && (callback = w3Var.l.getCallback()) != null && !w3Var.Q) {
                    callback.onMenuOpened(108, soVar);
                }
                return true;
        }
    }
}
