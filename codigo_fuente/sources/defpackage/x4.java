package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* renamed from: x4  reason: default package */
/* loaded from: classes.dex */
public final class x4 extends View.BaseSavedState {
    public static final Parcelable.Creator<x4> CREATOR = new w7(2);
    public boolean a;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.a ? (byte) 1 : (byte) 0);
    }
}
