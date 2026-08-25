package defpackage;

import android.animation.ValueAnimator;
import android.view.ViewPropertyAnimator;
/* renamed from: g80  reason: default package */
/* loaded from: classes.dex */
public abstract class g80 {
    public static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        return viewPropertyAnimator.setUpdateListener(animatorUpdateListener);
    }
}
