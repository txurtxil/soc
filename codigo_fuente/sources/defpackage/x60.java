package defpackage;

import android.os.Parcel;
import android.util.SparseIntArray;
/* renamed from: x60  reason: default package */
/* loaded from: classes.dex */
public final class x60 extends w60 {
    public final SparseIntArray d;
    public final Parcel e;
    public final int f;
    public final int g;
    public final String h;
    public int i;
    public int j;
    public int k;

    /* JADX WARN: Type inference failed for: r5v0, types: [u6, j20] */
    /* JADX WARN: Type inference failed for: r6v0, types: [u6, j20] */
    /* JADX WARN: Type inference failed for: r7v0, types: [u6, j20] */
    public x60(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new j20(), new j20(), new j20());
    }

    @Override // defpackage.w60
    public final x60 a() {
        Parcel parcel = this.e;
        int dataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f) {
            i = this.g;
        }
        return new x60(parcel, dataPosition, i, this.h + "  ", this.a, this.b, this.c);
    }

    @Override // defpackage.w60
    public final boolean e(int i) {
        while (true) {
            int i2 = this.j;
            int i3 = this.k;
            if (i2 < this.g) {
                if (i3 != i) {
                    if (String.valueOf(i3).compareTo(String.valueOf(i)) <= 0) {
                        int i4 = this.j;
                        Parcel parcel = this.e;
                        parcel.setDataPosition(i4);
                        int readInt = parcel.readInt();
                        this.k = parcel.readInt();
                        this.j += readInt;
                    } else {
                        return false;
                    }
                } else {
                    return true;
                }
            } else if (i3 == i) {
                return true;
            } else {
                return false;
            }
        }
    }

    @Override // defpackage.w60
    public final void i(int i) {
        int i2 = this.i;
        SparseIntArray sparseIntArray = this.d;
        Parcel parcel = this.e;
        if (i2 >= 0) {
            int i3 = sparseIntArray.get(i2);
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i3);
            parcel.writeInt(dataPosition - i3);
            parcel.setDataPosition(dataPosition);
        }
        this.i = i;
        sparseIntArray.put(i, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i);
    }

    public x60(Parcel parcel, int i, int i2, String str, u6 u6Var, u6 u6Var2, u6 u6Var3) {
        super(u6Var, u6Var2, u6Var3);
        this.d = new SparseIntArray();
        this.i = -1;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }
}
