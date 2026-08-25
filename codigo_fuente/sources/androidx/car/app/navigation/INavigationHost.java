package androidx.car.app.navigation;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public interface INavigationHost extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$navigation$INavigationHost".replace('$', '.');

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements INavigationHost {
        static final int TRANSACTION_navigationEnded = 3;
        static final int TRANSACTION_navigationStarted = 2;
        static final int TRANSACTION_updateTrip = 4;

        /* loaded from: classes.dex */
        public static class Proxy implements INavigationHost {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return INavigationHost.DESCRIPTOR;
            }

            @Override // androidx.car.app.navigation.INavigationHost
            public void navigationEnded() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INavigationHost.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.car.app.navigation.INavigationHost
            public void navigationStarted() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INavigationHost.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.car.app.navigation.INavigationHost
            public void updateTrip(x7 x7Var) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INavigationHost.DESCRIPTOR);
                    if (x7Var != null) {
                        obtain.writeInt(1);
                        x7Var.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, INavigationHost.DESCRIPTOR);
        }

        public static INavigationHost asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(INavigationHost.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof INavigationHost)) {
                return (INavigationHost) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            x7 x7Var;
            String str = INavigationHost.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    Parcelable.Creator<x7> creator = x7.CREATOR;
                    if (parcel.readInt() != 0) {
                        x7Var = creator.createFromParcel(parcel);
                    } else {
                        x7Var = null;
                    }
                    updateTrip(x7Var);
                    parcel2.writeNoException();
                } else {
                    navigationEnded();
                    parcel2.writeNoException();
                }
            } else {
                navigationStarted();
                parcel2.writeNoException();
            }
            return true;
        }
    }

    void navigationEnded();

    void navigationStarted();

    void updateTrip(x7 x7Var);

    /* loaded from: classes.dex */
    public static class Default implements INavigationHost {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.navigation.INavigationHost
        public void navigationEnded() {
        }

        @Override // androidx.car.app.navigation.INavigationHost
        public void navigationStarted() {
        }

        @Override // androidx.car.app.navigation.INavigationHost
        public void updateTrip(x7 x7Var) {
        }
    }
}
