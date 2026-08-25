package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
/* renamed from: u50  reason: default package */
/* loaded from: classes.dex */
public final class u50 extends zt {
    public static final Parcelable.Creator<u50> CREATOR = new t50(0);
    public boolean a;

    public u50(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt() == 1;
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a ? 1 : 0);
    }

    public u50() {
        super(AbsSavedState.EMPTY_STATE);
    }
}
