package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* renamed from: zq  reason: default package */
/* loaded from: classes.dex */
public final class zq extends View.BaseSavedState {
    public static final Parcelable.Creator<zq> CREATOR = new w7(19);
    public int a;

    public final String toString() {
        return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.a + "}";
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
    }
}
