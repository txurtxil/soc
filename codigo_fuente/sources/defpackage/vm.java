package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: vm  reason: default package */
/* loaded from: classes.dex */
public final class vm extends f {
    public static final Parcelable.Creator<vm> CREATOR = new e(1);
    public boolean c;

    public vm(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            vm.class.getClassLoader();
        }
        this.c = parcel.readInt() == 1;
    }

    @Override // defpackage.f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
