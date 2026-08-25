package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
/* renamed from: dl  reason: default package */
/* loaded from: classes.dex */
public final class dl implements lp, AdapterView.OnItemClickListener {
    public Context a;
    public LayoutInflater b;
    public so c;
    public ExpandedMenuView d;
    public kp e;
    public cl f;

    public dl(ContextWrapper contextWrapper) {
        this.a = contextWrapper;
        this.b = LayoutInflater.from(contextWrapper);
    }

    @Override // defpackage.lp
    public final void a(so soVar, boolean z) {
        kp kpVar = this.e;
        if (kpVar != null) {
            kpVar.a(soVar, z);
        }
    }

    @Override // defpackage.lp
    public final boolean c(wo woVar) {
        return false;
    }

    @Override // defpackage.lp
    public final void e(kp kpVar) {
        throw null;
    }

    @Override // defpackage.lp
    public final boolean f(wo woVar) {
        return false;
    }

    @Override // defpackage.lp
    public final void g() {
        cl clVar = this.f;
        if (clVar != null) {
            clVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.lp
    public final void i(Context context, so soVar) {
        if (this.a != null) {
            this.a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.c = soVar;
        cl clVar = this.f;
        if (clVar != null) {
            clVar.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.content.DialogInterface$OnClickListener, kp, java.lang.Object, to, android.content.DialogInterface$OnDismissListener] */
    @Override // defpackage.lp
    public final boolean j(j30 j30Var) {
        boolean hasVisibleItems = j30Var.hasVisibleItems();
        Context context = j30Var.a;
        if (!hasVisibleItems) {
            return false;
        }
        ?? obj = new Object();
        obj.a = j30Var;
        n2 n2Var = new n2(context);
        k2 k2Var = (k2) n2Var.c;
        dl dlVar = new dl(k2Var.a);
        obj.c = dlVar;
        dlVar.e = obj;
        j30Var.b(dlVar, context);
        dl dlVar2 = obj.c;
        if (dlVar2.f == null) {
            dlVar2.f = new cl(dlVar2);
        }
        k2Var.m = dlVar2.f;
        k2Var.n = obj;
        View view = j30Var.o;
        if (view != null) {
            k2Var.e = view;
        } else {
            k2Var.c = j30Var.n;
            k2Var.d = j30Var.m;
        }
        k2Var.k = obj;
        o2 b = n2Var.b();
        obj.b = b;
        b.setOnDismissListener(obj);
        WindowManager.LayoutParams attributes = obj.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        obj.b.show();
        kp kpVar = this.e;
        if (kpVar != null) {
            kpVar.q(j30Var);
            return true;
        }
        return true;
    }

    @Override // defpackage.lp
    public final boolean k() {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.c.q(this.f.getItem(i), this, 0);
    }
}
