package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: s3  reason: default package */
/* loaded from: classes.dex */
public final class s3 extends BroadcastReceiver {
    public final /* synthetic */ t3 a;

    public s3(t3 t3Var) {
        this.a = t3Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.a.h();
    }
}
