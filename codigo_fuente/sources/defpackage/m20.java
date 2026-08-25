package defpackage;

import android.os.Handler;
import android.os.Message;
/* renamed from: m20  reason: default package */
/* loaded from: classes.dex */
public final class m20 implements Handler.Callback {
    public final /* synthetic */ vp a;

    public m20(vp vpVar) {
        this.a = vpVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        vp vpVar = this.a;
        n20 n20Var = (n20) message.obj;
        synchronized (vpVar.a) {
            if (((n20) vpVar.c) == n20Var || ((n20) vpVar.d) == n20Var) {
                vpVar.a(n20Var, 2);
            }
        }
        return true;
    }
}
