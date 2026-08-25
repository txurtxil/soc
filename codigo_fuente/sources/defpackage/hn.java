package defpackage;

import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.List;
/* renamed from: hn  reason: default package */
/* loaded from: classes.dex */
public final class hn extends qn {
    public final /* synthetic */ kn d;
    public final /* synthetic */ String e;
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ vn g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hn(vn vnVar, String str, kn knVar, String str2, Bundle bundle) {
        super(str);
        this.g = vnVar;
        this.d = knVar;
        this.e = str2;
        this.f = bundle;
    }

    @Override // defpackage.qn
    public final void a(Object obj) {
        List list = (List) obj;
        u6 u6Var = this.g.d;
        kn knVar = this.d;
        c9 c9Var = knVar.d;
        String str = knVar.a;
        Object orDefault = u6Var.getOrDefault(((Messenger) c9Var.b).getBinder(), null);
        String str2 = this.e;
        if (orDefault != knVar) {
            if (vn.g) {
                Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + str + " id=" + str2);
                return;
            }
            return;
        }
        int i = this.c & 1;
        Bundle bundle = this.f;
        if (i != 0) {
            list = vn.a(list, bundle);
        }
        try {
            c9Var.u(str2, list, bundle);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + str2 + " package=" + str);
        }
    }
}
