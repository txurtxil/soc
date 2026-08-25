package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: r1  reason: default package */
/* loaded from: classes.dex */
public final class r1 implements Parcelable {
    public static final Parcelable.Creator<r1> CREATOR = new w7(1);
    public final int a;
    public final Intent b;

    public r1(Parcel parcel) {
        Intent intent;
        this.a = parcel.readInt();
        if (parcel.readInt() == 0) {
            intent = null;
        } else {
            intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }
        this.b = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ActivityResult{resultCode=");
        int i = this.a;
        if (i != -1) {
            if (i != 0) {
                str = String.valueOf(i);
            } else {
                str = "RESULT_CANCELED";
            }
        } else {
            str = "RESULT_OK";
        }
        sb.append(str);
        sb.append(", data=");
        sb.append(this.b);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2;
        parcel.writeInt(this.a);
        Intent intent = this.b;
        if (intent == null) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        parcel.writeInt(i2);
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }

    public r1(Intent intent, int i) {
        this.a = i;
        this.b = intent;
    }
}
