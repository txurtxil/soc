package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarNavigationStatusManager {

    /* loaded from: classes.dex */
    public interface CarNavigationStatusListener {
        void onStart(int i, int i2, int i3, int i4, int i5);

        void onStop();
    }

    void registerListener(CarNavigationStatusListener carNavigationStatusListener);

    boolean sendNavigationStatus(int i);

    boolean sendNavigationTurnDistanceEvent(int i, int i2, int i3, int i4);

    boolean sendNavigationTurnEvent(int i, String str, int i2, int i3, byte[] bArr, int i4);

    void unregisterListener();
}
