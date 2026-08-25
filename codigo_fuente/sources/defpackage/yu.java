package defpackage;

import android.os.Binder;
import android.os.IBinder;
import idv.lzn.screenonauto.privileged.PrivilegedServiceImpl;
/* renamed from: yu  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class yu implements IBinder.DeathRecipient {
    public final /* synthetic */ int a;
    public final /* synthetic */ Binder b;

    public /* synthetic */ yu(Binder binder, int i) {
        this.a = i;
        this.b = binder;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        int i = this.a;
        Binder binder = this.b;
        switch (i) {
            case 0:
                PrivilegedServiceImpl.j((PrivilegedServiceImpl) binder);
                return;
            default:
                d20 d20Var = (d20) binder;
                if (!d20Var.c) {
                    d20Var.c = true;
                    d20.d.post(new m1(18, d20Var));
                    return;
                }
                return;
        }
    }
}
