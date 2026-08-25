package com.google.android.apps.auto.sdk;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
final class j implements i {
    private IBinder a;

    public j(IBinder iBinder) {
        this.a = iBinder;
    }

    @Override // com.google.android.apps.auto.sdk.i
    public final void a(g gVar) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.apps.auto.sdk.IImeController");
            obtain.writeStrongBinder(gVar != null ? gVar.asBinder() : null);
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
            obtain.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }
}
