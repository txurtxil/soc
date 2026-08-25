package androidx.car.app.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
/* loaded from: classes.dex */
public interface IAlertCallback extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$model$IAlertCallback".replace('$', '.');

    /* loaded from: classes.dex */
    public static class Default implements IAlertCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.model.IAlertCallback
        public void onAlertCancelled(int i, IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.model.IAlertCallback
        public void onAlertDismissed(IOnDoneCallback iOnDoneCallback) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAlertCallback {
        static final int TRANSACTION_onAlertCancelled = 2;
        static final int TRANSACTION_onAlertDismissed = 3;

        /* loaded from: classes.dex */
        public static class Proxy implements IAlertCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IAlertCallback.DESCRIPTOR;
            }

            @Override // androidx.car.app.model.IAlertCallback
            public void onAlertCancelled(int i, IOnDoneCallback iOnDoneCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IAlertCallback.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.car.app.model.IAlertCallback
            public void onAlertDismissed(IOnDoneCallback iOnDoneCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IAlertCallback.DESCRIPTOR);
                    obtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IAlertCallback.DESCRIPTOR);
        }

        public static IAlertCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IAlertCallback.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAlertCallback)) {
                return (IAlertCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IAlertCallback.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 2) {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onAlertDismissed(IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
            } else {
                onAlertCancelled(parcel.readInt(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
            }
            return true;
        }
    }

    void onAlertCancelled(int i, IOnDoneCallback iOnDoneCallback);

    void onAlertDismissed(IOnDoneCallback iOnDoneCallback);
}
