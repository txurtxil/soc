package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
/* renamed from: ja0  reason: default package */
/* loaded from: classes.dex */
public final class ja0 extends k60 {
    public final /* synthetic */ RecyclerView.u s;
    public final /* synthetic */ int t;
    public final /* synthetic */ int u;
    public final /* synthetic */ ea0 v;
    public final /* synthetic */ na0 w;

    public ja0(na0 na0Var, RecyclerView.u uVar, int i, int i2, ea0 ea0Var) {
        this.w = na0Var;
        this.s = uVar;
        this.t = i;
        this.u = i2;
        this.v = ea0Var;
    }

    @Override // defpackage.k60
    public final void b() {
        this.w.dispatchMoveStarting(this.s);
    }

    @Override // defpackage.k60
    public final void f(View view) {
        this.v.c(null);
        RecyclerView.u uVar = this.s;
        na0 na0Var = this.w;
        na0Var.dispatchMoveFinished(uVar);
        na0Var.mMoveAnimations.remove(this.s);
        na0Var.dispatchFinishedWhenDone();
    }

    @Override // defpackage.k60
    public final void g(View view) {
        if (this.t != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.u != 0) {
            view.setTranslationY(0.0f);
        }
    }
}
