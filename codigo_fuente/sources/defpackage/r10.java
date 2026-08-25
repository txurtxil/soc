package defpackage;

import android.os.IBinder;
/* renamed from: r10  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class r10 implements IBinder.DeathRecipient {
    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        z10.e = false;
        z10.d(null, null);
    }
}
