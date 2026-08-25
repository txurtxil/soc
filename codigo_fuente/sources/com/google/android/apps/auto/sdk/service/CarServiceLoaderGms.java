package com.google.android.apps.auto.sdk.service;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.auto.sdk.service.a.c;
import com.google.android.apps.auto.sdk.service.a.d;
import com.google.android.gms.car.CarApi;
import com.google.android.gms.car.CarApiConnection;
import com.google.android.gms.car.CarAudioManager;
import com.google.android.gms.car.CarInfoManager;
import com.google.android.gms.car.CarMessageManager;
import com.google.android.gms.car.CarNavigationStatusManager;
import com.google.android.gms.car.CarNotConnectedException;
import com.google.android.gms.car.CarNotSupportedException;
import com.google.android.gms.car.CarSensorManager;
/* loaded from: classes.dex */
public class CarServiceLoaderGms extends w90 {
    private static final String TAG = "CAR.SVC.LOADER.GMS";
    private a mApiConnectionCallback;
    za0 mApiFactory;
    CarApi mCarApi;
    private b mCarApiCallback;
    CarApiConnection mCarApiConnection;

    /* loaded from: classes.dex */
    public final class a implements CarApiConnection.ApiConnectionCallback {
        private a() {
        }

        private final void a() {
            CarServiceLoaderGms carServiceLoaderGms;
            synchronized (CarServiceLoaderGms.this) {
                carServiceLoaderGms = CarServiceLoaderGms.this;
                carServiceLoaderGms.mCarApi = null;
            }
            ((h90) carServiceLoaderGms.getConnectionCallback()).getClass();
            throw null;
        }

