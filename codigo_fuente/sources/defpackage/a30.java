package defpackage;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* renamed from: a30  reason: default package */
/* loaded from: classes.dex */
public final class a30 extends i1 implements qo {
    public Context c;
    public ActionBarContextView d;
    public ko e;
    public WeakReference f;
    public boolean g;
    public so h;

    @Override // defpackage.i1
    public final void a() {
        if (this.g) {
            return;
        }
        this.g = true;
        this.e.D(this);
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
        return this.h;
    }

    @Override // defpackage.i1
    public final MenuInflater d() {
        return new r30(this.d.getContext());
    }

    @Override // defpackage.qo
    public final boolean e(so soVar, MenuItem menuItem) {
        return ((vp) this.e.b).e(this, menuItem);
    }

    @Override // defpackage.i1
    public final CharSequence f() {
        return this.d.getSubtitle();
    }

    @Override // defpackage.i1
    public final CharSequence g() {
        return this.d.getTitle();
    }

    @Override // defpackage.i1
    public final void h() {
        this.e.E(this, this.h);
    }

    @Override // defpackage.i1
    public final boolean i() {
        return this.d.t;
    }

    @Override // defpackage.i1
    public final void j(View view) {
        WeakReference weakReference;
        this.d.setCustomView(view);
        if (view != null) {
            weakReference = new WeakReference(view);
        } else {
            weakReference = null;
        }
        this.f = weakReference;
    }

    @Override // defpackage.i1
    public final void k(int i) {
        l(this.c.getString(i));
    }

    @Override // defpackage.i1
    public final void l(CharSequence charSequence) {
        this.d.setSubtitle(charSequence);
    }

    @Override // defpackage.qo
    public final void m(so soVar) {
        h();
        e1 e1Var = this.d.d;
        if (e1Var != null) {
            e1Var.l();
        }
    }

    @Override // defpackage.i1
    public final void n(int i) {
        o(this.c.getString(i));
    }

    @Override // defpackage.i1
    public final void o(CharSequence charSequence) {
        this.d.setTitle(charSequence);
    }

    @Override // defpackage.i1
    public final void p(boolean z) {
        this.b = z;
        this.d.setTitleOptional(z);
    }
}
