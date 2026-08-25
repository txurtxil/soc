package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.ArrayList;
/* renamed from: ln  reason: default package */
/* loaded from: classes.dex */
public class ln extends MediaBrowserService {
    public final /* synthetic */ cf a;

    public ln(cf cfVar, Context context) {
        this.a = cfVar;
        attachBaseContext(context);
    }

    @Override // android.service.media.MediaBrowserService
    public final MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        Bundle bundle2;
        int i2;
        Bundle bundle3;
        IBinder asBinder;
        ko.r(bundle);
        cf cfVar = this.a;
        vn vnVar = (vn) cfVar.e;
        Bundle bundle4 = null;
        if (bundle == null) {
            bundle2 = null;
        } else {
            bundle2 = new Bundle(bundle);
        }
        if (bundle2 != null && bundle2.getInt("extra_client_version", 0) != 0) {
            bundle2.remove("extra_client_version");
            cfVar.d = new Messenger(vnVar.e);
            Bundle bundle5 = new Bundle();
            bundle5.putInt("extra_service_version", 2);
            v7.b(bundle5, "extra_messenger", ((Messenger) cfVar.d).getBinder());
            MediaSessionCompat$Token mediaSessionCompat$Token = vnVar.f;
            if (mediaSessionCompat$Token != null) {
                ji a = mediaSessionCompat$Token.a();
                if (a == null) {
                    asBinder = null;
                } else {
                    asBinder = a.asBinder();
                }
                v7.b(bundle5, "extra_session_binder", asBinder);
            } else {
                ((ArrayList) cfVar.b).add(bundle5);
            }
            int i3 = bundle2.getInt("extra_calling_pid", -1);
            bundle2.remove("extra_calling_pid");
            i2 = i3;
            bundle3 = bundle5;
        } else {
            i2 = -1;
            bundle3 = null;
        }
        kn knVar = new kn(vnVar, str, i2, i, null);
        if (((Messenger) cfVar.d) != null) {
            vnVar.c.add(knVar);
        }
        if (bundle3 != null) {
            bundle4 = bundle3;
        }
        return new MediaBrowserService.BrowserRoot("root", bundle4);
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result) {
        ((vn) this.a.e).c(str, new in(str, 1, new c9(19, result)));
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadItem(String str, MediaBrowserService.Result result) {
        new c9(19, result).w(null);
    }
}
