package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: oi  reason: default package */
/* loaded from: classes.dex */
public final class oi implements qi {
    public IBinder a;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }

    public final int g(d20 d20Var, Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            obtain.writeStrongBinder(d20Var);
            obtain.writeInt(1);
            bundle.writeToParcel(obtain, 0);
            if (!this.a.transact(12, obtain, obtain2, 0)) {
                int i = pi.a;
            }
            obtain2.readException();
            int readInt = obtain2.readInt();
            obtain2.recycle();
            obtain.recycle();
            return readInt;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }

    public final boolean h() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            boolean z = false;
            if (!this.a.transact(16, obtain, obtain2, 0)) {
                int i = pi.a;
            }
            obtain2.readException();
            if (obtain2.readInt() != 0) {
                z = true;
            }
            obtain2.recycle();
            obtain.recycle();
            return z;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }

    public final int i(d20 d20Var, Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (d20Var == null) {
                d20Var = null;
            }
            obtain.writeStrongBinder(d20Var);
            obtain.writeInt(1);
            bundle.writeToParcel(obtain, 0);
            if (!this.a.transact(13, obtain, obtain2, 0)) {
                int i = pi.a;
            }
            obtain2.readException();
            int readInt = obtain2.readInt();
            obtain2.recycle();
            obtain.recycle();
            return readInt;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }

    public final void j(int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            obtain.writeInt(i);
            if (!this.a.transact(15, obtain, obtain2, 0)) {
                int i2 = pi.a;
            }
            obtain2.readException();
            obtain2.recycle();
            obtain.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }
}
