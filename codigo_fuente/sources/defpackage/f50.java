package defpackage;

import android.content.Context;
import android.view.View;
import android.view.Window;
/* renamed from: f50  reason: default package */
/* loaded from: classes.dex */
public final class f50 implements View.OnClickListener {
    public final x0 a;
    public final /* synthetic */ h50 b;

    /* JADX WARN: Type inference failed for: r0v0, types: [x0, java.lang.Object] */
    public f50(h50 h50Var) {
        this.b = h50Var;
        Context context = h50Var.a.getContext();
        CharSequence charSequence = h50Var.h;
        ?? obj = new Object();
        obj.e = 4096;
        obj.g = 4096;
        obj.l = null;
        obj.m = null;
        obj.n = false;
        obj.o = false;
        obj.p = 16;
        obj.i = context;
        obj.a = charSequence;
        this.a = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        h50 h50Var = this.b;
        Window.Callback callback = h50Var.k;
        if (callback != null && h50Var.l) {
            callback.onMenuItemSelected(0, this.a);
        }
    }
}
