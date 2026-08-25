package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
/* renamed from: rn  reason: default package */
/* loaded from: classes.dex */
public final class rn implements Runnable {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ c9 b;
    public final /* synthetic */ int c;
    public final /* synthetic */ String d;
    public final /* synthetic */ int e;
    public final /* synthetic */ c9 f;

    public rn(c9 c9Var, c9 c9Var2, String str, int i, int i2, Bundle bundle) {
        this.f = c9Var;
        this.b = c9Var2;
        this.d = str;
        this.c = i;
        this.e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        kn knVar = null;
        c9 c9Var = this.f;
        switch (i) {
            case 0:
                c9 c9Var2 = this.b;
                IBinder binder = ((Messenger) c9Var2.b).getBinder();
                ((vn) c9Var.b).d.remove(binder);
                vn vnVar = (vn) c9Var.b;
                int i2 = this.c;
                int i3 = this.e;
                String str = this.d;
                kn knVar2 = new kn(vnVar, str, i2, i3, c9Var2);
                knVar2.f = new jn(null);
                try {
                    vnVar.d.put(binder, knVar2);
                    binder.linkToDeath(knVar2, 0);
                    MediaSessionCompat$Token mediaSessionCompat$Token = vnVar.f;
                    if (mediaSessionCompat$Token != null) {
                        jn jnVar = knVar2.f;
                        jnVar.getClass();
                        Bundle bundle = jnVar.a;
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putInt("extra_service_version", 2);
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("data_media_item_id", "root");
                        bundle2.putParcelable("data_media_session_token", mediaSessionCompat$Token);
                        bundle2.putBundle("data_root_hints", bundle);
                        c9Var2.v(1, bundle2);
                        return;
                    }
                    return;
                } catch (RemoteException unused) {
                    Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=".concat(str));
                    vnVar.d.remove(binder);
                    return;
                }
            default:
                c9 c9Var3 = this.b;
                IBinder binder2 = ((Messenger) c9Var3.b).getBinder();
                ((vn) c9Var.b).d.remove(binder2);
                vn vnVar2 = (vn) c9Var.b;
                Iterator it = vnVar2.c.iterator();
                while (true) {
                    if (it.hasNext()) {
                        kn knVar3 = (kn) it.next();
                        if (knVar3.c == this.c) {
                            if (TextUtils.isEmpty(this.d) || this.e <= 0) {
                                knVar = new kn(vnVar2, knVar3.a, knVar3.b, knVar3.c, c9Var3);
                            }
                            it.remove();
                        }
                    }
                }
                if (knVar == null) {
                    knVar = new kn(vnVar2, this.d, this.e, this.c, c9Var3);
                }
                vnVar2.d.put(binder2, knVar);
                try {
                    binder2.linkToDeath(knVar, 0);
                    return;
                } catch (RemoteException unused2) {
                    Log.w("MBServiceCompat", "IBinder is already dead.");
                    return;
                }
        }
    }

    public rn(c9 c9Var, c9 c9Var2, int i, String str, int i2, Bundle bundle) {
        this.f = c9Var;
        this.b = c9Var2;
        this.c = i;
        this.d = str;
        this.e = i2;
    }
}
