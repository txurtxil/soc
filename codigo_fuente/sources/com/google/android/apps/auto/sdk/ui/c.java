package com.google.android.apps.auto.sdk.ui;

import android.animation.ValueAnimator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {
    private /* synthetic */ FabDrawable a;

    public c(FabDrawable fabDrawable) {
        this.a = fabDrawable;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.a();
    }
}
