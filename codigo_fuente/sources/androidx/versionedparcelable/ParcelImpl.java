package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new w7(20);
    public final y60 a;

    public ParcelImpl(Parcel parcel) {
        this.a = new x60(parcel).h();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        new x60(parcel).l(this.a);
    }

    public ParcelImpl(y60 y60Var) {
        this.a = y60Var;
    }
}
