package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarApiConnection {

    /* loaded from: classes.dex */
    public interface ApiConnectionCallback {
        void onConnected();

        void onConnectionFailed();

        void onConnectionSuspended();
    }

    void connect();

    void disconnect();

    CarApi getCarApi();
}
