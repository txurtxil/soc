package defpackage;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* renamed from: r7  reason: default package */
/* loaded from: classes.dex */
public final class r7 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ r7(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                en enVar = ((BottomSheetBehavior) obj).o;
                if (enVar != null) {
                    dn dnVar = enVar.a;
                    if (dnVar.i != floatValue) {
                        dnVar.i = floatValue;
                        enVar.e = true;
                        enVar.invalidateSelf();
                        return;
                    }
                    return;
                }
                return;
            default:
                int floatValue2 = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                ye yeVar = (ye) obj;
                yeVar.c.setAlpha(floatValue2);
                yeVar.d.setAlpha(floatValue2);
                yeVar.s.invalidate();
                return;
        }
    }
}
