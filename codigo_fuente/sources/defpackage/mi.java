package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: mi  reason: default package */
/* loaded from: classes.dex */
public final class mi implements ni {
    public IBinder a;

    @Override // defpackage.ni
    public final void a(ComponentName componentName) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.topjohnwu.superuser.internal.IRootServiceManager");
            if (componentName != null) {
                obtain.writeInt(1);
                componentName.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.a.transact(5, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }

    @Override // defpackage.ni
    public final void b(IBinder iBinder) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.topjohnwu.superuser.internal.IRootServiceManager");
            obtain.writeStrongBinder(iBinder);
            this.a.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // defpackage.ni
    public final IBinder d(Intent intent) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.topjohnwu.superuser.internal.IRootServiceManager");
            if (intent != null) {
                obtain.writeInt(1);
                intent.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.a.transact(4, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readStrongBinder();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // defpackage.ni
    public final void e(int i, ComponentName componentName) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.topjohnwu.superuser.internal.IRootServiceManager");
            if (componentName != null) {
                obtain.writeInt(1);
                componentName.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeInt(-1);
            this.a.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
