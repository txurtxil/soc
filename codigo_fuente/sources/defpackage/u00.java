package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
/* renamed from: u00  reason: default package */
/* loaded from: classes.dex */
public final class u00 extends zt {
    public static final Parcelable.Creator<u00> CREATOR = new w7(27);
    public int a;
    public int b;
    public int c;

    public u00(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
    }

    public u00() {
        super(AbsSavedState.EMPTY_STATE);
    }
}
