package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.Log;
import java.util.ArrayDeque;
/* renamed from: x7  reason: default package */
/* loaded from: classes.dex */
public final class x7 implements Parcelable {
    public static final Parcelable.Creator<x7> CREATOR = new w7(0);
    public final Bundle a;

    public x7(Object obj) {
        ArrayMap arrayMap = c8.a;
        String i = c8.i(obj.getClass());
        if (Log.isLoggable("CarApp.Bun", 3)) {
            Log.d("CarApp.Bun", "Bundling ".concat(i));
        }
        this.a = c8.p(obj, i, new a8(null, "", new ArrayDeque()));
    }

    public final Object a() {
        ArrayMap arrayMap = c8.a;
        boolean isLoggable = Log.isLoggable("CarApp.Bun", 3);
        Bundle bundle = this.a;
        if (isLoggable) {
            String str = (String) c8.b.get(Integer.valueOf(bundle.getInt("tag_class_type")));
            if (str == null) {
                str = "unknown";
            }
            Log.d("CarApp.Bun", "Unbundling ".concat(str));
        }
        return c8.f(bundle, new a8(null, "", new ArrayDeque()));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.a);
    }

    public x7(Bundle bundle) {
        this.a = bundle;
    }
}
