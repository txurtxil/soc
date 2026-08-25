package com.google.android.gms.car;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.car.CarActivityServiceProxy;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class d extends Service implements CarActivityServiceProxy.ServiceCallbacks {
    private CarActivityServiceProxy a;

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.a.dump(fileDescriptor, printWriter, strArr);
    }

    public abstract Class<? extends bb0> getCarActivity();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.a.onBind(intent);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.a.onConfigurationChanged(configuration);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            if (this.a == null) {
                try {
                    this.a = (CarActivityServiceProxy) za0.c(this).getMethod("newCarActivityServiceProxy", Context.class).invoke(null, this);
                } catch (Exception e) {
                    throw new Exception(e);
                }
            }
            this.a.onCreate(this, this);
        } catch (ab0 e2) {
            Log.e("CAR.PROJECTION", "Error loading car activity host", e2);
            c2.k(e2);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.a.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.a.onLowMemory();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return this.a.onUnbind(intent);
    }
}
