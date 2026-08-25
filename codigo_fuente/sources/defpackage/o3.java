package defpackage;

import android.window.OnBackInvokedCallback;
/* renamed from: o3  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class o3 implements OnBackInvokedCallback {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ o3(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void onBackInvoked() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((w3) obj).F();
                return;
            case 1:
                ((rg) obj).a();
                return;
            default:
                ((Runnable) obj).run();
                return;
        }
    }
}
