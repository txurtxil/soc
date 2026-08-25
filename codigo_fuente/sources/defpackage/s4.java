package defpackage;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
/* renamed from: s4  reason: default package */
/* loaded from: classes.dex */
public final class s4 implements y4, DialogInterface.OnClickListener {
    public o2 a;
    public t4 b;
    public CharSequence c;
    public final /* synthetic */ z4 d;

    public s4(z4 z4Var) {
        this.d = z4Var;
    }

    @Override // defpackage.y4
    public final boolean b() {
        o2 o2Var = this.a;
        if (o2Var != null) {
            return o2Var.isShowing();
        }
        return false;
    }

    @Override // defpackage.y4
    public final int c() {
        return 0;
    }

    @Override // defpackage.y4
    public final void dismiss() {
        o2 o2Var = this.a;
        if (o2Var != null) {
            o2Var.dismiss();
            this.a = null;
        }
    }

    @Override // defpackage.y4
    public final Drawable e() {
        return null;
    }

    @Override // defpackage.y4
    public final void g(CharSequence charSequence) {
        this.c = charSequence;
    }

    @Override // defpackage.y4
    public final void i(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.y4
    public final void k(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.y4
    public final void l(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.y4
    public final void m(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.y4
    public final void n(int i, int i2) {
        if (this.b == null) {
            return;
        }
        z4 z4Var = this.d;
        n2 n2Var = new n2(z4Var.getPopupContext());
        k2 k2Var = (k2) n2Var.c;
        CharSequence charSequence = this.c;
        if (charSequence != null) {
            k2Var.d = charSequence;
        }
        t4 t4Var = this.b;
        int selectedItemPosition = z4Var.getSelectedItemPosition();
        k2Var.m = t4Var;
        k2Var.n = this;
        k2Var.s = selectedItemPosition;
        k2Var.r = true;
        o2 b = n2Var.b();
        this.a = b;
        AlertController$RecycleListView alertController$RecycleListView = b.f.f;
        q4.d(alertController$RecycleListView, i);
        q4.c(alertController$RecycleListView, i2);
        this.a.show();
    }

    @Override // defpackage.y4
    public final int o() {
        return 0;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        z4 z4Var = this.d;
        z4Var.setSelection(i);
        if (z4Var.getOnItemClickListener() != null) {
            z4Var.performItemClick(null, i, this.b.getItemId(i));
        }
        dismiss();
    }

    @Override // defpackage.y4
    public final CharSequence p() {
        return this.c;
    }

    @Override // defpackage.y4
    public final void q(ListAdapter listAdapter) {
        this.b = (t4) listAdapter;
    }
}
