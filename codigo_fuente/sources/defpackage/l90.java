package defpackage;

import android.support.v4.app.Fragment;
import android.view.View;
import android.view.animation.Animation;
/* renamed from: l90  reason: default package */
/* loaded from: classes.dex */
public final class l90 extends m90 {
    public final /* synthetic */ Fragment d;
    public final /* synthetic */ ay e;

    public l90(ay ayVar, View view, Animation animation, Fragment fragment) {
        this.e = ayVar;
        this.d = fragment;
        if (view != null) {
            this.c = view;
        }
    }

    @Override // defpackage.m90, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        super.onAnimationEnd(animation);
        if (this.d.P() != null) {
            this.d.a((View) null);
            Fragment fragment = this.d;
            this.e.l(fragment, fragment.Q(), 0, 0, false);
        }
    }
}
