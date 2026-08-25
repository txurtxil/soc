package defpackage;

import android.content.Intent;
import android.media.Rating;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.ParcelImpl;
/* renamed from: eo  reason: default package */
/* loaded from: classes.dex */
public final class eo extends MediaSession.Callback {
    public final /* synthetic */ fo a;

    public eo(fo foVar) {
        this.a = foVar;
    }

    public static void b(go goVar) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        MediaSession mediaSession = goVar.a;
        String str = null;
        try {
            str = (String) mediaSession.getClass().getMethod("getCallingPackage", null).invoke(mediaSession, null);
        } catch (Exception e) {
            Log.e("MediaSessionCompat", "Cannot execute MediaSession.getCallingPackage()", e);
        }
        if (TextUtils.isEmpty(str)) {
            str = "android.media.session.MediaController";
        }
        goVar.d(new lo(-1, -1, str));
    }

    public final go a() {
        go goVar;
        fo foVar;
        synchronized (this.a.a) {
            goVar = (go) this.a.d.get();
        }
        if (goVar != null) {
            fo foVar2 = this.a;
            synchronized (goVar.d) {
                foVar = goVar.i;
            }
            if (foVar2 == foVar) {
                return goVar;
            }
            return null;
        }
        return null;
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        int i;
        IBinder asBinder;
        y60 y60Var;
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        try {
            if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                Bundle bundle2 = new Bundle();
                MediaSessionCompat$Token mediaSessionCompat$Token = a.c;
                ji a2 = mediaSessionCompat$Token.a();
                if (a2 == null) {
                    asBinder = null;
                } else {
                    asBinder = a2.asBinder();
                }
                v7.b(bundle2, "android.support.v4.media.session.EXTRA_BINDER", asBinder);
                synchronized (mediaSessionCompat$Token.a) {
                    y60Var = mediaSessionCompat$Token.d;
                }
                if (y60Var != null) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putParcelable("a", new ParcelImpl(y60Var));
                    bundle2.putParcelable("android.support.v4.media.session.SESSION_TOKEN2", bundle3);
                }
                resultReceiver.send(0, bundle2);
            } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                MediaDescriptionCompat mediaDescriptionCompat = (MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION");
            } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                MediaDescriptionCompat mediaDescriptionCompat2 = (MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION");
                bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX");
            } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                MediaDescriptionCompat mediaDescriptionCompat3 = (MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION");
            } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT") && a.g != null && (i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1)) >= 0 && i < a.g.size()) {
                MediaSessionCompat$QueueItem mediaSessionCompat$QueueItem = (MediaSessionCompat$QueueItem) a.g.get(i);
            }
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
        }
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onCustomAction(String str, Bundle bundle) {
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        try {
            if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                Uri uri = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                ko.r(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
            } else if (!str.equals("android.support.v4.media.session.action.PREPARE")) {
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                    bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                    ko.r(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                    bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                    ko.r(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                    Uri uri2 = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                    ko.r(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                    bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED");
                } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                    bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE");
                } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                    bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE");
                } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                    RatingCompat ratingCompat = (RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING");
                    ko.r(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                    bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f);
                }
            }
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
        }
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onFastForward() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.b();
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        go a = a();
        if (a != null) {
            b(a);
            boolean c = this.a.c(intent);
            a.d(null);
            if (!c && !super.onMediaButtonEvent(intent)) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPause() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.d();
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlay() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.e();
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromMediaId(String str, Bundle bundle) {
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromSearch(String str, Bundle bundle) {
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPlayFromUri(Uri uri, Bundle bundle) {
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepare() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromMediaId(String str, Bundle bundle) {
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromSearch(String str, Bundle bundle) {
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onPrepareFromUri(Uri uri, Bundle bundle) {
        go a = a();
        if (a == null) {
            return;
        }
        ko.r(bundle);
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onRewind() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.f();
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSeekTo(long j) {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSetPlaybackSpeed(float f) {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSetRating(Rating rating) {
        RatingCompat ratingCompat;
        float f;
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        if (rating != null) {
            int b = yv.b(rating);
            if (yv.e(rating)) {
                float f2 = 1.0f;
                switch (b) {
                    case 1:
                        if (!yv.d(rating)) {
                            f2 = 0.0f;
                        }
                        ratingCompat = new RatingCompat(1, f2);
                        ratingCompat.getClass();
                        break;
                    case 2:
                        if (!yv.f(rating)) {
                            f2 = 0.0f;
                        }
                        ratingCompat = new RatingCompat(2, f2);
                        ratingCompat.getClass();
                        break;
                    case 3:
                    case 4:
                    case 5:
                        float c = yv.c(rating);
                        if (b != 3) {
                            if (b != 4) {
                                if (b != 5) {
                                    Log.e("Rating", "Invalid rating style (" + b + ") for a star rating");
                                    ratingCompat = null;
                                    ratingCompat.getClass();
                                    break;
                                } else {
                                    f = 5.0f;
                                }
                            } else {
                                f = 4.0f;
                            }
                        } else {
                            f = 3.0f;
                        }
                        if (c >= 0.0f && c <= f) {
                            ratingCompat = new RatingCompat(b, c);
                            ratingCompat.getClass();
                        } else {
                            Log.e("Rating", "Trying to set out of range star-based rating");
                            ratingCompat = null;
                            ratingCompat.getClass();
                        }
                        break;
                    case 6:
                        float a2 = yv.a(rating);
                        if (a2 >= 0.0f && a2 <= 100.0f) {
                            ratingCompat = new RatingCompat(6, a2);
                            ratingCompat.getClass();
                        } else {
                            Log.e("Rating", "Invalid percentage-based rating value");
                            ratingCompat = null;
                            ratingCompat.getClass();
                            break;
                        }
                        break;
                }
            } else {
                switch (b) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        ratingCompat = new RatingCompat(b, -1.0f);
                        break;
                    default:
                        ratingCompat = null;
                        break;
                }
                ratingCompat.getClass();
            }
        }
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToNext() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.g();
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToPrevious() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.h();
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onSkipToQueueItem(long j) {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.i(j);
        a.d(null);
    }

    @Override // android.media.session.MediaSession.Callback
    public final void onStop() {
        go a = a();
        if (a == null) {
            return;
        }
        b(a);
        this.a.j();
        a.d(null);
    }
}
