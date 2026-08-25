package defpackage;

import android.view.View;
import android.view.animation.Animation;
/* renamed from: m90  reason: default package */
/* loaded from: classes.dex */
public class m90 implements Animation.AnimationListener {
    public Animation.AnimationListener a;
    public boolean b;
    public View c;

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        View view = this.c;
        if (view != null && this.b) {
            view.isAttachedToWindow();
            view.post(new c7(17, this));
        }
        Animation.AnimationListener animationListener = this.a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(animation);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        Animation.AnimationListener animationListener = this.a;
        if (animationListener != null) {
            animationListener.onAnimationRepeat(animation);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        Animation.AnimationListener animationListener = this.a;
        if (animationListener != null) {
            animationListener.onAnimationStart(animation);
        }
    }
}
