package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: uw  reason: default package */
/* loaded from: classes.dex */
public final class uw extends f {
    public static final Parcelable.Creator<uw> CREATOR = new e(2);
    public Parcelable c;

    public uw(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readParcelable(classLoader == null ? lw.class.getClassLoader() : classLoader);
    }

    @Override // defpackage.f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.c, 0);
    }
}
