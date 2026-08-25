package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import java.util.Collections;
import java.util.HashSet;
/* renamed from: pq  reason: default package */
/* loaded from: classes.dex */
public final class pq extends zt {
    public static final Parcelable.Creator<pq> CREATOR = new w7(18);
    public HashSet a;

    public pq(Parcel parcel) {
        super(parcel);
        int readInt = parcel.readInt();
        this.a = new HashSet();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Collections.addAll(this.a, strArr);
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a.size());
        HashSet hashSet = this.a;
        parcel.writeStringArray((String[]) hashSet.toArray(new String[hashSet.size()]));
    }

    public pq() {
        super(AbsSavedState.EMPTY_STATE);
    }
}
