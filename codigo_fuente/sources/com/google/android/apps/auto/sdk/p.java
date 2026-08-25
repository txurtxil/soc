package com.google.android.apps.auto.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class p extends Binder implements o {
    public p() {
        attachInterface(this, "com.google.android.apps.auto.sdk.ISearchCallback");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.ISearchCallback");
            a();
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.ISearchCallback");
            b();
            parcel2.writeNoException();
            return true;
        } else if (i == 3) {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.ISearchCallback");
            a(parcel.readString());
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.ISearchCallback");
            boolean b = b(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(b ? 1 : 0);
            return true;
        } else if (i != 5) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.apps.auto.sdk.ISearchCallback");
            return true;
        } else {
            parcel.enforceInterface("com.google.android.apps.auto.sdk.ISearchCallback");
            a(parcel.readInt() != 0 ? SearchItem.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }
}
