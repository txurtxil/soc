package defpackage;

import android.view.View;
import androidx.appcompat.widget.SearchView;
/* renamed from: h00  reason: default package */
/* loaded from: classes.dex */
public final class h00 implements View.OnFocusChangeListener {
    public final /* synthetic */ SearchView a;

    public h00(SearchView searchView) {
        this.a = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        SearchView searchView = this.a;
        View.OnFocusChangeListener onFocusChangeListener = searchView.L;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(searchView, z);
        }
    }
}
