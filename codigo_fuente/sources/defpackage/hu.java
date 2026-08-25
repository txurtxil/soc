package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
/* renamed from: hu  reason: default package */
/* loaded from: classes.dex */
public final class hu extends zt {
    public static final Parcelable.Creator<hu> CREATOR = new w7(24);
    public final int a;

    public hu(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
    }

    public hu(int i) {
        super(AbsSavedState.EMPTY_STATE);
        this.a = i;
    }
}
