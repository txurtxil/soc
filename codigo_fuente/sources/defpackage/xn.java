package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
/* renamed from: xn  reason: default package */
/* loaded from: classes.dex */
public final class xn extends Binder implements hi {
    public final WeakReference a;

    public xn() {
        attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        this.a = new WeakReference(null);
    }

    @Override // defpackage.hi
    public final void c(PlaybackStateCompat playbackStateCompat) {
        if (this.a.get() == null) {
            return;
        }
        c2.l();
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        }
        if (i == 1598968902) {
            parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
            return true;
        }
        switch (i) {
            case 1:
                parcel.readString();
                Bundle bundle = (Bundle) gt.a(parcel, Bundle.CREATOR);
                if (this.a.get() != null) {
                    c2.l();
                    return false;
                }
                break;
            case 2:
                c2.a();
                return false;
            case 3:
                c((PlaybackStateCompat) gt.a(parcel, PlaybackStateCompat.CREATOR));
                return true;
            case 4:
                MediaMetadataCompat mediaMetadataCompat = (MediaMetadataCompat) gt.a(parcel, MediaMetadataCompat.CREATOR);
                c2.a();
                return false;
            case 5:
                parcel.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR);
                c2.a();
                return false;
            case 6:
                CharSequence charSequence = (CharSequence) gt.a(parcel, TextUtils.CHAR_SEQUENCE_CREATOR);
                c2.a();
                return false;
            case 7:
                Bundle bundle2 = (Bundle) gt.a(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case 8:
                ParcelableVolumeInfo parcelableVolumeInfo = (ParcelableVolumeInfo) gt.a(parcel, ParcelableVolumeInfo.CREATOR);
                c2.a();
                return false;
            case 9:
                parcel.readInt();
                if (this.a.get() != null) {
                    c2.l();
                    return false;
                }
                break;
            case 10:
                parcel.readInt();
                return true;
            case 11:
                parcel.readInt();
                if (this.a.get() != null) {
                    c2.l();
                    return false;
                }
                break;
            case 12:
                parcel.readInt();
                if (this.a.get() != null) {
                    c2.l();
                    return false;
                }
                break;
            case 13:
                if (this.a.get() != null) {
                    c2.l();
                    return false;
                }
                break;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
