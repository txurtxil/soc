package idv.lzn.screenonauto.projection;

import android.content.Intent;
import android.util.Log;
import com.google.android.apps.auto.sdk.CarActivityService;
import idv.lzn.screenonauto.ScreenCaptureService;
/* loaded from: classes.dex */
public final class ProjectionCarService extends CarActivityService {
    @Override // com.google.android.apps.auto.sdk.CarActivityService, com.google.android.gms.car.d, com.google.android.gms.car.CarActivityServiceProxy.ServiceCallbacks
    public final Class getCarActivity() {
        return ProjectionCarActivity.class;
    }

    @Override // com.google.android.gms.car.d, android.app.Service
    public final void onCreate() {
        boolean z;
        x6 x6Var;
        super.onCreate();
        Log.d("ProjectionCarService", "onCreate — legacy AA projection connected");
        if (!nq.d && !nq.e) {
            z = false;
        } else {
            z = true;
        }
        nq.e = true;
        if (!z && (x6Var = nq.f) != null) {
            x6Var.b(true);
        }
    }

    @Override // com.google.android.gms.car.d, android.app.Service
    public final void onDestroy() {
        x6 x6Var;
        super.onDestroy();
        Log.d("ProjectionCarService", "onDestroy — legacy AA projection disconnected");
        boolean d = hd.d();
        nq.e = false;
        if (d != hd.d() && (x6Var = nq.f) != null) {
            x6Var.b(Boolean.valueOf(hd.d()));
        }
        if (!hd.d() && lu.a(getApplicationContext()).getBoolean("stop_on_disconnect", true)) {
            getApplicationContext().stopService(new Intent(getApplicationContext(), ScreenCaptureService.class));
        }
    }
}
