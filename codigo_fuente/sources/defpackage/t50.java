package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: t50  reason: default package */
/* loaded from: classes.dex */
public final class t50 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    /* JADX WARN: Type inference failed for: r3v3, types: [y20, java.lang.Object] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean z;
        boolean z2;
        switch (this.a) {
            case 0:
                return new u50(parcel);
            default:
                ?? obj = new Object();
                obj.a = parcel.readInt();
                obj.b = parcel.readInt();
                int readInt = parcel.readInt();
                obj.c = readInt;
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    obj.d = iArr;
                    parcel.readIntArray(iArr);
                }
                int readInt2 = parcel.readInt();
                obj.e = readInt2;
                if (readInt2 > 0) {
                    int[] iArr2 = new int[readInt2];
                    obj.f = iArr2;
                    parcel.readIntArray(iArr2);
                }
                boolean z3 = false;
                if (parcel.readInt() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                obj.h = z;
                if (parcel.readInt() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj.i = z2;
                if (parcel.readInt() == 1) {
                    z3 = true;
                }
                obj.j = z3;
                obj.g = parcel.readArrayList(x20.class.getClassLoader());
                return obj;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new u50[i];
            default:
                return new y20[i];
        }
    }
}
