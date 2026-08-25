package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: b50  reason: default package */
/* loaded from: classes.dex */
public final class b50 extends f {
    public static final Parcelable.Creator<b50> CREATOR = new e(4);
    public int c;
    public boolean d;

    public b50(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        boolean z;
        this.c = parcel.readInt();
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
    }

    @Override // defpackage.f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d ? 1 : 0);
    }
}
