package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
/* renamed from: ka0  reason: default package */
/* loaded from: classes.dex */
public final class ka0 extends k60 {
    public final /* synthetic */ la0 s;
    public final /* synthetic */ ea0 t;
    public final /* synthetic */ View u;
    public final /* synthetic */ na0 v;

    public ka0(na0 na0Var, la0 la0Var, ea0 ea0Var, View view) {
        this.v = na0Var;
        this.s = la0Var;
        this.t = ea0Var;
        this.u = view;
    }

    @Override // defpackage.k60
    public final void b() {
        this.v.dispatchChangeStarting(this.s.b, false);
    }

    @Override // defpackage.k60
    public final void f(View view) {
        this.t.c(null);
        View view2 = this.u;
        view2.setAlpha(1.0f);
        view2.setTranslationX(0.0f);
        view2.setTranslationY(0.0f);
        la0 la0Var = this.s;
        RecyclerView.u uVar = la0Var.b;
        na0 na0Var = this.v;
        na0Var.dispatchChangeFinished(uVar, false);
        na0Var.mChangeAnimations.remove(la0Var.b);
        na0Var.dispatchFinishedWhenDone();
    }
}
