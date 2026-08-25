package defpackage;

import android.view.MenuItem;
import android.view.Window;
/* renamed from: c50  reason: default package */
/* loaded from: classes.dex */
public final class c50 implements a50, qo {
    public final /* synthetic */ e50 a;

    public /* synthetic */ c50(e50 e50Var) {
        this.a = e50Var;
    }

    @Override // defpackage.qo
    public boolean e(so soVar, MenuItem menuItem) {
        return false;
    }

    @Override // defpackage.qo
    public void m(so soVar) {
        e50 e50Var = this.a;
        boolean p = e50Var.s.a.p();
        Window.Callback callback = e50Var.t;
        if (p) {
            callback.onPanelClosed(108, soVar);
        } else if (callback.onPreparePanel(0, null, soVar)) {
            callback.onMenuOpened(108, soVar);
        }
    }
}
