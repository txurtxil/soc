package com.google.android.apps.auto.sdk.service;

import com.google.android.apps.auto.sdk.service.vec.CarVendorExtensionManager;
import com.google.android.apps.auto.sdk.service.vec.a;
import com.google.android.gms.car.CarApi;
import com.google.android.gms.car.CarNotConnectedException;
import com.google.android.gms.car.CarNotSupportedException;
/* loaded from: classes.dex */
public class CarVendorExtensionManagerLoader {
    public static final String VENDOR_EXTENSION_LOADER_SERVICE = "vec_loader";
    private CarApi a;

    public CarVendorExtensionManagerLoader(CarApi carApi) {
        this.a = carApi;
    }

    public CarVendorExtensionManager getManager(String str) {
        try {
            return new a(this.a.getVendorExtensionManager(str));
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        } catch (CarNotSupportedException unused) {
            return null;
        }
    }
}
