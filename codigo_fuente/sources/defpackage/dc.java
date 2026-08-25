package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
/* renamed from: dc  reason: default package */
/* loaded from: classes.dex */
public final class dc implements Animation.AnimationListener {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ ec c;

    public dc(ViewGroup viewGroup, View view, ec ecVar) {
        this.a = viewGroup;
        this.b = view;
        this.c = ecVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.a.post(new c7(3, this));
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
