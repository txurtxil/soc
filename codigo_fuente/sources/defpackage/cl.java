package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
/* renamed from: cl  reason: default package */
/* loaded from: classes.dex */
public final class cl extends BaseAdapter {
    public int a = -1;
    public final /* synthetic */ dl b;

    public cl(dl dlVar) {
        this.b = dlVar;
        a();
    }

    public final void a() {
        so soVar = this.b.c;
        wo woVar = soVar.v;
        if (woVar != null) {
            soVar.i();
            ArrayList arrayList = soVar.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((wo) arrayList.get(i)) == woVar) {
                    this.a = i;
                    return;
                }
            }
        }
        this.a = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public final wo getItem(int i) {
        dl dlVar = this.b;
        so soVar = dlVar.c;
        soVar.i();
        ArrayList arrayList = soVar.j;
        dlVar.getClass();
        int i2 = this.a;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (wo) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        dl dlVar = this.b;
        so soVar = dlVar.c;
        soVar.i();
        int size = soVar.j.size();
        dlVar.getClass();
        if (this.a < 0) {
            return size;
        }
        return size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.b.b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((mp) view).a(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
