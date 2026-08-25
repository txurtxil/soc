package defpackage;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
/* renamed from: i2  reason: default package */
/* loaded from: classes.dex */
public final class i2 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ m2 a;
    public final /* synthetic */ k2 b;

    public i2(k2 k2Var, m2 m2Var) {
        this.b = k2Var;
        this.a = m2Var;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        k2 k2Var = this.b;
        DialogInterface.OnClickListener onClickListener = k2Var.n;
        m2 m2Var = this.a;
        onClickListener.onClick(m2Var.b, i);
        if (!k2Var.r) {
            m2Var.b.dismiss();
        }
    }
}
