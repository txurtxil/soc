package com.google.android.apps.auto.sdk.ui;

import android.util.Log;
import com.google.android.apps.auto.sdk.ui.PagedListView;
import com.google.android.apps.auto.sdk.ui.PagedScrollBarView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements PagedScrollBarView.PaginationListener {
    private /* synthetic */ PagedListView a;

    public e(PagedListView pagedListView) {
        this.a = pagedListView;
    }

    @Override // com.google.android.apps.auto.sdk.ui.PagedScrollBarView.PaginationListener
    public final void onPaginate(int i) {
        if (i == 0) {
            this.a.mRecyclerView.pageUp();
            PagedListView.OnScrollListener onScrollListener = this.a.mOnScrollListener;
            if (onScrollListener != null) {
                onScrollListener.onScrollUpButtonClicked();
            }
        } else if (i == 1) {
            this.a.mRecyclerView.pageDown();
            PagedListView.OnScrollListener onScrollListener2 = this.a.mOnScrollListener;
            if (onScrollListener2 != null) {
                onScrollListener2.onScrollDownButtonClicked();
            }
        } else {
            StringBuilder sb = new StringBuilder(42);
            sb.append("Unknown pagination direction (");
            sb.append(i);
            sb.append(")");
            Log.e("PagedListView", sb.toString());
        }
    }
}
