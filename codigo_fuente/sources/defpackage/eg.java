package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: eg  reason: default package */
/* loaded from: classes.dex */
public final class eg implements Parcelable {
    public static final Parcelable.Creator<eg> CREATOR = new w7(6);
    public String a;
    public int b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
    }
}
