package defpackage;

import android.content.res.ColorStateList;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
/* renamed from: q2  reason: default package */
/* loaded from: classes.dex */
public final class q2 extends Animatable2.AnimationCallback {
    public final /* synthetic */ ym a;

    public q2(ym ymVar) {
        this.a = ymVar;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ColorStateList colorStateList = this.a.b.o;
        if (colorStateList != null) {
            tc.h(drawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        bn bnVar = this.a.b;
        ColorStateList colorStateList = bnVar.o;
        if (colorStateList != null) {
            tc.g(drawable, colorStateList.getColorForState(bnVar.t, colorStateList.getDefaultColor()));
        }
    }
}
