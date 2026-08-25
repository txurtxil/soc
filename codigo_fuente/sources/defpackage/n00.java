package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: n00  reason: default package */
/* loaded from: classes.dex */
public final class n00 extends f {
    public static final Parcelable.Creator<n00> CREATOR = new e(3);
    public boolean c;

    public n00(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = ((Boolean) parcel.readValue(null)).booleanValue();
    }

    public final String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.c + "}";
    }

    @Override // defpackage.f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Boolean.valueOf(this.c));
    }
}
