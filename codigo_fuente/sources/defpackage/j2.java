package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;
/* renamed from: j2  reason: default package */
/* loaded from: classes.dex */
public final class j2 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ AlertController$RecycleListView a;
    public final /* synthetic */ m2 b;
    public final /* synthetic */ k2 c;

    public j2(k2 k2Var, AlertController$RecycleListView alertController$RecycleListView, m2 m2Var) {
        this.c = k2Var;
        this.a = alertController$RecycleListView;
        this.b = m2Var;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        k2 k2Var = this.c;
        boolean[] zArr = k2Var.p;
        AlertController$RecycleListView alertController$RecycleListView = this.a;
        if (zArr != null) {
            zArr[i] = alertController$RecycleListView.isItemChecked(i);
        }
        k2Var.t.onClick(this.b.b, i, alertController$RecycleListView.isItemChecked(i));
    }
}
