package com.google.android.gms.car;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import com.google.android.gms.car.CarActivityHost;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public interface CarActivityServiceProxy {

    /* loaded from: classes.dex */
    public interface ServiceCallbacks {
        Class<? extends CarActivityHost.HostedCarActivity> getCarActivity();
    }

    void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    Object getActivityInstance();

    IBinder onBind(Intent intent);

    void onConfigurationChanged(Configuration configuration);

    void onCreate(Service service, ServiceCallbacks serviceCallbacks);

    void onDestroy();

    void onLowMemory();

    boolean onUnbind(Intent intent);
}
