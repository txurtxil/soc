package com.google.android.apps.auto.sdk.ui;

import android.support.v7.widget.RecyclerView;
/* loaded from: classes.dex */
public final class a extends na0 {
    private final CarLayoutManager a;
    private final RecyclerView.e.a b = new b(this);

    public a(CarLayoutManager carLayoutManager) {
        this.a = carLayoutManager;
    }

    @Override // defpackage.na0, defpackage.qa0
    public final boolean animateChange(RecyclerView.u uVar, RecyclerView.u uVar2, int i, int i2, int i3, int i4) {
        float alpha = uVar2 != null ? uVar2.a.getAlpha() : 0.0f;
        boolean animateChange = super.animateChange(uVar, uVar2, i, i2, i3, i4);
        if (uVar2 != null) {
            uVar2.a.setAlpha(alpha);
        }
        return animateChange;
    }

    @Override // defpackage.qa0
    public final void onMoveFinished(RecyclerView.u uVar) {
        isRunning(this.b);
    }
}
