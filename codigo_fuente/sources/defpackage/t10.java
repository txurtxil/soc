package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import idv.lzn.screenonauto.privileged.ShizukuBackend;
import java.util.ArrayList;
/* renamed from: t10  reason: default package */
/* loaded from: classes.dex */
public final class t10 extends Binder implements IInterface {
    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        int i3 = -1;
        int i4 = 0;
        Bundle bundle = null;
        if (i != 2) {
            if (i != 3) {
                if (i != 10001) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString("moe.shizuku.server.IShizukuApplication");
                    return true;
                }
                parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
                parcel.readInt();
                parcel.readInt();
                parcel.readString();
                parcel.readInt();
                parcel2.writeNoException();
                return true;
            }
            parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
            int readInt = parcel.readInt();
            if (parcel.readInt() != 0) {
                bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
            }
            if (bundle.getBoolean("shizuku:request-permission-reply-allowed", false)) {
                i3 = 0;
            }
            synchronized (z10.h) {
                try {
                    ArrayList arrayList = z10.j;
                    int size = arrayList.size();
                    while (i4 < size) {
                        Object obj = arrayList.get(i4);
                        i4++;
                        u10 u10Var = (u10) obj;
                        u10Var.getClass();
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            ((c20) ((x10) u10Var.a)).getClass();
                            ShizukuBackend.a(readInt, i3);
                        } else {
                            z10.k.post(new cq(u10Var, readInt, i3, 3));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
        if (parcel.readInt() != 0) {
            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
        }
        bundle.getInt("shizuku:attach-reply-uid", -1);
        IBinder iBinder = z10.a;
        bundle.getInt("shizuku:attach-reply-version", -1);
        IBinder iBinder2 = z10.a;
        bundle.getInt("shizuku:attach-reply-patch-version", -1);
        IBinder iBinder3 = z10.a;
        bundle.getString("shizuku:attach-reply-secontext");
        z10.c = bundle.getBoolean("shizuku:attach-reply-permission-granted", false);
        bundle.getBoolean("shizuku:attach-reply-should-show-request-permission-rationale", false);
        z10.f();
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
