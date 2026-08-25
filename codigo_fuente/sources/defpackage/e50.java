package defpackage;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.Window;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: e50  reason: default package */
/* loaded from: classes.dex */
public final class e50 extends k60 {
    public final h50 s;
    public final Window.Callback t;
    public final c50 u;
    public boolean v;
    public boolean w;
    public boolean x;
    public final ArrayList y = new ArrayList();
    public final c7 z = new c7(15, this);

    public e50(Toolbar toolbar, CharSequence charSequence, q3 q3Var) {
        c50 c50Var = new c50(this);
        toolbar.getClass();
        h50 h50Var = new h50(toolbar, false);
        this.s = h50Var;
        q3Var.getClass();
        this.t = q3Var;
        h50Var.k = q3Var;
        toolbar.setOnMenuItemClickListener(c50Var);
        boolean z = h50Var.g;
        if (!z) {
            h50Var.h = charSequence;
            if ((h50Var.b & 8) != 0) {
                toolbar.setTitle(charSequence);
                if (z) {
                    u70.i(toolbar.getRootView(), charSequence);
                }
            }
        }
        this.u = new c50(this);
    }

    @Override // defpackage.k60
    public final boolean A(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            B();
        }
        return true;
    }

    @Override // defpackage.k60
    public final boolean B() {
        return this.s.a.v();
    }

    @Override // defpackage.k60
    public final void F(boolean z) {
        h50 h50Var = this.s;
        h50Var.a((h50Var.b & (-5)) | 4);
    }

    @Override // defpackage.k60
    public final void I(CharSequence charSequence) {
        h50 h50Var = this.s;
        if (!h50Var.g) {
            Toolbar toolbar = h50Var.a;
            h50Var.h = charSequence;
            if ((h50Var.b & 8) != 0) {
                toolbar.setTitle(charSequence);
                if (h50Var.g) {
                    u70.i(toolbar.getRootView(), charSequence);
                }
            }
        }
    }

    public final Menu L() {
        boolean z = this.w;
        h50 h50Var = this.s;
        if (!z) {
            d50 d50Var = new d50(this);
            c50 c50Var = new c50(this);
            Toolbar toolbar = h50Var.a;
            toolbar.O = d50Var;
            toolbar.P = c50Var;
            ActionMenuView actionMenuView = toolbar.a;
            if (actionMenuView != null) {
                actionMenuView.v = d50Var;
                actionMenuView.w = c50Var;
            }
            this.w = true;
        }
        return h50Var.a.getMenu();
    }

    @Override // defpackage.k60
    public final boolean h() {
        e1 e1Var;
        ActionMenuView actionMenuView = this.s.a.a;
        if (actionMenuView != null && (e1Var = actionMenuView.u) != null && e1Var.d()) {
            return true;
        }
        return false;
    }

    @Override // defpackage.k60
    public final boolean i() {
        wo woVar;
        y40 y40Var = this.s.a.N;
        if (y40Var != null && (woVar = y40Var.b) != null) {
            if (y40Var == null) {
                woVar = null;
            }
            if (woVar != null) {
                woVar.collapseActionView();
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.k60
    public final void n(boolean z) {
        if (z != this.x) {
            this.x = z;
            ArrayList arrayList = this.y;
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            c2.l();
        }
    }

    @Override // defpackage.k60
    public final int t() {
        return this.s.b;
    }

    @Override // defpackage.k60
    public final Context u() {
        return this.s.a.getContext();
    }

    @Override // defpackage.k60
    public final boolean v() {
        h50 h50Var = this.s;
        Toolbar toolbar = h50Var.a;
        c7 c7Var = this.z;
        toolbar.removeCallbacks(c7Var);
        Toolbar toolbar2 = h50Var.a;
        WeakHashMap weakHashMap = u70.a;
        e70.m(toolbar2, c7Var);
        return true;
    }

    @Override // defpackage.k60
    public final void y() {
        this.s.a.removeCallbacks(this.z);
    }

    @Override // defpackage.k60
    public final boolean z(int i, KeyEvent keyEvent) {
        Menu L = L();
        if (L == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() == 1) {
            z = false;
        }
        L.setQwertyMode(z);
        return L.performShortcut(i, keyEvent, 0);
    }

    @Override // defpackage.k60
    public final void x() {
    }

    @Override // defpackage.k60
    public final void E(boolean z) {
    }

    @Override // defpackage.k60
    public final void G(boolean z) {
    }
}
