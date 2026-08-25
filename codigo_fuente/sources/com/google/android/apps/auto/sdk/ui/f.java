package com.google.android.apps.auto.sdk.ui;

import android.support.v7.widget.RecyclerView;
import com.google.android.apps.auto.sdk.ui.PagedListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f extends RecyclerView.l {
    private /* synthetic */ PagedListView a;

    public f(PagedListView pagedListView) {
        this.a = pagedListView;
    }

    public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
        PagedListView.OnScrollListener onScrollListener = this.a.mOnScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(recyclerView, i);
        }
        if (i == 0) {
            PagedListView pagedListView = this.a;
            pagedListView.mHandler.postDelayed(pagedListView.mPaginationRunnable, 400L);
        }
    }

    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        PagedListView.OnScrollListener onScrollListener = this.a.mOnScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScrolled(recyclerView, i, i2);
            if (!this.a.mLayoutManager.isAtTop() && this.a.mLayoutManager.isAtBottom()) {
                this.a.mOnScrollListener.onReachBottom();
            } else if (this.a.mLayoutManager.isAtTop() || !this.a.mLayoutManager.isAtBottom()) {
                this.a.mOnScrollListener.onLeaveBottom();
            }
        }
        this.a.updatePaginationButtons(false);
    }
}
