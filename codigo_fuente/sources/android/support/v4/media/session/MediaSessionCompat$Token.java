package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class MediaSessionCompat$Token implements Parcelable {
    public static final Parcelable.Creator<MediaSessionCompat$Token> CREATOR = new w7(17);
    public final Object b;
    public ji c;
    public final Object a = new Object();
    public y60 d = null;

    public MediaSessionCompat$Token(Parcelable parcelable, b bVar) {
        this.b = parcelable;
        this.c = bVar;
    }

    public final ji a() {
        ji jiVar;
        synchronized (this.a) {
            jiVar = this.c;
        }
        return jiVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionCompat$Token)) {
            return false;
        }
        Object obj2 = ((MediaSessionCompat$Token) obj).b;
        Object obj3 = this.b;
        if (obj3 == null) {
            if (obj2 == null) {
                return true;
            }
            return false;
        } else if (obj2 == null) {
            return false;
        } else {
            return obj3.equals(obj2);
        }
    }

    public final int hashCode() {
        Object obj = this.b;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable((Parcelable) this.b, i);
    }
}
