package com.google.android.apps.auto.sdk.ui;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h implements Runnable {
    private /* synthetic */ PagedListView a;

    public h(PagedListView pagedListView) {
        this.a = pagedListView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.updatePaginationButtons(true);
    }
}
