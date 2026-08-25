package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.app.RemoteActionCompat, java.lang.Object] */
    public static RemoteActionCompat read(w60 w60Var) {
        ?? obj = new Object();
        y60 y60Var = obj.a;
        boolean z = true;
        if (w60Var.e(1)) {
            y60Var = w60Var.h();
        }
        obj.a = (IconCompat) y60Var;
        CharSequence charSequence = obj.b;
        if (w60Var.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((x60) w60Var).e);
        }
        obj.b = charSequence;
        CharSequence charSequence2 = obj.c;
        if (w60Var.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((x60) w60Var).e);
        }
        obj.c = charSequence2;
        obj.d = (PendingIntent) w60Var.g(obj.d, 4);
        boolean z2 = obj.e;
        if (w60Var.e(5)) {
            if (((x60) w60Var).e.readInt() != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        obj.e = z2;
        boolean z3 = obj.f;
        if (!w60Var.e(6)) {
            z = z3;
        } else if (((x60) w60Var).e.readInt() == 0) {
            z = false;
        }
        obj.f = z;
        return obj;
    }

    public static void write(RemoteActionCompat remoteActionCompat, w60 w60Var) {
        w60Var.getClass();
        IconCompat iconCompat = remoteActionCompat.a;
        w60Var.i(1);
        w60Var.l(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        w60Var.i(2);
        Parcel parcel = ((x60) w60Var).e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.c;
        w60Var.i(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        w60Var.k(remoteActionCompat.d, 4);
        boolean z = remoteActionCompat.e;
        w60Var.i(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f;
        w60Var.i(6);
        parcel.writeInt(z2 ? 1 : 0);
    }
}
