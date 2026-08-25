package defpackage;

import android.content.ComponentName;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.HashSet;
/* renamed from: d20  reason: default package */
/* loaded from: classes.dex */
public final class d20 extends Binder implements IInterface {
    public static final Handler d = new Handler(Looper.getMainLooper());
    public final HashSet a;
    public final ComponentName b;
    public boolean c;

    public d20(y10 y10Var) {
        attachInterface(this, "moe.shizuku.server.IShizukuServiceConnection");
        this.a = new HashSet();
        this.c = false;
        this.b = y10Var.a;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        Handler handler = d;
        if (i != 1) {
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("moe.shizuku.server.IShizukuServiceConnection");
                return true;
            }
            parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
            if (!this.c) {
                this.c = true;
                handler.post(new m1(18, this));
                return true;
            }
        } else {
            parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
            IBinder readStrongBinder = parcel.readStrongBinder();
            handler.post(new y5(this, 8, readStrongBinder));
            try {
                readStrongBinder.linkToDeath(new yu(this, 1), 0);
            } catch (RemoteException unused) {
            }
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
