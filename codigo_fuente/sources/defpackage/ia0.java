package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
/* renamed from: ia0  reason: default package */
/* loaded from: classes.dex */
public final class ia0 extends k60 {
    public final /* synthetic */ int s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ ea0 u;
    public final /* synthetic */ na0 v;

    public /* synthetic */ ia0(na0 na0Var, Object obj, ea0 ea0Var, int i) {
        this.s = i;
        this.v = na0Var;
        this.t = obj;
        this.u = ea0Var;
    }

    private final void L() {
        this.v.dispatchRemoveStarting((RecyclerView.u) this.t);
    }

    private final void M() {
        this.v.dispatchAddStarting((RecyclerView.u) this.t);
    }

    private final void N(View view) {
        this.u.c(null);
        view.setAlpha(1.0f);
        Object obj = this.t;
        na0 na0Var = this.v;
        na0Var.dispatchRemoveFinished((RecyclerView.u) obj);
        na0Var.mRemoveAnimations.remove((RecyclerView.u) obj);
        na0Var.dispatchFinishedWhenDone();
    }

    private final void O(View view) {
        this.u.c(null);
        Object obj = this.t;
        na0 na0Var = this.v;
        na0Var.dispatchAddFinished((RecyclerView.u) obj);
        na0Var.mAddAnimations.remove((RecyclerView.u) obj);
        na0Var.dispatchFinishedWhenDone();
    }

    @Override // defpackage.k60
    public final void b() {
        switch (this.s) {
            case 0:
                L();
                return;
            case 1:
                M();
                return;
            default:
                this.v.dispatchChangeStarting(((la0) this.t).a, true);
                return;
        }
    }

    @Override // defpackage.k60
    public final void f(View view) {
        switch (this.s) {
            case 0:
                N(view);
                return;
            case 1:
                O(view);
                return;
            default:
                this.u.c(null);
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                la0 la0Var = (la0) this.t;
                RecyclerView.u uVar = la0Var.a;
                na0 na0Var = this.v;
                na0Var.dispatchChangeFinished(uVar, true);
                na0Var.mChangeAnimations.remove(la0Var.a);
                na0Var.dispatchFinishedWhenDone();
                return;
        }
    }

    @Override // defpackage.k60
    public void g(View view) {
        switch (this.s) {
            case 1:
                view.setAlpha(1.0f);
                return;
            default:
                return;
        }
    }
}
