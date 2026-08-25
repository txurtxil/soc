package defpackage;

import androidx.appcompat.widget.ActionMenuView;
/* renamed from: d50  reason: default package */
/* loaded from: classes.dex */
public final class d50 implements kp {
    public boolean a;
    public final /* synthetic */ e50 b;

    public d50(e50 e50Var) {
        this.b = e50Var;
    }

    @Override // defpackage.kp
    public final void a(so soVar, boolean z) {
        e1 e1Var;
        if (this.a) {
            return;
        }
        this.a = true;
        e50 e50Var = this.b;
        ActionMenuView actionMenuView = e50Var.s.a.a;
        if (actionMenuView != null && (e1Var = actionMenuView.u) != null) {
            e1Var.d();
            a1 a1Var = e1Var.u;
            if (a1Var != null && a1Var.b()) {
                a1Var.i.dismiss();
            }
        }
        e50Var.t.onPanelClosed(108, soVar);
        this.a = false;
    }

    @Override // defpackage.kp
    public final boolean q(so soVar) {
        this.b.t.onMenuOpened(108, soVar);
        return true;
    }
}
