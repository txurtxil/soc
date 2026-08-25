package defpackage;

import android.content.Context;
import android.view.View;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: a1  reason: default package */
/* loaded from: classes.dex */
public final class a1 extends ep {
    public final /* synthetic */ int l = 0;
    public final /* synthetic */ e1 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(e1 e1Var, Context context, j30 j30Var, View view) {
        super(context, j30Var, view, false, R.attr.actionOverflowMenuStyle, 0);
        this.m = e1Var;
        if ((j30Var.A.x & 32) != 32) {
            View view2 = e1Var.i;
            this.e = view2 == null ? (View) e1Var.h : view2;
        }
        c9 c9Var = e1Var.x;
        this.h = c9Var;
        bp bpVar = this.i;
        if (bpVar != null) {
            bpVar.e(c9Var);
        }
    }

    @Override // defpackage.ep
    public final void c() {
        int i = this.l;
        e1 e1Var = this.m;
        switch (i) {
            case 0:
                e1Var.u = null;
                super.c();
                return;
            default:
                so soVar = e1Var.c;
                if (soVar != null) {
                    soVar.c(true);
                }
                e1Var.t = null;
                super.c();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(e1 e1Var, Context context, so soVar, View view) {
        super(context, soVar, view, true, R.attr.actionOverflowMenuStyle, 0);
        this.m = e1Var;
        this.f = 8388613;
        c9 c9Var = e1Var.x;
        this.h = c9Var;
        bp bpVar = this.i;
        if (bpVar != null) {
            bpVar.e(c9Var);
        }
    }
}
