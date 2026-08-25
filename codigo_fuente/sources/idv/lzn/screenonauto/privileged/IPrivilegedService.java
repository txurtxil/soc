package idv.lzn.screenonauto.privileged;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MotionEvent;
/* loaded from: classes.dex */
public interface IPrivilegedService extends IInterface {
    public static final String DESCRIPTOR = "idv.lzn.screenonauto.privileged.IPrivilegedService";

    /* loaded from: classes.dex */
    public static class Default implements IPrivilegedService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
        public void attachClient(IBinder iBinder) {
        }

        @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
        public void destroy() {
        }

        @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
        public int displayPowerModeStatus() {
            return 0;
        }

        @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
        public void injectKeyCode(int i) {
        }

        @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
        public void injectMotionEvent(MotionEvent motionEvent) {
        }

        @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
        public boolean isTouchInjectionSupported() {
            return false;
        }

        @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
        public boolean setDisplayPowerMode(int i) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IPrivilegedService {
        static final int TRANSACTION_attachClient = 2;
        static final int TRANSACTION_destroy = 16777115;
        static final int TRANSACTION_displayPowerModeStatus = 7;
        static final int TRANSACTION_injectKeyCode = 6;
        static final int TRANSACTION_injectMotionEvent = 4;
        static final int TRANSACTION_isTouchInjectionSupported = 5;
        static final int TRANSACTION_setDisplayPowerMode = 3;

        /* loaded from: classes.dex */
        public static class Proxy implements IPrivilegedService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
            public void attachClient(IBinder iBinder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IPrivilegedService.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
            public void destroy() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IPrivilegedService.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_destroy, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
            public int displayPowerModeStatus() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IPrivilegedService.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IPrivilegedService.DESCRIPTOR;
            }

            @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
            public void injectKeyCode(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IPrivilegedService.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
            public void injectMotionEvent(MotionEvent motionEvent) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IPrivilegedService.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, motionEvent, 0);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
            public boolean isTouchInjectionSupported() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IPrivilegedService.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
            public boolean setDisplayPowerMode(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IPrivilegedService.DESCRIPTOR);
                    obtain.writeInt(i);
                    boolean z = false;
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IPrivilegedService.DESCRIPTOR);
        }

        public static IPrivilegedService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IPrivilegedService.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IPrivilegedService)) {
                return (IPrivilegedService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IPrivilegedService.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IPrivilegedService.DESCRIPTOR);
                return true;
            } else if (i != TRANSACTION_destroy) {
                switch (i) {
                    case 2:
                        attachClient(parcel.readStrongBinder());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        boolean displayPowerMode = setDisplayPowerMode(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(displayPowerMode ? 1 : 0);
                        return true;
                    case 4:
                        Parcelable.Creator creator = MotionEvent.CREATOR;
                        injectMotionEvent((MotionEvent) _Parcel.a(parcel));
                        return true;
                    case 5:
                        boolean isTouchInjectionSupported = isTouchInjectionSupported();
                        parcel2.writeNoException();
                        parcel2.writeInt(isTouchInjectionSupported ? 1 : 0);
                        return true;
                    case 6:
                        injectKeyCode(parcel.readInt());
                        return true;
                    case 7:
                        int displayPowerModeStatus = displayPowerModeStatus();
                        parcel2.writeNoException();
                        parcel2.writeInt(displayPowerModeStatus);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                destroy();
                parcel2.writeNoException();
                return true;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class _Parcel {
        public static /* bridge */ /* synthetic */ Object a(Parcel parcel) {
            return readTypedObject(parcel, MotionEvent.CREATOR);
        }

        private static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }
    }

    void attachClient(IBinder iBinder);

    void destroy();

    int displayPowerModeStatus();

    void injectKeyCode(int i);

    void injectMotionEvent(MotionEvent motionEvent);

    boolean isTouchInjectionSupported();

    boolean setDisplayPowerMode(int i);
}
