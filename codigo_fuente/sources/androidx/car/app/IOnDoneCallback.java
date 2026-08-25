package androidx.car.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public interface IOnDoneCallback extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$IOnDoneCallback".replace('$', '.');

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IOnDoneCallback {
        static final int TRANSACTION_onFailure = 3;
        static final int TRANSACTION_onSuccess = 2;

        /* loaded from: classes.dex */
        public static class Proxy implements IOnDoneCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOnDoneCallback.DESCRIPTOR;
            }

            @Override // androidx.car.app.IOnDoneCallback
            public void onFailure(x7 x7Var) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOnDoneCallback.DESCRIPTOR);
                    if (x7Var != null) {
                        obtain.writeInt(1);
                        obtain.writeBundle(x7Var.a);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.car.app.IOnDoneCallback
            public void onSuccess(x7 x7Var) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOnDoneCallback.DESCRIPTOR);
                    if (x7Var != null) {
                        obtain.writeInt(1);
                        obtain.writeBundle(x7Var.a);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IOnDoneCallback.DESCRIPTOR);
        }

        public static IOnDoneCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IOnDoneCallback.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOnDoneCallback)) {
                return (IOnDoneCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IOnDoneCallback.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            x7 x7Var = null;
            if (i != 2) {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                Parcelable.Creator<x7> creator = x7.CREATOR;
                if (parcel.readInt() != 0) {
                    x7Var = creator.createFromParcel(parcel);
                }
                onFailure(x7Var);
                parcel2.writeNoException();
                return true;
            }
            Parcelable.Creator<x7> creator2 = x7.CREATOR;
            if (parcel.readInt() != 0) {
                x7Var = creator2.createFromParcel(parcel);
            }
            onSuccess(x7Var);
            parcel2.writeNoException();
            return true;
        }
    }

    void onFailure(x7 x7Var);

    void onSuccess(x7 x7Var);

    /* loaded from: classes.dex */
    public static class Default implements IOnDoneCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.IOnDoneCallback
        public void onFailure(x7 x7Var) {
        }

        @Override // androidx.car.app.IOnDoneCallback
        public void onSuccess(x7 x7Var) {
        }
    }
}
