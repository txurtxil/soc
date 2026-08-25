package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;
/* renamed from: u4  reason: default package */
/* loaded from: classes.dex */
public final class u4 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ u4(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        Object item;
        int selectedItemPosition;
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                w4 w4Var = (w4) obj;
                z4 z4Var = w4Var.H;
                z4Var.setSelection(i);
                if (z4Var.getOnItemClickListener() != null) {
                    z4Var.performItemClick(view, i, w4Var.E.getItemId(i));
                }
                w4Var.dismiss();
                return;
            case 1:
                tm tmVar = (tm) obj;
                jl jlVar = tmVar.e;
                if (i < 0) {
                    if (!jlVar.A.isShowing()) {
                        item = null;
                    } else {
                        item = jlVar.c.getSelectedItem();
                    }
                } else {
                    item = tmVar.getAdapter().getItem(i);
                }
                tm.a(tmVar, item);
                AdapterView.OnItemClickListener onItemClickListener = tmVar.getOnItemClickListener();
                if (onItemClickListener != null) {
                    if (view == null || i < 0) {
                        if (!jlVar.A.isShowing()) {
                            view = null;
                        } else {
                            view = jlVar.c.getSelectedView();
                        }
                        if (!jlVar.A.isShowing()) {
                            selectedItemPosition = -1;
                        } else {
                            selectedItemPosition = jlVar.c.getSelectedItemPosition();
                        }
                        i = selectedItemPosition;
                        if (!jlVar.A.isShowing()) {
                            j = Long.MIN_VALUE;
                        } else {
                            j = jlVar.c.getSelectedItemId();
                        }
                    }
                    onItemClickListener.onItemClick(jlVar.c, view, i, j);
                }
                jlVar.dismiss();
                return;
            default:
                ((SearchView) obj).m(i);
                return;
        }
    }
}
