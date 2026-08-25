package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.ArrayList;
/* renamed from: ry  reason: default package */
/* loaded from: classes.dex */
public final class ry extends BroadcastReceiver {
    public final Messenger a;
    public final /* synthetic */ sy b;

    public ry(sy syVar) {
        this.b = syVar;
        this.a = new Messenger(new Handler(Looper.getMainLooper(), syVar));
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, mi] */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        IBinder binder;
        ni niVar;
        sy syVar = this.b;
        ArrayList arrayList = syVar.d;
        Bundle bundleExtra = intent.getBundleExtra("extra.bundle");
        if (bundleExtra != null && (binder = bundleExtra.getBinder("binder")) != null) {
            yy yyVar = yy.e;
            IInterface queryLocalInterface = binder.queryLocalInterface("com.topjohnwu.superuser.internal.IRootServiceManager");
            if (queryLocalInterface != null && (queryLocalInterface instanceof ni)) {
                niVar = (ni) queryLocalInterface;
            } else {
                ?? obj = new Object();
                obj.a = binder;
                niVar = obj;
            }
            try {
                niVar.b(this.a.getBinder());
                oy oyVar = new oy(syVar, niVar);
                if (intent.getBooleanExtra("extra.daemon", false)) {
                    syVar.b = oyVar;
                    syVar.c &= -3;
                } else {
                    syVar.a = oyVar;
                    syVar.c &= -2;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ky kyVar = (ky) arrayList.get(size);
                    if (kyVar.a.a(kyVar.b, kyVar.c, kyVar.d) == null) {
                        arrayList.remove(size);
                    }
                }
            } catch (RemoteException e) {
                k60.o("IPC", e);
            }
        }
    }
}
