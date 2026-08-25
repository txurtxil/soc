package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
/* renamed from: id  reason: default package */
/* loaded from: classes.dex */
public final class id extends zt {
    public static final Parcelable.Creator<id> CREATOR = new w7(5);
    public String a;

    public id(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a);
    }

    public id() {
        super(AbsSavedState.EMPTY_STATE);
    }
}
