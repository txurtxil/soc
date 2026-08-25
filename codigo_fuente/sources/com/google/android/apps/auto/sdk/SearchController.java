package com.google.android.apps.auto.sdk;

import android.os.RemoteException;
import android.util.Log;
import java.util.List;
/* loaded from: classes.dex */
public class SearchController {
    private final q a;
    private a b;

    /* loaded from: classes.dex */
    public final class a extends p {
        private SearchCallback a;

        private a() {
        }

        @Override // com.google.android.apps.auto.sdk.o
        public final void a() {
            SearchCallback searchCallback = this.a;
            if (searchCallback != null) {
                searchCallback.onSearchStart();
            }
        }

        @Override // com.google.android.apps.auto.sdk.o
        public final boolean b(String str) {
            SearchCallback searchCallback = this.a;
            if (searchCallback != null) {
                return searchCallback.onSearchSubmitted(str);
            }
            return false;
        }

        public /* synthetic */ a(SearchController searchController) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(SearchCallback searchCallback) {
            this.a = searchCallback;
        }

        @Override // com.google.android.apps.auto.sdk.o
        public final void b() {
            SearchCallback searchCallback = this.a;
            if (searchCallback != null) {
                searchCallback.onSearchStop();
            }
        }

        @Override // com.google.android.apps.auto.sdk.o
        public final void a(SearchItem searchItem) {
            SearchCallback searchCallback = this.a;
            if (searchCallback != null) {
                searchCallback.onSearchItemSelected(searchItem);
            }
        }

        @Override // com.google.android.apps.auto.sdk.o
        public final void a(String str) {
            SearchCallback searchCallback = this.a;
            if (searchCallback != null) {
                searchCallback.onSearchTextChanged(str);
            }
        }
    }

    public SearchController(q qVar) {
        this.a = qVar;
    }

    public void hideSearchBox() {
        Log.d("CSL.SearchController", "hideSearchBox");
        if (this.b == null) {
            c2.g("No SearchCallback is set");
            return;
        }
        try {
            this.a.b();
        } catch (RemoteException e) {
            Log.e("CSL.SearchController", "Error disabling search box", e);
        }
    }

    public void setSearchCallback(SearchCallback searchCallback) {
        String valueOf = String.valueOf(searchCallback);
        StringBuilder sb = new StringBuilder(valueOf.length() + 18);
        sb.append("setSearchCallback ");
        sb.append(valueOf);
        Log.d("CSL.SearchController", sb.toString());
        if (this.b == null) {
            a aVar = new a(this);
            this.b = aVar;
            try {
                this.a.a(aVar);
            } catch (RemoteException e) {
                Log.e("CSL.SearchController", "Error setting SearchCallback", e);
            }
        }
        this.b.a(searchCallback);
    }

    public void setSearchHint(CharSequence charSequence) {
        String valueOf = String.valueOf(charSequence);
        StringBuilder sb = new StringBuilder(valueOf.length() + 14);
        sb.append("setSearchHint ");
        sb.append(valueOf);
        Log.d("CSL.SearchController", sb.toString());
        try {
            this.a.a(charSequence);
        } catch (RemoteException e) {
            Log.e("CSL.SearchController", "Error setting search hint", e);
        }
    }

    public void setSearchItems(List<SearchItem> list) {
        String valueOf = String.valueOf(list);
        StringBuilder sb = new StringBuilder(valueOf.length() + 15);
        sb.append("setSearchItems ");
        sb.append(valueOf);
        Log.d("CSL.SearchController", sb.toString());
        if (list == null) {
            c2.n("SearchItems cannot be null.");
            return;
        }
        try {
            this.a.a(list);
        } catch (RemoteException e) {
            Log.e("CSL.SearchController", "Error setting search items", e);
        }
    }

    public void showSearchBox() {
        Log.d("CSL.SearchController", "showSearchBox");
        if (this.b == null) {
            c2.g("No SearchCallback is set");
            return;
        }
        try {
            this.a.a();
        } catch (RemoteException e) {
            Log.e("CSL.SearchController", "Error enabling search box", e);
        }
    }
}
