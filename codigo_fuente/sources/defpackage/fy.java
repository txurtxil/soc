package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: fy  reason: default package */
/* loaded from: classes.dex */
public final class fy extends Binder implements li {
    public static final /* synthetic */ int b = 0;
    public final /* synthetic */ gy a;

    public fy(gy gyVar) {
        this.a = gyVar;
        attachInterface(this, li.p);
    }

    @Override // defpackage.li
    public final void f(int i, Bundle bundle) {
        this.a.a(i, bundle);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        Object obj;
        String str = li.p;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i != 1598968902) {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            int readInt = parcel.readInt();
            Parcelable.Creator creator = Bundle.CREATOR;
            if (parcel.readInt() != 0) {
                obj = creator.createFromParcel(parcel);
            } else {
                obj = null;
            }
            f(readInt, (Bundle) obj);
            return true;
        }
        parcel2.writeString(str);
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
