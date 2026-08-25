package com.google.android.apps.auto.sdk.service.vec;
/* loaded from: classes.dex */
public interface CarVendorExtensionManager {
    public static final String PERMISSION_VENDOR_EXTENSION = "com.google.android.gms.permission.CAR_VENDOR_EXTENSION";

    /* loaded from: classes.dex */
    public interface CarVendorExtensionListener {
        void onData(CarVendorExtensionManager carVendorExtensionManager, byte[] bArr);
    }

    byte[] getServiceData();

    String getServiceName();

    void registerListener(CarVendorExtensionListener carVendorExtensionListener);

    void release();

    void sendData(byte[] bArr);

    void sendData(byte[] bArr, int i, int i2);

    void unregisterListener();
}
