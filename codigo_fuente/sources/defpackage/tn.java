package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: tn  reason: default package */
/* loaded from: classes.dex */
public final class tn implements Runnable {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ c9 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Bundle d;
    public final /* synthetic */ c9 e;
    public final /* synthetic */ Object f;

    public tn(c9 c9Var, c9 c9Var2, String str, IBinder iBinder, Bundle bundle) {
        this.e = c9Var;
        this.b = c9Var2;
        this.c = str;
        this.f = iBinder;
        this.d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.f;
        Bundle bundle = this.d;
        String str = this.c;
        c9 c9Var = this.e;
        c9 c9Var2 = this.b;
        switch (i) {
            case 0:
                kn knVar = (kn) ((vn) c9Var.b).d.getOrDefault(((Messenger) c9Var2.b).getBinder(), null);
                if (knVar == null) {
                    Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + str);
                    return;
                }
                HashMap hashMap = knVar.e;
                vn vnVar = (vn) c9Var.b;
                IBinder iBinder = (IBinder) obj;
                List<bt> list = (List) hashMap.get(str);
                if (list == null) {
                    list = new ArrayList();
                }
                for (bt btVar : list) {
                    if (iBinder == btVar.a) {
                        Bundle bundle2 = (Bundle) btVar.b;
                        if (bundle != bundle2) {
                            if (bundle == null) {
                                if (bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                                    return;
                                }
                            } else if (bundle2 == null) {
                                if (bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                                    return;
                                }
                            } else if (bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle2.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1)) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                list.add(new bt(iBinder, bundle));
                hashMap.put(str, list);
                vnVar.d(str, knVar, bundle);
                return;
            default:
                if (((kn) ((vn) c9Var.b).d.getOrDefault(((Messenger) c9Var2.b).getBinder(), null)) == null) {
                    Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                    return;
                }
                ((gy) obj).b(-1, null);
                return;
        }
    }

    public tn(c9 c9Var, c9 c9Var2, String str, Bundle bundle, gy gyVar) {
        this.e = c9Var;
        this.b = c9Var2;
        this.c = str;
        this.d = bundle;
        this.f = gyVar;
    }
}
