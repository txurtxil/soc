package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: j30  reason: default package */
/* loaded from: classes.dex */
public final class j30 extends so implements SubMenu {
    public final wo A;
    public final so z;

    public j30(Context context, so soVar, wo woVar) {
        super(context);
        this.z = soVar;
        this.A = woVar;
    }

    @Override // defpackage.so
    public final boolean d(wo woVar) {
        return this.z.d(woVar);
    }

    @Override // defpackage.so
    public final boolean e(so soVar, MenuItem menuItem) {
        if (!super.e(soVar, menuItem) && !this.z.e(soVar, menuItem)) {
            return false;
        }
        return true;
    }

    @Override // defpackage.so
    public final boolean f(wo woVar) {
        return this.z.f(woVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.A;
    }

    @Override // defpackage.so
    public final String j() {
        int i;
        wo woVar = this.A;
        if (woVar != null) {
            i = woVar.a;
        } else {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        return t20.d(i, "android:menu:actionviewstates:");
    }

    @Override // defpackage.so
    public final so k() {
        return this.z.k();
    }

    @Override // defpackage.so
    public final boolean m() {
        return this.z.m();
    }

    @Override // defpackage.so
    public final boolean n() {
        return this.z.n();
    }

    @Override // defpackage.so
    public final boolean o() {
        return this.z.o();
    }

    @Override // defpackage.so, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.z.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // defpackage.so, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.z.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.A.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        u(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        u(i, null, 0, null, null);
        return this;
    }
}
