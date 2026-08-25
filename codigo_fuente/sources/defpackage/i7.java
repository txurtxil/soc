package defpackage;

import android.animation.ValueAnimator;
/* renamed from: i7  reason: default package */
/* loaded from: classes.dex */
public final class i7 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ p7 b;

    public i7(p7 p7Var, int i) {
        this.a = 2;
        this.b = p7Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.a;
        p7 p7Var = this.b;
        switch (i) {
            case 0:
                p7Var.i.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
            case 1:
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                o7 o7Var = p7Var.i;
                o7Var.setScaleX(floatValue);
                o7Var.setScaleY(floatValue);
                return;
            case 2:
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ue ueVar = p7.s;
                p7Var.i.setTranslationY(intValue);
                return;
            default:
                int intValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ue ueVar2 = p7.s;
                p7Var.i.setTranslationY(intValue2);
                return;
        }
    }

    public /* synthetic */ i7(p7 p7Var, int i, byte b) {
        this.a = i;
        this.b = p7Var;
    }
}
