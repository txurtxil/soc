package defpackage;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;
/* renamed from: y0  reason: default package */
/* loaded from: classes.dex */
public final class y0 extends rf {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ View k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.k = actionMenuItemView;
    }

    @Override // defpackage.rf
    public final g20 b() {
        a1 a1Var;
        int i = this.j;
        View view = this.k;
        switch (i) {
            case 0:
                z0 z0Var = ((ActionMenuItemView) view).m;
                if (z0Var == null || (a1Var = ((b1) z0Var).a.u) == null) {
                    return null;
                }
                return a1Var.a();
            default:
                a1 a1Var2 = ((d1) view).d.t;
                if (a1Var2 == null) {
                    return null;
                }
                return a1Var2.a();
        }
    }

    @Override // defpackage.rf
    public final boolean c() {
        g20 b;
        int i = this.j;
        View view = this.k;
        switch (i) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) view;
                ro roVar = actionMenuItemView.k;
                if (roVar != null && roVar.a(actionMenuItemView.h) && (b = b()) != null && b.b()) {
                    return true;
                }
                return false;
            default:
                ((d1) view).d.l();
                return true;
        }
    }

    @Override // defpackage.rf
    public boolean d() {
        switch (this.j) {
            case 1:
                e1 e1Var = ((d1) this.k).d;
                if (e1Var.v != null) {
                    return false;
                }
                e1Var.d();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(d1 d1Var, d1 d1Var2) {
        super(d1Var2);
        this.k = d1Var;
    }
}
