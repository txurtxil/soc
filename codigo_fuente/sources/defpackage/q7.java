package defpackage;

import android.os.IBinder;
/* renamed from: q7  reason: default package */
/* loaded from: classes.dex */
public abstract class q7 implements IBinder.DeathRecipient {
    public final IBinder a;

    public q7(IBinder iBinder) {
        this.a = iBinder;
        iBinder.linkToDeath(this, 0);
    }

    public abstract void a();

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.a.unlinkToDeath(this, 0);
        e60.a(new m1(2, this));
    }
}
