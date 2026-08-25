package com.google.android.apps.auto.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class d extends Binder implements c {
    public d() {
        attachInterface(this, "com.google.android.apps.auto.sdk.IDrawerCallback");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.IDrawerCallback");
            a();
        } else if (i == 2) {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.IDrawerCallback");
            b();
        } else if (i == 3) {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.IDrawerCallback");
            c();
        } else if (i != 4) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.apps.auto.sdk.IDrawerCallback");
            return true;
        } else {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.IDrawerCallback");
            d();
        }
        parcel2.writeNoException();
        return true;
    }
}
