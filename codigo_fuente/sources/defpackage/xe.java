package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: xe  reason: default package */
/* loaded from: classes.dex */
public final class xe extends AnimatorListenerAdapter {
    public boolean a = false;
    public final /* synthetic */ ye b;

    public xe(ye yeVar) {
        this.b = yeVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.a) {
            this.a = false;
            return;
        }
        ye yeVar = this.b;
        if (((Float) yeVar.z.getAnimatedValue()).floatValue() == 0.0f) {
            yeVar.A = 0;
            yeVar.f(0);
            return;
        }
        yeVar.A = 2;
        yeVar.s.invalidate();
    }
}
