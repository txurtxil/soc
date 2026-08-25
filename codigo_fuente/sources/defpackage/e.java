package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: e  reason: default package */
/* loaded from: classes.dex */
public final class e implements Parcelable.ClassLoaderCreator {
    public final /* synthetic */ int a;

    public /* synthetic */ e(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.a) {
            case 0:
                if (parcel.readParcelable(classLoader) == null) {
                    return f.b;
                }
                c2.g("superState must be null");
                return null;
            case 1:
                return new vm(parcel, classLoader);
            case 2:
                return new uw(parcel, classLoader);
            case 3:
                return new n00(parcel, classLoader);
            default:
                return new b50(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new f[i];
            case 1:
                return new vm[i];
            case 2:
                return new uw[i];
            case 3:
                return new n00[i];
            default:
                return new b50[i];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                if (parcel.readParcelable(null) == null) {
                    return f.b;
                }
                c2.g("superState must be null");
                return null;
            case 1:
                return new vm(parcel, null);
            case 2:
                return new uw(parcel, null);
            case 3:
                return new n00(parcel, null);
            default:
                return new b50(parcel, null);
        }
    }
}
