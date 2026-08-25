package com.google.android.apps.auto.sdk.ui;

import android.support.v7.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements RecyclerView.e.a {
    private /* synthetic */ a a;

    public b(a aVar) {
        this.a = aVar;
    }

    public final void onAnimationsFinished() {
        CarLayoutManager carLayoutManager;
        carLayoutManager = this.a.a;
        carLayoutManager.offsetRows();
    }
}
