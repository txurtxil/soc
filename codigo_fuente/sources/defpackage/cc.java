package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: cc  reason: default package */
/* loaded from: classes.dex */
public final class cc extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ s20 d;
    public final /* synthetic */ ec e;

    public cc(ViewGroup viewGroup, View view, boolean z, s20 s20Var, ec ecVar) {
        this.a = viewGroup;
        this.b = view;
        this.c = z;
        this.d = s20Var;
        this.e = ecVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.a;
        View view = this.b;
        viewGroup.endViewTransition(view);
        if (this.c) {
            t20.a(view, this.d.a);
        }
        this.e.d();
    }
}
