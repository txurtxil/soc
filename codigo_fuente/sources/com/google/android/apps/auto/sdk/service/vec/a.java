package com.google.android.apps.auto.sdk.service.vec;

import com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager;
import com.google.android.gms.car.CarNotConnectedException;
/* loaded from: classes.dex */
public final class a implements CarVendorExtensionManager {
    private final com.google.android.gms.car.CarVendorExtensionManager a;
    private b b;

    public a(com.google.android.gms.car.CarVendorExtensionManager carVendorExtensionManager) {
        this.a = carVendorExtensionManager;
    }

    @Override // com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager
    public final byte[] getServiceData() {
        try {
            return this.a.getServiceData();
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    @Override // com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager
    public final String getServiceName() {
        try {
            return this.a.getServiceName();
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    @Override // com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager
    public final void registerListener(CarVendorExtensionManager.CarVendorExtensionListener carVendorExtensionListener) {
        b bVar = this.b;
        if (bVar == null || bVar.a != carVendorExtensionListener) {
            b bVar2 = new b(this, carVendorExtensionListener);
            this.b = bVar2;
            this.a.registerListener(bVar2);
        }
    }

    @Override // com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager
    public final void release() {
        this.a.release();
        this.b = null;
    }

    @Override // com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager
    public final void sendData(byte[] bArr) {
        try {
            this.a.sendData(bArr);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    @Override // com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager
    public final void unregisterListener() {
        this.a.unregisterListener();
        this.b = null;
    }

    @Override // com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager
    public final void sendData(byte[] bArr, int i, int i2) {
        try {
            this.a.sendData(bArr, i, i2);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }
}
