package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
/* renamed from: f7  reason: default package */
/* loaded from: classes.dex */
public final class f7 implements Parcelable {
    public static final Parcelable.Creator<f7> CREATOR = new w7(3);
    public final int[] a;
    public final ArrayList b;
    public final int[] c;
    public final int[] d;
    public final int e;
    public final String f;
    public final int g;
    public final int h;
    public final CharSequence i;
    public final int j;
    public final CharSequence k;
    public final ArrayList l;
    public final ArrayList m;
    public final boolean n;

    public f7(e7 e7Var) {
        String str;
        int size = e7Var.a.size();
        this.a = new int[size * 5];
        if (e7Var.g) {
            this.b = new ArrayList(size);
            this.c = new int[size];
            this.d = new int[size];
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                og ogVar = (og) e7Var.a.get(i2);
                int i3 = i + 1;
                this.a[i] = ogVar.a;
                ArrayList arrayList = this.b;
                vf vfVar = ogVar.b;
                if (vfVar != null) {
                    str = vfVar.e;
                } else {
                    str = null;
                }
                arrayList.add(str);
                int[] iArr = this.a;
                iArr[i3] = ogVar.c;
                iArr[i + 2] = ogVar.d;
                int i4 = i + 4;
                iArr[i + 3] = ogVar.e;
                i += 5;
                iArr[i4] = ogVar.f;
                this.c[i2] = ogVar.g.ordinal();
                this.d[i2] = ogVar.h.ordinal();
            }
            this.e = e7Var.f;
            this.f = e7Var.i;
            this.g = e7Var.s;
            this.h = e7Var.j;
            this.i = e7Var.k;
            this.j = e7Var.l;
            this.k = e7Var.m;
            this.l = e7Var.n;
            this.m = e7Var.o;
            this.n = e7Var.p;
            return;
        }
        c2.g("Not on back stack");
        throw null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }

    public f7(Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.i = (CharSequence) creator.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (CharSequence) creator.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }
}
