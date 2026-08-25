package androidx.car.app.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
/* loaded from: classes.dex */
public interface IOnCheckedChangeListener extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$model$IOnCheckedChangeListener".replace('$', '.');

    /* loaded from: classes.dex */
    public static class Default implements IOnCheckedChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.model.IOnCheckedChangeListener
        public void onCheckedChange(boolean z, IOnDoneCallback iOnDoneCallback) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IOnCheckedChangeListener {
        static final int TRANSACTION_onCheckedChange = 2;

        /* loaded from: classes.dex */
        public static class Proxy implements IOnCheckedChangeListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOnCheckedChangeListener.DESCRIPTOR;
            }

            @Override // androidx.car.app.model.IOnCheckedChangeListener
            public void onCheckedChange(boolean z, IOnDoneCallback iOnDoneCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IOnCheckedChangeListener.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IOnCheckedChangeListener.DESCRIPTOR);
        }

        public static IOnCheckedChangeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IOnCheckedChangeListener.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOnCheckedChangeListener)) {
                return (IOnCheckedChangeListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            String str = IOnCheckedChangeListener.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                if (parcel.readInt() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                onCheckedChange(z, IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
        }
    }

    void onCheckedChange(boolean z, IOnDoneCallback iOnDoneCallback);
}
