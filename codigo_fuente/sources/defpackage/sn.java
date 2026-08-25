package defpackage;

import android.os.IBinder;
import android.os.Messenger;
/* renamed from: sn  reason: default package */
/* loaded from: classes.dex */
public final class sn implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ c9 b;
    public final /* synthetic */ c9 c;

    public /* synthetic */ sn(c9 c9Var, c9 c9Var2, int i) {
        this.a = i;
        this.c = c9Var;
        this.b = c9Var2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        c9 c9Var = this.c;
        c9 c9Var2 = this.b;
        switch (i) {
            case 0:
                kn knVar = (kn) ((vn) c9Var.b).d.remove(((Messenger) c9Var2.b).getBinder());
                if (knVar != null) {
                    ((Messenger) knVar.d.b).getBinder().unlinkToDeath(knVar, 0);
                    return;
                }
                return;
            default:
                IBinder binder = ((Messenger) c9Var2.b).getBinder();
                kn knVar2 = (kn) ((vn) c9Var.b).d.remove(binder);
                if (knVar2 != null) {
                    binder.unlinkToDeath(knVar2, 0);
                    return;
                }
                return;
        }
    }
}
