package defpackage;

import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.car.app.navigation.model.Maneuver;
import androidx.versionedparcelable.ParcelImpl;
import moe.shizuku.api.BinderContainer;
/* renamed from: w7  reason: default package */
/* loaded from: classes.dex */
public final class w7 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    public /* synthetic */ w7(int i) {
        this.a = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0128  */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.lang.Object, al] */
    /* JADX WARN: Type inference failed for: r12v14, types: [android.view.View$BaseSavedState, zm, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v24, types: [android.view.View$BaseSavedState, zq, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v26, types: [android.support.v4.media.session.ParcelableVolumeInfo, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v31, types: [gy, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v33, types: [x20, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v4, types: [android.view.View$BaseSavedState, java.lang.Object, x4] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object, moe.shizuku.api.BinderContainer] */
    /* JADX WARN: Type inference failed for: r12v8, types: [eg, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.lang.Object, jg] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, ki] */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createFromParcel(android.os.Parcel r13) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w7.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new x7[i];
            case 1:
                return new r1[i];
            case 2:
                return new x4[i];
            case 3:
                return new f7[i];
            case 4:
                return new BinderContainer[i];
            case 5:
                return new id[i];
            case 6:
                return new eg[i];
            case 7:
                return new jg[i];
            case 8:
                return new ng[i];
            case 9:
                return new pj[i];
            case 10:
                return new al[i];
            case 11:
                return new kl[i];
            case 12:
                return new zm[i];
            case 13:
                return new MediaBrowserCompat$MediaItem[i];
            case 14:
                return new MediaDescriptionCompat[i];
            case Maneuver.TYPE_ON_RAMP_NORMAL_LEFT /* 15 */:
                return new MediaMetadataCompat[i];
            case 16:
                return new MediaSessionCompat$QueueItem[i];
            case 17:
                return new MediaSessionCompat$Token[i];
            case Maneuver.TYPE_ON_RAMP_SHARP_RIGHT /* 18 */:
                return new pq[i];
            case 19:
                return new zq[i];
            case Maneuver.TYPE_ON_RAMP_U_TURN_RIGHT /* 20 */:
                return new ParcelImpl[i];
            case Maneuver.TYPE_OFF_RAMP_SLIGHT_LEFT /* 21 */:
                return new ParcelableVolumeInfo[i];
            case Maneuver.TYPE_OFF_RAMP_SLIGHT_RIGHT /* 22 */:
                return new PlaybackStateCompat[i];
            case Maneuver.TYPE_OFF_RAMP_NORMAL_LEFT /* 23 */:
                return new zt[i];
            case Maneuver.TYPE_OFF_RAMP_NORMAL_RIGHT /* 24 */:
                return new hu[i];
            case Maneuver.TYPE_FORK_LEFT /* 25 */:
                return new RatingCompat[i];
            case Maneuver.TYPE_FORK_RIGHT /* 26 */:
                return new gy[i];
            case Maneuver.TYPE_MERGE_LEFT /* 27 */:
                return new u00[i];
            default:
                return new x20[i];
        }
    }
}
