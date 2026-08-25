package defpackage;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* renamed from: s80  reason: default package */
/* loaded from: classes.dex */
public final class s80 extends i1 implements qo {
    public final Context c;
    public final so d;
    public ko e;
    public WeakReference f;
    public final /* synthetic */ t80 g;

    public s80(t80 t80Var, Context context, ko koVar) {
        this.g = t80Var;
        this.c = context;
        this.e = koVar;
        so soVar = new so(context);
        soVar.l = 1;
        this.d = soVar;
        soVar.e = this;
    }

    @Override // defpackage.i1
    public final void a() {
        t80 t80Var = this.g;
        if (t80Var.A != this) {
            return;
        }
        if (t80Var.H) {
            t80Var.B = this;
            t80Var.C = this.e;
        } else {
            this.e.D(this);
        }
        this.e = null;
        t80Var.L(false);
        ActionBarContextView actionBarContextView = t80Var.x;
        if (actionBarContextView.k == null) {
            actionBarContextView.e();
        }
        t80Var.u.setHideOnContentScrollEnabled(t80Var.M);
        t80Var.A = null;
    }

    @Override // defpackage.i1
    public final View b() {
        WeakReference weakReference = this.f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // defpackage.i1
    public final so c() {
        return this.d;
    }

    @Override // defpackage.i1
    public final MenuInflater d() {
        return new r30(this.c);
    }

    @Override // defpackage.qo
    public final boolean e(so soVar, MenuItem menuItem) {
        ko koVar = this.e;
        if (koVar != null) {
            return ((vp) koVar.b).e(this, menuItem);
        }
        return false;
    }

    @Override // defpackage.i1
    public final CharSequence f() {
        return this.g.x.getSubtitle();
    }

    @Override // defpackage.i1
    public final CharSequence g() {
        return this.g.x.getTitle();
    }

    @Override // defpackage.i1
    public final void h() {
        if (this.g.A != this) {
            return;
        }
        so soVar = this.d;
        soVar.w();
        try {
            this.e.E(this, soVar);
        } finally {
            soVar.v();
        }
    }

    @Override // defpackage.i1
    public final boolean i() {
        return this.g.x.t;
    }

    @Override // defpackage.i1
    public final void j(View view) {
        this.g.x.setCustomView(view);
        this.f = new WeakReference(view);
    }

    @Override // defpackage.i1
    public final void k(int i) {
        l(this.g.s.getResources().getString(i));
    }

    @Override // defpackage.i1
    public final void l(CharSequence charSequence) {
        this.g.x.setSubtitle(charSequence);
    }

    @Override // defpackage.qo
    public final void m(so soVar) {
        if (this.e != null) {
            h();
            e1 e1Var = this.g.x.d;
            if (e1Var != null) {
                e1Var.l();
            }
        }
    }

    @Override // defpackage.i1
    public final void n(int i) {
        o(this.g.s.getResources().getString(i));
    }

    @Override // defpackage.i1
    public final void o(CharSequence charSequence) {
        this.g.x.setTitle(charSequence);
    }

    @Override // defpackage.i1
    public final void p(boolean z) {
        this.b = z;
        this.g.x.setTitleOptional(z);
    }
}
