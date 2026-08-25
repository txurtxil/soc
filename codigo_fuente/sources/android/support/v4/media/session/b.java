package android.support.v4.media.session;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.view.KeyEvent;
import androidx.car.app.navigation.model.Maneuver;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class b extends Binder implements ji {
    public static final /* synthetic */ int b = 0;
    public final AtomicReference a;

    public b(go goVar) {
        attachInterface(this, "android.support.v4.media.session.IMediaSession");
        this.a = new AtomicReference(goVar);
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [gi, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8, types: [gi, java.lang.Object] */
    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        long j;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
        }
        if (i == 1598968902) {
            parcel2.writeString("android.support.v4.media.session.IMediaSession");
            return true;
        }
        hi hiVar = null;
        PlaybackStateCompat playbackStateCompat = null;
        hi hiVar2 = null;
        int i3 = -1;
        switch (i) {
            case 1:
                parcel.readString();
                Bundle bundle = (Bundle) k60.c(parcel, Bundle.CREATOR);
                MediaSessionCompat$ResultReceiverWrapper mediaSessionCompat$ResultReceiverWrapper = (MediaSessionCompat$ResultReceiverWrapper) k60.c(parcel, MediaSessionCompat$ResultReceiverWrapper.CREATOR);
                c2.a();
                return false;
            case 2:
                KeyEvent keyEvent = (KeyEvent) k60.c(parcel, KeyEvent.CREATOR);
                c2.a();
                return false;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (queryLocalInterface != null && (queryLocalInterface instanceof hi)) {
                        hiVar = (hi) queryLocalInterface;
                    } else {
                        ?? obj = new Object();
                        obj.a = readStrongBinder;
                        hiVar = obj;
                    }
                }
                go goVar = (go) this.a.get();
                if (goVar != null) {
                    goVar.e.register(hiVar, new lo(Binder.getCallingPid(), Binder.getCallingUid(), "android.media.session.MediaController"));
                    synchronized (goVar.d) {
                    }
                }
                parcel2.writeNoException();
                return true;
            case 4:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (queryLocalInterface2 != null && (queryLocalInterface2 instanceof hi)) {
                        hiVar2 = (hi) queryLocalInterface2;
                    } else {
                        ?? obj2 = new Object();
                        obj2.a = readStrongBinder2;
                        hiVar2 = obj2;
                    }
                }
                go goVar2 = (go) this.a.get();
                if (goVar2 != null) {
                    goVar2.e.unregister(hiVar2);
                    Binder.getCallingPid();
                    Binder.getCallingUid();
                    synchronized (goVar2.d) {
                    }
                }
                parcel2.writeNoException();
                return true;
            case 5:
                c2.a();
                return false;
            case 6:
                c2.a();
                return false;
            case 7:
                c2.a();
                return false;
            case 8:
                c2.a();
                return false;
            case 9:
                c2.a();
                return false;
            case 10:
                c2.a();
                return false;
            case 11:
                parcel.readInt();
                parcel.readInt();
                parcel.readString();
                c2.a();
                return false;
            case 12:
                parcel.readInt();
                parcel.readInt();
                parcel.readString();
                c2.a();
                return false;
            case 13:
                c2.a();
                return false;
            case 14:
                parcel.readString();
                Bundle bundle2 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_ON_RAMP_NORMAL_LEFT /* 15 */:
                parcel.readString();
                Bundle bundle3 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case 16:
                Uri uri = (Uri) k60.c(parcel, Uri.CREATOR);
                Bundle bundle4 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case 17:
                parcel.readLong();
                c2.a();
                return false;
            case Maneuver.TYPE_ON_RAMP_SHARP_RIGHT /* 18 */:
                c2.a();
                return false;
            case 19:
                c2.a();
                return false;
            case Maneuver.TYPE_ON_RAMP_U_TURN_RIGHT /* 20 */:
                c2.a();
                return false;
            case Maneuver.TYPE_OFF_RAMP_SLIGHT_LEFT /* 21 */:
                c2.a();
                return false;
            case Maneuver.TYPE_OFF_RAMP_SLIGHT_RIGHT /* 22 */:
                c2.a();
                return false;
            case Maneuver.TYPE_OFF_RAMP_NORMAL_LEFT /* 23 */:
                c2.a();
                return false;
            case Maneuver.TYPE_OFF_RAMP_NORMAL_RIGHT /* 24 */:
                parcel.readLong();
                c2.a();
                return false;
            case Maneuver.TYPE_FORK_LEFT /* 25 */:
                RatingCompat ratingCompat = (RatingCompat) k60.c(parcel, RatingCompat.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_FORK_RIGHT /* 26 */:
                parcel.readString();
                Bundle bundle5 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_MERGE_LEFT /* 27 */:
                c2.a();
                return false;
            case Maneuver.TYPE_MERGE_RIGHT /* 28 */:
                go goVar3 = (go) this.a.get();
                if (goVar3 != null) {
                    playbackStateCompat = goVar3.f;
                    MediaMetadataCompat mediaMetadataCompat = goVar3.h;
                    if (playbackStateCompat != null) {
                        float f = playbackStateCompat.d;
                        long j2 = playbackStateCompat.h;
                        int i4 = playbackStateCompat.a;
                        long j3 = playbackStateCompat.b;
                        long j4 = -1;
                        if (j3 != -1 && ((i4 == 3 || i4 == 4 || i4 == 5) && j2 > 0)) {
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            long j5 = (f * ((float) (elapsedRealtime - j2))) + j3;
                            if (mediaMetadataCompat != null) {
                                Bundle bundle6 = mediaMetadataCompat.a;
                                if (bundle6.containsKey("android.media.metadata.DURATION")) {
                                    j4 = bundle6.getLong("android.media.metadata.DURATION", 0L);
                                }
                            }
                            if (j4 >= 0 && j5 > j4) {
                                j = j4;
                            } else if (j5 < 0) {
                                j = 0;
                            } else {
                                j = j5;
                            }
                            ArrayList arrayList = new ArrayList();
                            long j6 = playbackStateCompat.c;
                            long j7 = playbackStateCompat.e;
                            int i5 = playbackStateCompat.f;
                            CharSequence charSequence = playbackStateCompat.g;
                            ArrayList arrayList2 = playbackStateCompat.i;
                            if (arrayList2 != null) {
                                arrayList.addAll(arrayList2);
                            }
                            playbackStateCompat = new PlaybackStateCompat(playbackStateCompat.a, j, j6, playbackStateCompat.d, j7, i5, charSequence, elapsedRealtime, arrayList, playbackStateCompat.j, playbackStateCompat.k);
                        }
                    }
                }
                parcel2.writeNoException();
                if (playbackStateCompat != null) {
                    parcel2.writeInt(1);
                    playbackStateCompat.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case Maneuver.TYPE_MERGE_SIDE_UNSPECIFIED /* 29 */:
                parcel2.writeNoException();
                parcel2.writeInt(-1);
                return true;
            case 30:
                c2.a();
                return false;
            case 31:
                c2.a();
                return false;
            case 32:
                go goVar4 = (go) this.a.get();
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case Maneuver.TYPE_ROUNDABOUT_ENTER_AND_EXIT_CW_WITH_ANGLE /* 33 */:
                c2.a();
                return false;
            case Maneuver.TYPE_ROUNDABOUT_ENTER_AND_EXIT_CCW /* 34 */:
                parcel.readString();
                Bundle bundle7 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_ROUNDABOUT_ENTER_AND_EXIT_CCW_WITH_ANGLE /* 35 */:
                parcel.readString();
                Bundle bundle8 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_STRAIGHT /* 36 */:
                Uri uri2 = (Uri) k60.c(parcel, Uri.CREATOR);
                Bundle bundle9 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_FERRY_BOAT /* 37 */:
                if (((go) this.a.get()) != null) {
                    i3 = 0;
                }
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case Maneuver.TYPE_FERRY_TRAIN /* 38 */:
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case Maneuver.TYPE_DESTINATION /* 39 */:
                parcel.readInt();
                c2.a();
                return false;
            case Maneuver.TYPE_DESTINATION_STRAIGHT /* 40 */:
                parcel.readInt();
                parcel2.writeNoException();
                return true;
            case Maneuver.TYPE_DESTINATION_LEFT /* 41 */:
                MediaDescriptionCompat mediaDescriptionCompat = (MediaDescriptionCompat) k60.c(parcel, MediaDescriptionCompat.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_DESTINATION_RIGHT /* 42 */:
                MediaDescriptionCompat mediaDescriptionCompat2 = (MediaDescriptionCompat) k60.c(parcel, MediaDescriptionCompat.CREATOR);
                parcel.readInt();
                c2.a();
                return false;
            case Maneuver.TYPE_ROUNDABOUT_ENTER_CW /* 43 */:
                MediaDescriptionCompat mediaDescriptionCompat3 = (MediaDescriptionCompat) k60.c(parcel, MediaDescriptionCompat.CREATOR);
                c2.a();
                return false;
            case Maneuver.TYPE_ROUNDABOUT_EXIT_CW /* 44 */:
                parcel.readInt();
                c2.a();
                return false;
            case Maneuver.TYPE_ROUNDABOUT_ENTER_CCW /* 45 */:
                go goVar5 = (go) this.a.get();
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case Maneuver.TYPE_ROUNDABOUT_EXIT_CCW /* 46 */:
                parcel.readInt();
                c2.a();
                return false;
            case Maneuver.TYPE_FERRY_BOAT_LEFT /* 47 */:
                if (((go) this.a.get()) != null) {
                    i3 = 0;
                }
                parcel2.writeNoException();
                parcel2.writeInt(i3);
                return true;
            case 48:
                parcel.readInt();
                c2.a();
                return false;
            case Maneuver.TYPE_FERRY_TRAIN_LEFT /* 49 */:
                parcel.readFloat();
                c2.a();
                return false;
            case Maneuver.TYPE_FERRY_TRAIN_RIGHT /* 50 */:
                ((go) this.a.get()).getClass();
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case 51:
                RatingCompat ratingCompat2 = (RatingCompat) k60.c(parcel, RatingCompat.CREATOR);
                Bundle bundle10 = (Bundle) k60.c(parcel, Bundle.CREATOR);
                c2.a();
                return false;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
