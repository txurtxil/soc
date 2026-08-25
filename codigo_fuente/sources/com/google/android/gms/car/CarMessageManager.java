package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarMessageManager {

    /* loaded from: classes.dex */
    public interface CarMessageListener {
        void onIntegerMessage(int i, int i2, int i3);

        void onOwnershipLost(int i);
    }

    boolean acquireCategory(int i);

    Integer getLastIntegerMessage(int i, int i2);

    void registerMessageListener(CarMessageListener carMessageListener);

    void releaseAllCategories();

    void releaseCategory(int i);

    void sendIntegerMessage(int i, int i2, int i3);

    void unregisterMessageListener();
}
