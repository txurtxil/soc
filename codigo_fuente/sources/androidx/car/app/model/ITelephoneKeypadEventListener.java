package androidx.car.app.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
/* loaded from: classes.dex */
public interface ITelephoneKeypadEventListener extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$model$ITelephoneKeypadEventListener".replace('$', '.');

    /* loaded from: classes.dex */
    public static class Default implements ITelephoneKeypadEventListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.model.ITelephoneKeypadEventListener
        public void onKeyDown(int i, IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.model.ITelephoneKeypadEventListener
        public void onKeyLongPress(int i, IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.model.ITelephoneKeypadEventListener
        public void onKeyUp(int i, IOnDoneCallback iOnDoneCallback) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ITelephoneKeypadEventListener {
        static final int TRANSACTION_onKeyDown = 3;
        static final int TRANSACTION_onKeyLongPress = 2;
        static final int TRANSACTION_onKeyUp = 4;

        /* loaded from: classes.dex */
        public static class Proxy implements ITelephoneKeypadEventListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ITelephoneKeypadEventListener.DESCRIPTOR;
            }

            @Override // androidx.car.app.model.ITelephoneKeypadEventListener
            public void onKeyDown(int i, IOnDoneCallback iOnDoneCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITelephoneKeypadEventListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.car.app.model.ITelephoneKeypadEventListener
            public void onKeyLongPress(int i, IOnDoneCallback iOnDoneCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITelephoneKeypadEventListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.car.app.model.ITelephoneKeypadEventListener
            public void onKeyUp(int i, IOnDoneCallback iOnDoneCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITelephoneKeypadEventListener.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITelephoneKeypadEventListener.DESCRIPTOR);
        }

        public static ITelephoneKeypadEventListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ITelephoneKeypadEventListener.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITelephoneKeypadEventListener)) {
                return (ITelephoneKeypadEventListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = ITelephoneKeypadEventListener.DESCRIPTOR;
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
                    onKeyUp(parcel.readInt(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                } else {
                    onKeyDown(parcel.readInt(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                }
            } else {
                onKeyLongPress(parcel.readInt(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
            }
            return true;
        }
    }

    void onKeyDown(int i, IOnDoneCallback iOnDoneCallback);

    void onKeyLongPress(int i, IOnDoneCallback iOnDoneCallback);

    void onKeyUp(int i, IOnDoneCallback iOnDoneCallback);
}
