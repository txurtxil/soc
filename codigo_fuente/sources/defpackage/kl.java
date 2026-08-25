package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
/* renamed from: kl  reason: default package */
/* loaded from: classes.dex */
public final class kl extends zt {
    public static final Parcelable.Creator<kl> CREATOR = new w7(11);
    public String a;

    public kl(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a);
    }

    public kl() {
        super(AbsSavedState.EMPTY_STATE);
    }
}
