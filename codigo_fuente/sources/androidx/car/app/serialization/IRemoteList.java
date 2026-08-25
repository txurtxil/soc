package androidx.car.app.serialization;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
/* loaded from: classes.dex */
public interface IRemoteList extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$serialization$IRemoteList".replace('$', '.');

    /* loaded from: classes.dex */
    public static class Default implements IRemoteList {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.serialization.IRemoteList
        public void requestItemRange(int i, int i2, IOnDoneCallback iOnDoneCallback) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IRemoteList {
        static final int TRANSACTION_requestItemRange = 2;

        /* loaded from: classes.dex */
        public static class Proxy implements IRemoteList {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IRemoteList.DESCRIPTOR;
            }

            @Override // androidx.car.app.serialization.IRemoteList
            public void requestItemRange(int i, int i2, IOnDoneCallback iOnDoneCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IRemoteList.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IRemoteList.DESCRIPTOR);
        }

        public static IRemoteList asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IRemoteList.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IRemoteList)) {
                return (IRemoteList) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IRemoteList.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                requestItemRange(parcel.readInt(), parcel.readInt(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
        }
    }

    void requestItemRange(int i, int i2, IOnDoneCallback iOnDoneCallback);
}
