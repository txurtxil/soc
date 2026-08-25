package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: ub  reason: default package */
/* loaded from: classes.dex */
public final class ub extends AnimatorListenerAdapter {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ nu b;
    public final /* synthetic */ View c;
    public final /* synthetic */ ViewPropertyAnimator d;
    public final /* synthetic */ zb e;

    public ub(zb zbVar, nu nuVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.e = zbVar;
        this.b = nuVar;
        this.d = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 1:
                this.c.setAlpha(1.0f);
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        nu nuVar = this.b;
        zb zbVar = this.e;
        ViewPropertyAnimator viewPropertyAnimator = this.d;
        switch (i) {
            case 0:
                viewPropertyAnimator.setListener(null);
                this.c.setAlpha(1.0f);
                zbVar.c(nuVar);
                zbVar.q.remove(nuVar);
                zbVar.i();
                return;
            default:
                viewPropertyAnimator.setListener(null);
                zbVar.c(nuVar);
                zbVar.o.remove(nuVar);
                zbVar.i();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                this.e.getClass();
                return;
            default:
                this.e.getClass();
                return;
        }
    }

    public ub(zb zbVar, nu nuVar, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.e = zbVar;
        this.b = nuVar;
        this.c = view;
        this.d = viewPropertyAnimator;
    }
}
