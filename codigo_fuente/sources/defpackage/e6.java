package defpackage;

import android.content.Intent;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.car.app.CarAppPermissionActivity;
import androidx.car.app.IAppHost;
import androidx.car.app.IOnRequestPermissionsListener;
import androidx.car.app.IStartCarApp;
import androidx.car.app.b;
import androidx.car.app.notification.CarAppNotificationBroadcastReceiver;
import androidx.car.app.utils.e;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: e6  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class e6 implements ai, ix, s1 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e6(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.s1
    public void a(Object obj) {
        CarAppPermissionActivity carAppPermissionActivity = (CarAppPermissionActivity) this.a;
        IOnRequestPermissionsListener iOnRequestPermissionsListener = (IOnRequestPermissionsListener) this.b;
        int i = CarAppPermissionActivity.t;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            Boolean bool = (Boolean) entry.getValue();
            if (bool != null && bool.booleanValue()) {
                arrayList.add((String) entry.getKey());
            } else {
                arrayList2.add((String) entry.getKey());
            }
        }
        try {
            iOnRequestPermissionsListener.onRequestPermissionsResult((String[]) arrayList.toArray(new String[0]), (String[]) arrayList2.toArray(new String[0]));
        } catch (RemoteException e) {
            Log.e("CarApp", "CarAppService dead when accepting/rejecting permissions", e);
        }
        carAppPermissionActivity.finish();
    }

    @Override // defpackage.ix
    public Object call() {
        int i = CarAppNotificationBroadcastReceiver.a;
        ((IStartCarApp) this.a).startCarApp((Intent) this.b);
        return null;
    }

    @Override // defpackage.ai
    public void e(IInterface iInterface) {
        ((IAppHost) iInterface).setSurfaceCallback(e.h(((b) this.a).d, (ko) this.b));
    }
}
