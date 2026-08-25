package defpackage;

import android.view.KeyEvent;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
/* renamed from: j00  reason: default package */
/* loaded from: classes.dex */
public final class j00 implements TextView.OnEditorActionListener {
    public final /* synthetic */ SearchView a;

    public j00(SearchView searchView) {
        this.a = searchView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        this.a.p();
        return true;
    }
}
