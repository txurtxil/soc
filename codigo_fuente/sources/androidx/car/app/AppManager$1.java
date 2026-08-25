package androidx.car.app;

import android.content.pm.PackageManager;
import android.location.LocationManager;
import androidx.car.app.IAppManager;
import java.util.Objects;
/* loaded from: classes.dex */
public class AppManager$1 extends IAppManager.Stub {
    final /* synthetic */ b this$0;
    final /* synthetic */ i val$carContext;

    public AppManager$1(b bVar, i iVar) {
        this.this$0 = bVar;
        this.val$carContext = iVar;
    }

    public static Object lambda$onBackPressed$0(i iVar) {
        iVar.a.b();
        return null;
    }

    public static Object lambda$startLocationUpdates$1(i iVar) {
        b bVar = (b) iVar.b(b.class);
        ((LocationManager) bVar.a.getSystemService("location")).removeUpdates(bVar.e);
        ((LocationManager) bVar.a.getSystemService("location")).requestLocationUpdates("fused", 1000L, 1.0f, bVar.e, bVar.f.getLooper());
        return null;
    }

    public static Object lambda$stopLocationUpdates$2(i iVar) {
        b bVar = (b) iVar.b(b.class);
        ((LocationManager) bVar.a.getSystemService("location")).removeUpdates(bVar.e);
        return null;
    }

    @Override // androidx.car.app.IAppManager
    public void getTemplate(IOnDoneCallback iOnDoneCallback) {
        androidx.lifecycle.a aVar = this.this$0.d;
        k kVar = (k) this.val$carContext.b(k.class);
        Objects.requireNonNull(kVar);
        androidx.car.app.utils.e.b(aVar, iOnDoneCallback, "getTemplate", new b2(kVar));
    }

    @Override // androidx.car.app.IAppManager
    public void onBackPressed(IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(this.this$0.d, iOnDoneCallback, "onBackPressed", new a(this.val$carContext, 0));
    }

    @Override // androidx.car.app.IAppManager
    public void startLocationUpdates(IOnDoneCallback iOnDoneCallback) {
        boolean z;
        PackageManager packageManager = this.val$carContext.getPackageManager();
        boolean z2 = false;
        if (packageManager.checkPermission("android.permission.ACCESS_FINE_LOCATION", this.val$carContext.getPackageName()) == -1) {
            z = true;
        } else {
            z = false;
        }
        if (packageManager.checkPermission("android.permission.ACCESS_COARSE_LOCATION", this.val$carContext.getPackageName()) == -1) {
            z2 = true;
        }
        if (z && z2) {
            androidx.car.app.utils.e.f(iOnDoneCallback, "startLocationUpdates", new SecurityException("Location permission(s) not granted."));
        }
        androidx.car.app.utils.e.b(this.this$0.d, iOnDoneCallback, "startLocationUpdates", new a(this.val$carContext, 2));
    }

    @Override // androidx.car.app.IAppManager
    public void stopLocationUpdates(IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(this.this$0.d, iOnDoneCallback, "stopLocationUpdates", new a(this.val$carContext, 1));
    }
}
