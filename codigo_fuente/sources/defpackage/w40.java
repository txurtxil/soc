package defpackage;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: w40  reason: default package */
/* loaded from: classes.dex */
public final class w40 implements h1, qo {
    public final /* synthetic */ Toolbar a;

    public /* synthetic */ w40(Toolbar toolbar) {
        this.a = toolbar;
    }

    @Override // defpackage.qo
    public boolean e(so soVar, MenuItem menuItem) {
        return false;
    }

    @Override // defpackage.qo
    public void m(so soVar) {
        Toolbar toolbar = this.a;
        e1 e1Var = toolbar.a.u;
        if (e1Var == null || !e1Var.h()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.H.c).iterator();
            if (it.hasNext()) {
                it.next().getClass();
                c2.l();
                return;
            }
        }
        c50 c50Var = toolbar.P;
        if (c50Var != null) {
            c50Var.m(soVar);
        }
    }
}
