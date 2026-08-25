package com.google.android.apps.auto.sdk;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.apps.auto.sdk.a;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
public final class b<T extends a> implements Parcelable.Creator<T> {
    private Class<T> a;

    public b(Class<T> cls) {
        this.a = cls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public T createFromParcel(Parcel parcel) {
        T t;
        try {
            t = this.a.newInstance();
        } catch (Exception e) {
            e = e;
            t = null;
        }
        try {
            t.b(parcel.readBundle(this.a.getClassLoader()));
            return t;
        } catch (Exception e2) {
            e = e2;
            String simpleName = this.a.getSimpleName();
            Log.e("CSL.AbstractBundleable", simpleName.length() != 0 ? "Failed to instantiate ".concat(simpleName) : new String("Failed to instantiate "), e);
            return t;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return (a[]) Array.newInstance((Class<?>) this.a, i);
    }
}
