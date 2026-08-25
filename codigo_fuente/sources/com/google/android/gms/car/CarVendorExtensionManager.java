package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarVendorExtensionManager {

    /* loaded from: classes.dex */
    public interface CarVendorExtensionListener {
        void onData(byte[] bArr);
    }

    byte[] getServiceData();

    String getServiceName();

    void registerListener(CarVendorExtensionListener carVendorExtensionListener);

    void release();

    void sendData(byte[] bArr);

    void sendData(byte[] bArr, int i, int i2);

    void unregisterListener();
}
