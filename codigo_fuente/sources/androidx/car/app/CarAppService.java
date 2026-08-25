package androidx.car.app;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes.dex */
public abstract class CarAppService extends Service {
    public final HashMap a = new HashMap();
    public AppInfo b;
    public n2 c;

    public abstract ei a();

    public l b() {
        throw new RuntimeException("Please override and implement CarAppService#onCreateSession(SessionInfo).");
    }

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(fileDescriptor, printWriter, strArr);
        if (strArr != null) {
            for (String str : strArr) {
                if ("AUTO_DRIVE".equals(str)) {
                    n40.b(new Runnable() { // from class: androidx.car.app.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            CarAppService carAppService = CarAppService.this;
                            synchronized (carAppService.a) {
                                try {
                                    for (CarAppBinder carAppBinder : carAppService.a.values()) {
                                        if (Log.isLoggable("CarApp", 3)) {
                                            Log.d("CarApp", "Executing onAutoDriveEnabled for " + carAppBinder.getCurrentSessionInfo());
                                        }
                                        carAppBinder.onAutoDriveEnabled();
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        boolean containsKey;
        SessionInfo sessionInfo;
        CarAppBinder carAppBinder;
        Bundle extras = intent.getExtras();
        if (extras == null) {
            containsKey = false;
        } else {
            containsKey = extras.containsKey("androidx.car.app.extra.SESSION_INFO_BUNDLE");
        }
        if (containsKey) {
            sessionInfo = s8.o(intent);
        } else {
            sessionInfo = SessionInfo.DEFAULT_SESSION_INFO;
        }
        synchronized (this.a) {
            try {
                if (!this.a.containsKey(sessionInfo)) {
                    this.a.put(sessionInfo, new CarAppBinder(this, sessionInfo));
                }
                carAppBinder = (CarAppBinder) this.a.get(sessionInfo);
                Objects.requireNonNull(carAppBinder);
            } catch (Throwable th) {
                throw th;
            }
        }
        return carAppBinder;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        synchronized (this.a) {
            try {
                for (CarAppBinder carAppBinder : this.a.values()) {
                    carAppBinder.destroy();
                }
                this.a.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        boolean containsKey;
        SessionInfo sessionInfo;
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onUnbind intent: " + intent);
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            containsKey = false;
        } else {
            containsKey = extras.containsKey("androidx.car.app.extra.SESSION_INFO_BUNDLE");
        }
        if (containsKey) {
            sessionInfo = s8.o(intent);
        } else {
            sessionInfo = SessionInfo.DEFAULT_SESSION_INFO;
        }
        n40.b(new h(this, 0, sessionInfo));
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onUnbind completed");
            return true;
        }
        return true;
    }
}