        @Override // com.google.android.gms.car.CarApiConnection.ApiConnectionCallback
        public final void onConnected() {
            b bVar;
            synchronized (CarServiceLoaderGms.this) {
                try {
                    CarServiceLoaderGms carServiceLoaderGms = CarServiceLoaderGms.this;
                    CarApiConnection carApiConnection = carServiceLoaderGms.mCarApiConnection;
                    if (carApiConnection == null) {
                        return;
                    }
                    carServiceLoaderGms.mCarApi = carApiConnection.getCarApi();
                    CarServiceLoaderGms carServiceLoaderGms2 = CarServiceLoaderGms.this;
                    if (carServiceLoaderGms2.mCarApiCallback == null) {
                        bVar = new b(CarServiceLoaderGms.this, (byte) 0);
                    } else {
                        bVar = CarServiceLoaderGms.this.mCarApiCallback;
                    }
                    carServiceLoaderGms2.mCarApiCallback = bVar;
                    boolean isConnectedToCar = CarServiceLoaderGms.this.mCarApi.isConnectedToCar();
                    CarServiceLoaderGms carServiceLoaderGms3 = CarServiceLoaderGms.this;
                    if (isConnectedToCar) {
                        carServiceLoaderGms3.mCarApi.registerCarConnectionListener(carServiceLoaderGms3.mCarApiCallback);
                    } else {
                        ((h90) carServiceLoaderGms3.getConnectionCallback()).getClass();
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.car.CarApiConnection.ApiConnectionCallback
        public final void onConnectionFailed() {
            a();
        }

        @Override // com.google.android.gms.car.CarApiConnection.ApiConnectionCallback
        public final void onConnectionSuspended() {
            a();
        }

        public /* synthetic */ a(CarServiceLoaderGms carServiceLoaderGms, byte b) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public final class b implements CarApi.CarConnectionCallback {
        private b() {
        }

        @Override // com.google.android.gms.car.CarApi.CarConnectionCallback
        public final void onConnected(int i) {
            ((h90) CarServiceLoaderGms.this.getConnectionCallback()).getClass();
            throw null;
        }

        @Override // com.google.android.gms.car.CarApi.CarConnectionCallback
        public final void onDisconnected() {
            CarServiceLoaderGms carServiceLoaderGms;
            synchronized (CarServiceLoaderGms.this) {
                carServiceLoaderGms = CarServiceLoaderGms.this;
                carServiceLoaderGms.mCarApi = null;
            }
            ((h90) carServiceLoaderGms.getConnectionCallback()).getClass();
            throw null;
        }

        public /* synthetic */ b(CarServiceLoaderGms carServiceLoaderGms, byte b) {
            this();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [za0, java.lang.Object] */
    public CarServiceLoaderGms(Context context, v90 v90Var, Handler handler) {
        super(context, v90Var, handler);
        this.mApiConnectionCallback = new a(this, (byte) 0);
        this.mApiFactory = new Object();
    }

    private Object getCarManagerInternal(String str) {
        CarVendorExtensionManagerLoader carVendorExtensionManagerLoader;
        Object aVar;
        synchronized (this) {
            carVendorExtensionManagerLoader = null;
            try {
                try {
                    switch (str.hashCode()) {
                        case -1853877803:
                            if (str.equals("car_navigation_service")) {
                                aVar = new com.google.android.apps.auto.sdk.service.a.b.a((CarNavigationStatusManager) this.mCarApi.getCarManager(str));
                                carVendorExtensionManagerLoader = aVar;
                                break;
                            }
                            break;
                        case -1527548130:
                            if (str.equals(CarVendorExtensionManagerLoader.VENDOR_EXTENSION_LOADER_SERVICE)) {
                                carVendorExtensionManagerLoader = new CarVendorExtensionManagerLoader(this.mCarApi);
                                break;
                            }
                            break;
                        case -905948230:
                            if (str.equals("sensor")) {
                                aVar = new d((CarSensorManager) this.mCarApi.getCarManager(str));
                                carVendorExtensionManagerLoader = aVar;
                                break;
                            }
                            break;
                        case 3237038:
                            if (str.equals("info")) {
                                aVar = new c((CarInfoManager) this.mCarApi.getCarManager(str));
                                carVendorExtensionManagerLoader = aVar;
                                break;
                            }
                            break;
                        case 93166550:
                            if (str.equals("audio")) {
                                aVar = new com.google.android.apps.auto.sdk.service.a.a.a((AudioManager) getContext().getSystemService("audio"), (CarAudioManager) this.mCarApi.getCarManager(str));
                                carVendorExtensionManagerLoader = aVar;
                                break;
                            }
                            break;
                        case 1830376762:
                            if (str.equals("app_focus")) {
                                aVar = new com.google.android.apps.auto.sdk.service.a.a((CarMessageManager) this.mCarApi.getCarManager(str));
                                carVendorExtensionManagerLoader = aVar;
                                break;
                            }
                            break;
                    }
                } catch (CarNotConnectedException e) {
                    throw new Exception(e);
                } catch (CarNotSupportedException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return carVendorExtensionManagerLoader;
    }

    public void connect() {
        synchronized (this) {
            if (!isConnected()) {
                try {
                    za0 za0Var = this.mApiFactory;
                    Context context = getContext();
                    a aVar = this.mApiConnectionCallback;
                    Looper looper = getEventHandler().getLooper();
                    za0Var.getClass();
                    CarApiConnection a2 = za0.a(context, aVar, looper);
                    this.mCarApiConnection = a2;
                    a2.connect();
                } catch (ab0 e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    public void disconnect() {
        synchronized (this) {
            this.mCarApi.unregisterCarConnectionListener(this.mCarApiCallback);
            this.mCarApiConnection.disconnect();
            this.mCarApiConnection = null;
            this.mCarApi = null;
        }
    }

    public int getCarConnectionType() {
        int i;
        synchronized (this) {
            if (isConnected()) {
                try {
                    int carConnectionType = this.mCarApi.getCarConnectionType();
                    if (carConnectionType != 0) {
                        i = 1;
                        if (carConnectionType != 1) {
                            i = 2;
                            if (carConnectionType != 2) {
                                i = 3;
                                if (carConnectionType != 3) {
                                    i = 4;
                                    if (carConnectionType != 4) {
                                        i = -1;
                                    }
                                }
                            }
                        }
                    } else {
                        i = 0;
                    }
                } catch (CarNotConnectedException e) {
                    throw new Exception(e);
                }
            } else {
                throw new Exception();
            }
        }
        return i;
    }

    public Object getCarManager(String str) {
        Object carManagerInternal;
        synchronized (this) {
            if (isConnected()) {
                try {
                    carManagerInternal = getCarManagerInternal(str);
                } catch (t90 e) {
                    throw new Exception(e);
                }
            } else {
                throw new Exception();
            }
        }
        return carManagerInternal;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this) {
            CarApi carApi = this.mCarApi;
            if (carApi != null) {
                z = carApi.isConnectedToCar();
            }
        }
        return z;
    }
}
