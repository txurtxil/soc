package com.google.android.apps.auto.sdk.ui;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.auto.sdk.ui.FloatingActionButton;
/* loaded from: classes.dex */
final class d implements Parcelable.Creator<FloatingActionButton.a> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FloatingActionButton.a createFromParcel(Parcel parcel) {
        return new FloatingActionButton.a(parcel, (byte) 0);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FloatingActionButton.a[] newArray(int i) {
        return new FloatingActionButton.a[i];
    }
}
