package com.google.android.apps.auto.sdk.service.vec;

import com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager;
import com.google.android.gms.car.CarVendorExtensionManager;
/* loaded from: classes.dex */
final class b implements com.google.android.apps.auto.sdk.service.a.c.a<CarVendorExtensionManager.CarVendorExtensionListener>, CarVendorExtensionManager.CarVendorExtensionListener {
    CarVendorExtensionManager.CarVendorExtensionListener a;
    private a b;

    public b(a aVar, CarVendorExtensionManager.CarVendorExtensionListener carVendorExtensionListener) {
        this.a = carVendorExtensionListener;
        this.b = aVar;
    }

    @Override // com.google.android.apps.auto.sdk.service.a.c.a
    public final /* synthetic */ CarVendorExtensionManager.CarVendorExtensionListener a() {
        return this.a;
    }

    @Override // com.google.android.gms.car.CarVendorExtensionManager.CarVendorExtensionListener
    public final void onData(byte[] bArr) {
        this.a.onData(this.b, bArr);
    }
}
