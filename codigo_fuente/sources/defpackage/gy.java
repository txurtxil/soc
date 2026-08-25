package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
/* renamed from: gy  reason: default package */
/* loaded from: classes.dex */
public class gy implements Parcelable {
    public static final Parcelable.Creator<gy> CREATOR = new w7(26);
    public li a;

    public final void b(int i, Bundle bundle) {
        li liVar = this.a;
        if (liVar != null) {
            try {
                liVar.f(i, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            try {
                if (this.a == null) {
                    this.a = new fy(this);
                }
                parcel.writeStrongBinder(this.a.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i, Bundle bundle) {
    }
}
