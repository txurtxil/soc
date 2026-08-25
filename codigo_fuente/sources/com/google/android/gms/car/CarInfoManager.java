package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarInfoManager {

    /* loaded from: classes.dex */
    public interface CarInfo {
        int getDriverPosition();

        String getHeadUnitMake();

        String getHeadUnitModel();

        String getHeadUnitSoftwareBuild();

        String getHeadUnitSoftwareVersion();

        String getManufacturer();

        String getModel();

        String getModelYear();

        String getVehicleId();

        boolean isHideBatteryLevel();

        boolean isHidePhoneSignal();

        boolean isHideProjectedClock();
    }

    /* loaded from: classes.dex */
    public interface CarUiInfo {
        int[] getTouchpadDimensions();

        int getTouchscreenType();

        boolean hasDpad();

        boolean hasRotaryController();

        boolean hasSearchButton();

        boolean hasTouchpadForUiNavigation();

        boolean hasTouchscreen();

        boolean isTouchpadUiAbsolute();
    }

    CarInfo loadCarInfo();

    CarUiInfo loadCarUiInfo();
}
