package defpackage;

import android.os.Bundle;
/* renamed from: y2  reason: default package */
/* loaded from: classes.dex */
public final class y2 implements js {
    public final /* synthetic */ int a;
    public final /* synthetic */ z2 b;

    public /* synthetic */ y2(z2 z2Var, int i) {
        this.a = i;
        this.b = z2Var;
    }

    @Override // defpackage.js
    public final void a() {
        int i = this.a;
        z2 z2Var = this.b;
        switch (i) {
            case 0:
                j3 k = z2Var.k();
                k.a();
                ((f3) z2Var.e.c).c("androidx:appcompat");
                k.d();
                return;
            default:
                c9 c9Var = z2Var.t;
                wf wfVar = (wf) c9Var.b;
                wfVar.m.b(wfVar, wfVar, null);
                Bundle c = ((f3) z2Var.e.c).c("android:support:fragments");
                if (c != null) {
                    ((wf) c9Var.b).m.O(c.getParcelable("android:support:fragments"));
                    return;
                }
                return;
        }
    }
}
