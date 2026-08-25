package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: m9  reason: default package */
/* loaded from: classes.dex */
public final class m9 extends bp implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public boolean A;
    public final Context b;
    public final int c;
    public final int d;
    public final boolean e;
    public final Handler f;
    public View n;
    public View o;
    public int q;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public boolean w;
    public kp x;
    public ViewTreeObserver y;
    public PopupWindow.OnDismissListener z;
    public final ArrayList g = new ArrayList();
    public final ArrayList h = new ArrayList();
    public final o4 i = new o4(2, this);
    public final j9 j = new j9(0, this);
    public final c9 k = new c9(8, this);
    public int l = 0;
    public int m = 0;
    public boolean v = false;

    public m9(Context context, View view, int i, boolean z) {
        this.b = context;
        this.n = view;
        this.d = i;
        this.e = z;
        WeakHashMap weakHashMap = u70.a;
        this.q = f70.d(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f = new Handler();
    }

    @Override // defpackage.lp
    public final void a(so soVar, boolean z) {
        int i;
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                if (soVar == ((l9) arrayList.get(i2)).b) {
                    break;
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 >= 0) {
            int i3 = i2 + 1;
            if (i3 < arrayList.size()) {
                ((l9) arrayList.get(i3)).b.c(false);
            }
            l9 l9Var = (l9) arrayList.remove(i2);
            so soVar2 = l9Var.b;
            jp jpVar = l9Var.a;
            h4 h4Var = jpVar.A;
            soVar2.r(this);
            if (this.A) {
                fp.b(h4Var, null);
                h4Var.setAnimationStyle(0);
            }
            jpVar.dismiss();
            int size2 = arrayList.size();
            if (size2 > 0) {
                this.q = ((l9) arrayList.get(size2 - 1)).c;
            } else {
                View view = this.n;
                WeakHashMap weakHashMap = u70.a;
                if (f70.d(view) == 1) {
                    i = 0;
                } else {
                    i = 1;
                }
                this.q = i;
            }
            if (size2 == 0) {
                dismiss();
                kp kpVar = this.x;
                if (kpVar != null) {
                    kpVar.a(soVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.y;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.y.removeGlobalOnLayoutListener(this.i);
                    }
                    this.y = null;
                }
                this.o.removeOnAttachStateChangeListener(this.j);
                this.z.onDismiss();
            } else if (z) {
                ((l9) arrayList.get(0)).b.c(false);
            }
        }
    }

    @Override // defpackage.g20
    public final boolean b() {
        ArrayList arrayList = this.h;
        if (arrayList.size() <= 0 || !((l9) arrayList.get(0)).a.A.isShowing()) {
            return false;
        }
        return true;
    }

    @Override // defpackage.g20
    public final void d() {
        if (!b()) {
            ArrayList arrayList = this.g;
            int size = arrayList.size();
            boolean z = false;
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                u((so) obj);
            }
            arrayList.clear();
            View view = this.n;
            this.o = view;
            if (view != null) {
                if (this.y == null) {
                    z = true;
                }
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                this.y = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.i);
                }
                this.o.addOnAttachStateChangeListener(this.j);
            }
        }
    }

    @Override // defpackage.g20
    public final void dismiss() {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        if (size > 0) {
            l9[] l9VarArr = (l9[]) arrayList.toArray(new l9[size]);
            for (int i = size - 1; i >= 0; i--) {
                l9 l9Var = l9VarArr[i];
                if (l9Var.a.A.isShowing()) {
                    l9Var.a.dismiss();
                }
            }
        }
    }

    @Override // defpackage.lp
    public final void e(kp kpVar) {
        this.x = kpVar;
    }

    @Override // defpackage.lp
    public final void g() {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ListAdapter adapter = ((l9) obj).a.c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((po) adapter).notifyDataSetChanged();
        }
    }

    @Override // defpackage.g20
    public final dd h() {
        ArrayList arrayList = this.h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((l9) arrayList.get(arrayList.size() - 1)).a.c;
    }

    @Override // defpackage.lp
    public final boolean j(j30 j30Var) {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            l9 l9Var = (l9) obj;
            if (j30Var == l9Var.b) {
                l9Var.a.c.requestFocus();
                return true;
            }
        }
        if (!j30Var.hasVisibleItems()) {
            return false;
        }
        l(j30Var);
        kp kpVar = this.x;
        if (kpVar != null) {
            kpVar.q(j30Var);
        }
        return true;
    }

    @Override // defpackage.lp
    public final boolean k() {
        return false;
    }

    @Override // defpackage.bp
    public final void l(so soVar) {
        soVar.b(this, this.b);
        if (b()) {
            u(soVar);
        } else {
            this.g.add(soVar);
        }
    }

    @Override // defpackage.bp
    public final void n(View view) {
        if (this.n != view) {
            this.n = view;
            int i = this.l;
            WeakHashMap weakHashMap = u70.a;
            this.m = Gravity.getAbsoluteGravity(i, f70.d(view));
        }
    }

    @Override // defpackage.bp
    public final void o(boolean z) {
        this.v = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        l9 l9Var;
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                l9Var = (l9) arrayList.get(i);
                if (!l9Var.a.A.isShowing()) {
                    break;
                }
                i++;
            } else {
                l9Var = null;
                break;
            }
        }
        if (l9Var != null) {
            l9Var.b.c(false);
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
        if (this.l != i) {
            this.l = i;
            View view = this.n;
            WeakHashMap weakHashMap = u70.a;
            this.m = Gravity.getAbsoluteGravity(i, f70.d(view));
        }
    }

    @Override // defpackage.bp
    public final void q(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // defpackage.bp
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // defpackage.bp
    public final void s(boolean z) {
        this.w = z;
    }

    @Override // defpackage.bp
    public final void t(int i) {
        this.s = true;
        this.u = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01cd  */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r8v3, types: [jl, jp] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(defpackage.so r20) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m9.u(so):void");
    }
}
