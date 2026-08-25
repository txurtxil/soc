package androidx.car.app.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public interface IMediaPlaybackHost extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$media$IMediaPlaybackHost".replace('$', '.');

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMediaPlaybackHost {
        static final int TRANSACTION_registerMediaSessionToken = 1;

        /* loaded from: classes.dex */
        public static class Proxy implements IMediaPlaybackHost {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IMediaPlaybackHost.DESCRIPTOR;
            }

            @Override // androidx.car.app.media.IMediaPlaybackHost
            public void registerMediaSessionToken(x7 x7Var) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IMediaPlaybackHost.DESCRIPTOR);
                    if (x7Var != null) {
                        obtain.writeInt(1);
                        x7Var.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IMediaPlaybackHost.DESCRIPTOR);
        }

        public static IMediaPlaybackHost asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IMediaPlaybackHost.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMediaPlaybackHost)) {
                return (IMediaPlaybackHost) queryLocalInterface;
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
            String str = IMediaPlaybackHost.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                Parcelable.Creator<x7> creator = x7.CREATOR;
                if (parcel.readInt() != 0) {
                    x7Var = creator.createFromParcel(parcel);
                } else {
                    x7Var = null;
                }
                registerMediaSessionToken(x7Var);
                parcel2.writeNoException();
                return true;
            }
        }
    }

    void registerMediaSessionToken(x7 x7Var);

    /* loaded from: classes.dex */
    public static class Default implements IMediaPlaybackHost {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.media.IMediaPlaybackHost
        public void registerMediaSessionToken(x7 x7Var) {
        }
    }
}
