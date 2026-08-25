package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: f  reason: default package */
/* loaded from: classes.dex */
public abstract class f implements Parcelable {
    public final Parcelable a;
    public static final d b = new f();
    public static final Parcelable.Creator<f> CREATOR = new e(0);

    public f(Parcelable parcelable) {
        if (parcelable != null) {
            this.a = parcelable == b ? null : parcelable;
        } else {
            c2.n("superState must not be null");
            throw null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
    }

    public f() {
        this.a = null;
    }

    public f(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.a = readParcelable == null ? b : readParcelable;
    }
}
