package com.google.android.apps.auto.sdk.ui;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g implements Runnable {
    private /* synthetic */ PagedListView a;

    public g(PagedListView pagedListView) {
        this.a = pagedListView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PagedScrollBarView pagedScrollBarView;
        PagedScrollBarView pagedScrollBarView2;
        pagedScrollBarView = this.a.c;
        boolean isUpPressed = pagedScrollBarView.isUpPressed();
        pagedScrollBarView2 = this.a.c;
        boolean isDownPressed = pagedScrollBarView2.isDownPressed();
        if (isUpPressed && isDownPressed) {
            return;
        }
        if (isUpPressed) {
            this.a.mRecyclerView.pageUp();
        } else if (isDownPressed) {
            this.a.mRecyclerView.pageDown();
        }
    }
}
