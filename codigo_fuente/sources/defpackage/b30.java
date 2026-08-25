package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.WeakHashMap;
/* renamed from: b30  reason: default package */
/* loaded from: classes.dex */
public final class b30 extends bp implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public final Context b;
    public final so c;
    public final po d;
    public final boolean e;
    public final int f;
    public final int g;
    public final jp h;
    public PopupWindow.OnDismissListener k;
    public View l;
    public View m;
    public kp n;
    public ViewTreeObserver o;
    public boolean q;
    public boolean r;
    public int s;
    public boolean u;
    public final o4 i = new o4(3, this);
    public final j9 j = new j9(2, this);
    public int t = 0;

    /* JADX WARN: Type inference failed for: r8v1, types: [jl, jp] */
    public b30(Context context, so soVar, View view, int i, boolean z) {
        this.b = context;
        this.c = soVar;
        this.e = z;
        this.d = new po(soVar, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.g = i;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.l = view;
        this.h = new jl(context, null, i, 0);
        soVar.b(this, context);
    }

    @Override // defpackage.lp
    public final void a(so soVar, boolean z) {
        if (soVar == this.c) {
            dismiss();
            kp kpVar = this.n;
            if (kpVar != null) {
                kpVar.a(soVar, z);
            }
        }
    }

    @Override // defpackage.g20
    public final boolean b() {
        if (!this.q && this.h.A.isShowing()) {
            return true;
        }
        return false;
    }

    @Override // defpackage.g20
    public final void d() {
        View view;
        boolean z;
        Rect rect;
        if (b()) {
            return;
        }
        if (!this.q && (view = this.l) != null) {
            this.m = view;
            jp jpVar = this.h;
            h4 h4Var = jpVar.A;
            h4 h4Var2 = jpVar.A;
            h4Var.setOnDismissListener(this);
            jpVar.q = this;
            jpVar.z = true;
            h4Var2.setFocusable(true);
            View view2 = this.m;
            if (this.o == null) {
                z = true;
            } else {
                z = false;
            }
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.o = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.i);
            }
            view2.addOnAttachStateChangeListener(this.j);
            jpVar.o = view2;
            jpVar.l = this.t;
            boolean z2 = this.r;
            Context context = this.b;
            po poVar = this.d;
            if (!z2) {
                this.s = bp.m(poVar, context, this.f);
                this.r = true;
            }
            jpVar.r(this.s);
            h4Var2.setInputMethodMode(2);
            Rect rect2 = this.a;
            if (rect2 != null) {
                rect = new Rect(rect2);
            } else {
                rect = null;
            }
            jpVar.y = rect;
            jpVar.d();
            dd ddVar = jpVar.c;
            ddVar.setOnKeyListener(this);
            if (this.u) {
                so soVar = this.c;
                if (soVar.m != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) ddVar, false);
                    TextView textView = (TextView) frameLayout.findViewById(16908310);
                    if (textView != null) {
                        textView.setText(soVar.m);
                    }
                    frameLayout.setEnabled(false);
                    ddVar.addHeaderView(frameLayout, null, false);
                }
            }
            jpVar.q(poVar);
            jpVar.d();
            return;
        }
        c2.g("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // defpackage.g20
    public final void dismiss() {
        if (b()) {
            this.h.dismiss();
        }
    }

    @Override // defpackage.lp
    public final void e(kp kpVar) {
        this.n = kpVar;
    }

    @Override // defpackage.lp
    public final void g() {
        this.r = false;
        po poVar = this.d;
        if (poVar != null) {
            poVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.g20
    public final dd h() {
        return this.h.c;
    }

    @Override // defpackage.lp
    public final boolean j(j30 j30Var) {
        boolean z;
        if (j30Var.hasVisibleItems()) {
            ep epVar = new ep(this.b, j30Var, this.m, this.e, this.g, 0);
            kp kpVar = this.n;
            epVar.h = kpVar;
            bp bpVar = epVar.i;
            if (bpVar != null) {
                bpVar.e(kpVar);
            }
            int size = j30Var.f.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    MenuItem item = j30Var.getItem(i);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    z = false;
                    break;
                }
            }
            epVar.g = z;
            bp bpVar2 = epVar.i;
            if (bpVar2 != null) {
                bpVar2.o(z);
            }
            epVar.j = this.k;
            this.k = null;
            this.c.c(false);
            jp jpVar = this.h;
            int i2 = jpVar.f;
            int o = jpVar.o();
            int i3 = this.t;
            View view = this.l;
            WeakHashMap weakHashMap = u70.a;
            if ((Gravity.getAbsoluteGravity(i3, f70.d(view)) & 7) == 5) {
                i2 += this.l.getWidth();
            }
            if (!epVar.b()) {
                if (epVar.e != null) {
                    epVar.d(i2, o, true, true);
                }
            }
            kp kpVar2 = this.n;
            if (kpVar2 != null) {
                kpVar2.q(j30Var);
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.lp
    public final boolean k() {
        return false;
    }

    @Override // defpackage.bp
    public final void n(View view) {
        this.l = view;
    }

    @Override // defpackage.bp
    public final void o(boolean z) {
        this.d.c = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.q = true;
        this.c.c(true);
        ViewTreeObserver viewTreeObserver = this.o;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.o = this.m.getViewTreeObserver();
            }
            this.o.removeGlobalOnLayoutListener(this.i);
            this.o = null;
        }
        this.m.removeOnAttachStateChangeListener(this.j);
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // defpackage.bp
    public final void p(int i) {
        this.t = i;
    }

    @Override // defpackage.bp
    public final void q(int i) {
        this.h.f = i;
    }

    @Override // defpackage.bp
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    @Override // defpackage.bp
    public final void s(boolean z) {
        this.u = z;
    }

    @Override // defpackage.bp
    public final void t(int i) {
        this.h.k(i);
    }

    @Override // defpackage.bp
    public final void l(so soVar) {
    }
}
