package defpackage;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import androidx.fragment.app.a;
/* renamed from: wf  reason: default package */
/* loaded from: classes.dex */
public final class wf extends s8 implements c80, sk, lg {
    public final z2 j;
    public final z2 k;
    public final Handler l;
    public final ig m;
    public final /* synthetic */ z2 n;

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.fragment.app.a, ig] */
    public wf(z2 z2Var) {
        this.n = z2Var;
        Handler handler = new Handler();
        this.m = new a();
        this.j = z2Var;
        this.k = z2Var;
        this.l = handler;
    }

    @Override // defpackage.c80
    public final b80 e() {
        return this.n.e();
    }

    @Override // defpackage.sk
    public final androidx.lifecycle.a f() {
        return this.n.u;
    }

    @Override // defpackage.s8
    public final View x(int i) {
        return this.n.findViewById(i);
    }

    @Override // defpackage.s8
    public final boolean y() {
        Window window = this.n.getWindow();
        if (window != null && window.peekDecorView() != null) {
            return true;
        }
        return false;
    }

    @Override // defpackage.lg
    public final void d() {
    }
}
