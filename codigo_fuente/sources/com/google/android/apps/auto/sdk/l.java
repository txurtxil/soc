package com.google.android.apps.auto.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class l extends Binder implements k {
    public l() {
        attachInterface(this, "com.google.android.apps.auto.sdk.IMenuAdapter");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.apps.auto.sdk.IMenuAdapter");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.apps.auto.sdk.IMenuAdapter");
                int a = a();
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            case 2:
                parcel.enforceInterface("com.google.android.apps.auto.sdk.IMenuAdapter");
                MenuItem a2 = a(parcel.readInt());
                parcel2.writeNoException();
                if (a2 == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                a2.writeToParcel(parcel2, 1);
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.apps.auto.sdk.IMenuAdapter");
                a(parcel.readInt() != 0 ? MenuItem.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface("com.google.android.apps.auto.sdk.IMenuAdapter");
                boolean b = b();
                parcel2.writeNoException();
                parcel2.writeInt(b ? 1 : 0);
                return true;
            case 5:
                parcel.enforceInterface("com.google.android.apps.auto.sdk.IMenuAdapter");
                c();
                parcel2.writeNoException();
                return true;
            case 6:
                parcel.enforceInterface("com.google.android.apps.auto.sdk.IMenuAdapter");
                d();
                parcel2.writeNoException();
                return true;
            case 7:
                parcel.enforceInterface("com.google.android.apps.auto.sdk.IMenuAdapter");
                e();
                parcel2.writeNoException();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
