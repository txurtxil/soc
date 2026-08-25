package defpackage;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: m6  reason: default package */
/* loaded from: classes.dex */
public final class m6 extends BaseAdapter {
    public final ArrayList a;
    public final String b;
    public List c;
    public final /* synthetic */ q6 d;

    public m6(q6 q6Var, ArrayList arrayList, String str) {
        this.d = q6Var;
        this.a = arrayList;
        this.b = str;
        this.c = arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.c.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return (n6) this.c.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        viewGroup.getClass();
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app_picker, viewGroup, false);
        }
        n6 n6Var = (n6) this.c.get(i);
        String str = n6Var.b;
        String str2 = n6Var.a;
        ((TextView) view.findViewById(R.id.app_label)).setText(str);
        ((RadioButton) view.findViewById(R.id.app_selected)).setChecked(str2.equals(this.b));
        ImageView imageView = (ImageView) view.findViewById(R.id.app_icon);
        if (str2.length() == 0) {
            imageView.setTag(null);
            imageView.setImageDrawable(null);
            imageView.setVisibility(4);
            return view;
        }
        imageView.setTag(str2);
        imageView.setVisibility(0);
        q6 q6Var = this.d;
        Drawable drawable = (Drawable) q6Var.l0.get(str2);
        imageView.setImageDrawable(drawable);
        if (drawable == null && q6Var.m0.put(str2, imageView) == null) {
            q6Var.j0.execute(new x5(q6Var.G().getApplicationContext(), str2, q6Var, 1));
        }
        return view;
    }
}
