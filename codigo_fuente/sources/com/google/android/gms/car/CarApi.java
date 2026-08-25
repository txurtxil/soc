package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarApi {

    /* loaded from: classes.dex */
    public interface CarConnectionCallback {
        void onConnected(int i);

        void onDisconnected();
    }

    int getCarConnectionType();

    Object getCarManager(String str);

    CarVendorExtensionManager getVendorExtensionManager(String str);

    boolean isConnectedToCar();

    void registerCarConnectionListener(CarConnectionCallback carConnectionCallback);

    void unregisterCarConnectionListener(CarConnectionCallback carConnectionCallback);
}
