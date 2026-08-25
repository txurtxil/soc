package com.google.android.apps.auto.sdk.service.a;

import com.google.android.gms.car.CarInfoManager;
import com.google.android.gms.car.CarNotConnectedException;
/* loaded from: classes.dex */
public final class c extends s90 {
    private CarInfoManager.CarInfo a;

    public c(CarInfoManager carInfoManager) {
        if (carInfoManager != null) {
            try {
                this.a = carInfoManager.loadCarInfo();
                carInfoManager.loadCarUiInfo();
                return;
            } catch (CarNotConnectedException e) {
                throw new Exception(e);
            }
        }
        c2.n("carInfoManager must be non-null.");
        throw null;
    }

    public final int getDriverPosition() {
        int driverPosition = this.a.getDriverPosition();
        if (driverPosition != 0) {
            if (driverPosition != 1) {
                return driverPosition != 2 ? 0 : 3;
            }
            return 2;
        }
        return 1;
    }

    public final String getHeadunitManufacturer() {
        return this.a.getManufacturer();
    }

    public final String getHeadunitModel() {
        return this.a.getHeadUnitModel();
    }

    public final String getHeadunitSoftwareBuild() {
        return this.a.getHeadUnitSoftwareBuild();
    }

    public final String getHeadunitSoftwareVersion() {
        return this.a.getHeadUnitSoftwareVersion();
    }

    public final String getManufacturer() {
        return this.a.getManufacturer();
    }

    public final String getModel() {
        return this.a.getModel();
    }

    public final String getModelYear() {
        return this.a.getModelYear();
    }

    public final String getVehicleId() {
        return this.a.getVehicleId();
    }

    public final void onCarDisconnected() {
        this.a = null;
    }
}
