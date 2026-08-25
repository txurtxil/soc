package com.google.android.apps.auto.sdk;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public abstract class a implements Parcelable {
    public abstract void a(Bundle bundle);

    public abstract void b(Bundle bundle);

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public String toString() {
        Bundle bundle = new Bundle();
        a(bundle);
        return bundle.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        a(bundle);
        parcel.writeBundle(bundle);
    }
}
