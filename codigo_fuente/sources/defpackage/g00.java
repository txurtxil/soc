package defpackage;

import androidx.appcompat.widget.SearchView;
/* renamed from: g00  reason: default package */
/* loaded from: classes.dex */
public final class g00 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ SearchView b;

    public /* synthetic */ g00(SearchView searchView, int i) {
        this.a = i;
        this.b = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        SearchView searchView = this.b;
        switch (i) {
            case 0:
                searchView.r();
                return;
            default:
                lb lbVar = searchView.P;
                if (lbVar instanceof m30) {
                    lbVar.b(null);
                    return;
                }
                return;
        }
    }
}
