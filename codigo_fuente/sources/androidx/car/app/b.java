package androidx.car.app;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.HandlerThread;
import androidx.car.app.IAppManager;
import androidx.car.app.b;
import androidx.car.app.utils.e;
import java.util.List;
/* loaded from: classes.dex */
public final class b implements fm {
    public final i a;
    public final IAppManager.Stub b;
    public final j c;
    public final androidx.lifecycle.a d;
    public final HandlerThread f = new HandlerThread("LocationUpdateThread");
    public final f6 e = new LocationListener() { // from class: f6
        @Override // android.location.LocationListener
        public final void onLocationChanged(List list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                onLocationChanged((Location) list.get(i));
            }
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            e.d("sendLocation", new bi(b.this.c, "sendLocation", new b2(location)));
        }

        @Override // android.location.LocationListener
        public final void onFlushComplete(int i) {
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    };

    /* JADX WARN: Type inference failed for: r1v2, types: [f6] */
    public b(i iVar, j jVar, androidx.lifecycle.a aVar) {
        this.a = iVar;
        this.c = jVar;
        this.d = aVar;
        this.b = new AppManager$1(this, iVar);
    }
}
