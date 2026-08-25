package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;
/* renamed from: po  reason: default package */
/* loaded from: classes.dex */
public final class po extends BaseAdapter {
    public final so a;
    public int b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;
    public final int f;

    public po(so soVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = soVar;
        this.f = i;
        a();
    }

    public final void a() {
        so soVar = this.a;
        wo woVar = soVar.v;
        if (woVar != null) {
            soVar.i();
            ArrayList arrayList = soVar.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((wo) arrayList.get(i)) == woVar) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public final wo getItem(int i) {
        ArrayList l;
        boolean z = this.d;
        so soVar = this.a;
        if (z) {
            soVar.i();
            l = soVar.j;
        } else {
            l = soVar.l();
        }
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (wo) l.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList l;
        boolean z = this.d;
        so soVar = this.a;
        if (z) {
            soVar.i();
            l = soVar.j;
        } else {
            l = soVar.l();
        }
        if (this.b < 0) {
            return l.size();
        }
        return l.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        boolean z = false;
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int i3 = getItem(i).b;
        int i4 = i - 1;
        if (i4 >= 0) {
            i2 = getItem(i4).b;
        } else {
            i2 = i3;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.a.m() && i3 != i2) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        mp mpVar = (mp) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        mpVar.a(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
