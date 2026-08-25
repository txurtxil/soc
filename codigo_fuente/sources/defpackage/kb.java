package defpackage;

import android.database.DataSetObserver;
/* renamed from: kb  reason: default package */
/* loaded from: classes.dex */
public final class kb extends DataSetObserver {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ kb(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                m30 m30Var = (m30) obj;
                m30Var.a = true;
                m30Var.notifyDataSetChanged();
                return;
            default:
                jl jlVar = (jl) obj;
                if (jlVar.A.isShowing()) {
                    jlVar.d();
                    return;
                }
                return;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                m30 m30Var = (m30) obj;
                m30Var.a = false;
                m30Var.notifyDataSetInvalidated();
                return;
            default:
                ((jl) obj).dismiss();
                return;
        }
    }
}
