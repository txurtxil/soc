package idv.lzn.screenonauto;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import idv.lzn.screenonauto.MirrorMediaService;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class MirrorMediaService extends vn {
    public static MirrorMediaService q;
    public ko h;
    public MediaController i;
    public final Handler j = new Handler(Looper.getMainLooper());
    public final gq k = new gq(this, 0);
    public final LinkedHashMap l = new LinkedHashMap();
    public final LinkedHashMap m = new LinkedHashMap();
    public final gq n = new gq(this, 1);
    public final fq o = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: fq
        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public final void onActiveSessionsChanged(List list) {
            MirrorMediaService mirrorMediaService = MirrorMediaService.q;
            if (list == null) {
                list = je.a;
            }
            MirrorMediaService.this.l(list);
        }
    };

    public static final void e(MirrorMediaService mirrorMediaService, int i) {
        MediaController.TransportControls transportControls;
        MediaController mediaController = mirrorMediaService.i;
        if (mediaController != null) {
            transportControls = mediaController.getTransportControls();
        } else {
            transportControls = null;
        }
        if (transportControls != null) {
            if (i != 126) {
                if (i != 127) {
                    switch (i) {
                        case 86:
                            transportControls.stop();
                            return;
                        case 87:
                            transportControls.skipToNext();
                            return;
                        case 88:
                            transportControls.skipToPrevious();
                            return;
                        case 89:
                            transportControls.rewind();
                            return;
                        case 90:
                            transportControls.fastForward();
                            return;
                        default:
                            return;
                    }
                }
                transportControls.pause();
                return;
            }
            transportControls.play();
            return;
        }
        Object systemService = mirrorMediaService.getSystemService("audio");
        systemService.getClass();
        AudioManager audioManager = (AudioManager) systemService;
        ko koVar = mirrorMediaService.h;
        if (koVar != null) {
            koVar.J(false);
            audioManager.dispatchMediaKeyEvent(new KeyEvent(0, i));
            audioManager.dispatchMediaKeyEvent(new KeyEvent(1, i));
            ko koVar2 = mirrorMediaService.h;
            if (koVar2 != null) {
                koVar2.J(true);
                return;
            } else {
                qj.v("mediaSession");
                throw null;
            }
        }
        qj.v("mediaSession");
        throw null;
    }

    public static final void f(MirrorMediaService mirrorMediaService) {
        Object systemService = mirrorMediaService.getSystemService("media_session");
        systemService.getClass();
        try {
            List<MediaController> activeSessions = ((MediaSessionManager) systemService).getActiveSessions(new ComponentName(mirrorMediaService, MirrorNotificationListenerService.class));
            activeSessions.getClass();
            mirrorMediaService.l(activeSessions);
        } catch (SecurityException unused) {
        }
    }

    public static MediaMetadataCompat g(MediaMetadata mediaMetadata) {
        jn jnVar = new jn();
        String string = mediaMetadata.getString("android.media.metadata.TITLE");
        if (string != null) {
            jnVar.b("android.media.metadata.TITLE", string);
        }
        String string2 = mediaMetadata.getString("android.media.metadata.ARTIST");
        if (string2 != null) {
            jnVar.b("android.media.metadata.ARTIST", string2);
        }
        String string3 = mediaMetadata.getString("android.media.metadata.ALBUM");
        if (string3 != null) {
            jnVar.b("android.media.metadata.ALBUM", string3);
        }
        long j = mediaMetadata.getLong("android.media.metadata.DURATION");
        u6 u6Var = MediaMetadataCompat.c;
        if (u6Var.containsKey("android.media.metadata.DURATION") && ((Integer) u6Var.getOrDefault("android.media.metadata.DURATION", null)).intValue() != 0) {
            c2.n("The android.media.metadata.DURATION key cannot be used to put a long");
            return null;
        }
        Bundle bundle = jnVar.a;
        bundle.putLong("android.media.metadata.DURATION", j);
        Bitmap bitmap = mediaMetadata.getBitmap("android.media.metadata.ART");
        if (bitmap == null && (bitmap = mediaMetadata.getBitmap("android.media.metadata.DISPLAY_ICON")) == null) {
            bitmap = mediaMetadata.getBitmap("android.media.metadata.ALBUM_ART");
        }
        if (bitmap != null) {
            Bitmap j2 = j(bitmap);
            jnVar.a("android.media.metadata.ART", j2);
            jnVar.a("android.media.metadata.ALBUM_ART", j2);
        }
        String string4 = mediaMetadata.getString("android.media.metadata.ART_URI");
        if (string4 != null) {
            jnVar.b("android.media.metadata.ART_URI", string4);
        }
        String string5 = mediaMetadata.getString("android.media.metadata.ALBUM_ART_URI");
        if (string5 != null) {
            jnVar.b("android.media.metadata.ALBUM_ART_URI", string5);
        }
        return new MediaMetadataCompat(bundle);
    }

    public static PlaybackStateCompat h(PlaybackState playbackState) {
        Integer num;
        int i;
        long j;
        float f;
        if (playbackState != null) {
            num = Integer.valueOf(playbackState.getState());
        } else {
            num = null;
        }
        if (num != null && num.intValue() != 0 && num.intValue() != 1) {
            i = playbackState.getState();
        } else {
            i = 2;
        }
        int i2 = i;
        ArrayList arrayList = new ArrayList();
        if (playbackState != null) {
            j = playbackState.getPosition();
        } else {
            j = 0;
        }
        long j2 = j;
        if (playbackState != null) {
            f = playbackState.getPlaybackSpeed();
        } else {
            f = 1.0f;
        }
        return new PlaybackStateCompat(i2, j2, 0L, f, 4150L, 0, null, SystemClock.elapsedRealtime(), arrayList, -1L, null);
    }

    public static ArrayList i(List list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(x9.z(list));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaSession.QueueItem queueItem = (MediaSession.QueueItem) it.next();
                arrayList.add(new MediaSessionCompat$QueueItem(new MediaDescriptionCompat(String.valueOf(queueItem.getQueueId()), queueItem.getDescription().getTitle(), queueItem.getDescription().getSubtitle(), null, null, queueItem.getDescription().getIconUri(), null, null), queueItem.getQueueId()));
            }
            return arrayList;
        }
        return null;
    }

    public static Bitmap j(Bitmap bitmap) {
        float min = Math.min(512.0f / bitmap.getWidth(), 512.0f / bitmap.getHeight());
        if (min >= 1.0f) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), true);
        createScaledBitmap.getClass();
        return createScaledBitmap;
    }

    @Override // defpackage.vn
    public final void c(String str, qn qnVar) {
        MediaMetadata mediaMetadata;
        str.getClass();
        MediaController mediaController = this.i;
        Bitmap bitmap = null;
        if (mediaController != null) {
            mediaMetadata = mediaController.getMetadata();
        } else {
            mediaMetadata = null;
        }
        if (mediaMetadata == null) {
            qnVar.b(je.a);
            return;
        }
        Bitmap bitmap2 = mediaMetadata.getBitmap("android.media.metadata.ART");
        if (bitmap2 == null && (bitmap2 = mediaMetadata.getBitmap("android.media.metadata.DISPLAY_ICON")) == null) {
            bitmap2 = mediaMetadata.getBitmap("android.media.metadata.ALBUM_ART");
        }
        String string = mediaMetadata.getString("android.media.metadata.TITLE");
        String string2 = mediaMetadata.getString("android.media.metadata.ARTIST");
        if (bitmap2 != null) {
            bitmap = j(bitmap2);
        }
        qnVar.b(qj.o(new MediaBrowserCompat$MediaItem(new MediaDescriptionCompat("now_playing", string, string2, null, bitmap, null, null, null))));
    }

    public final void k() {
        fq fqVar = this.o;
        Object systemService = getSystemService("media_session");
        systemService.getClass();
        MediaSessionManager mediaSessionManager = (MediaSessionManager) systemService;
        ComponentName componentName = new ComponentName(this, MirrorNotificationListenerService.class);
        try {
            mediaSessionManager.removeOnActiveSessionsChangedListener(fqVar);
            mediaSessionManager.addOnActiveSessionsChangedListener(fqVar, componentName, this.j);
            List<MediaController> activeSessions = mediaSessionManager.getActiveSessions(componentName);
            activeSessions.getClass();
            l(activeSessions);
        } catch (SecurityException unused) {
        }
    }

    public final void l(List list) {
        int i;
        PlaybackState playbackState;
        Set set;
        gq gqVar;
        Handler handler;
        MediaSession.Token token;
        Object obj;
        Object obj2;
        MediaSession.Token token2;
        MediaSession.Token token3;
        MediaMetadataCompat mediaMetadataCompat;
        List<MediaSession.QueueItem> list2;
        CharSequence charSequence;
        MediaMetadata metadata;
        PlaybackState playbackState2;
        int i2;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            i = 0;
            r2 = false;
            boolean z = false;
            boolean z2 = true;
            playbackState = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            MediaController mediaController = (MediaController) next;
            if (!qj.c(mediaController.getPackageName(), getPackageName())) {
                String packageName = mediaController.getPackageName();
                packageName.getClass();
                LinkedHashMap linkedHashMap = this.m;
                Object obj3 = linkedHashMap.get(packageName);
                Boolean bool = obj3;
                if (obj3 == null) {
                    try {
                        ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(packageName, 128);
                        applicationInfo.getClass();
                        Bundle bundle = applicationInfo.metaData;
                        if (bundle != null) {
                            i2 = bundle.getInt("com.google.android.gms.car.application");
                        } else {
                            i2 = 0;
                        }
                        if (i2 != 0) {
                            Resources resourcesForApplication = getPackageManager().getResourcesForApplication(packageName);
                            resourcesForApplication.getClass();
                            XmlResourceParser xml = resourcesForApplication.getXml(i2);
                            xml.getClass();
                            while (true) {
                                if (xml.next() != 1) {
                                    if (xml.getEventType() == 2 && qj.c(xml.getName(), "uses") && qj.c(xml.getAttributeValue(null, "name"), "media")) {
                                        break;
                                    }
                                } else {
                                    z2 = false;
                                    break;
                                }
                            }
                            xml.close();
                            z = z2;
                        }
                    } catch (Exception unused) {
                    }
                    Boolean valueOf = Boolean.valueOf(z);
                    linkedHashMap.put(packageName, valueOf);
                    bool = valueOf;
                }
                if (!((Boolean) bool).booleanValue()) {
                    arrayList.add(next);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(x9.z(arrayList));
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj4 = arrayList.get(i3);
            i3++;
            arrayList2.add(((MediaController) obj4).getSessionToken());
        }
        int size2 = arrayList2.size();
        if (size2 != 0) {
            if (size2 != 1) {
                set = new LinkedHashSet(pm.L(arrayList2.size()));
                int size3 = arrayList2.size();
                int i4 = 0;
                while (i4 < size3) {
                    Object obj5 = arrayList2.get(i4);
                    i4++;
                    set.add(obj5);
                }
            } else {
                set = Collections.singleton(arrayList2.get(0));
                set.getClass();
            }
        } else {
            set = le.a;
        }
        LinkedHashMap linkedHashMap2 = this.l;
        Set keySet = linkedHashMap2.keySet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj6 : keySet) {
            if (!set.contains((MediaSession.Token) obj6)) {
                arrayList3.add(obj6);
            }
        }
        int size4 = arrayList3.size();
        int i5 = 0;
        while (true) {
            gqVar = this.n;
            if (i5 >= size4) {
                break;
            }
            Object obj7 = arrayList3.get(i5);
            i5++;
            MediaController mediaController2 = (MediaController) linkedHashMap2.remove((MediaSession.Token) obj7);
            if (mediaController2 != null) {
                mediaController2.unregisterCallback(gqVar);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size5 = arrayList.size();
        int i6 = 0;
        while (i6 < size5) {
            Object obj8 = arrayList.get(i6);
            i6++;
            if (!linkedHashMap2.containsKey(((MediaController) obj8).getSessionToken())) {
                arrayList4.add(obj8);
            }
        }
        int size6 = arrayList4.size();
        int i7 = 0;
        while (true) {
            handler = this.j;
            if (i7 >= size6) {
                break;
            }
            Object obj9 = arrayList4.get(i7);
            i7++;
            MediaController mediaController3 = (MediaController) obj9;
            mediaController3.registerCallback(gqVar, handler);
            linkedHashMap2.put(mediaController3.getSessionToken(), mediaController3);
        }
        MediaController mediaController4 = this.i;
        if (mediaController4 != null) {
            token = mediaController4.getSessionToken();
        } else {
            token = null;
        }
        int size7 = arrayList.size();
        int i8 = 0;
        while (true) {
            if (i8 < size7) {
                obj = arrayList.get(i8);
                i8++;
                if (qj.c(((MediaController) obj).getSessionToken(), token)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        MediaController mediaController5 = (MediaController) obj;
        if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
            int size8 = arrayList.size();
            while (true) {
                if (i < size8) {
                    obj2 = arrayList.get(i);
                    i++;
                    PlaybackState playbackState3 = ((MediaController) obj2).getPlaybackState();
                    if (playbackState3 != null && playbackState3.getState() == 3) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            MediaController mediaController6 = (MediaController) obj2;
            if (mediaController6 != null) {
                mediaController5 = mediaController6;
            } else if (mediaController5 == null) {
                mediaController5 = (MediaController) v9.A(arrayList);
            }
        }
        if (mediaController5 != null) {
            token2 = mediaController5.getSessionToken();
        } else {
            token2 = null;
        }
        MediaController mediaController7 = this.i;
        if (mediaController7 != null) {
            token3 = mediaController7.getSessionToken();
        } else {
            token3 = null;
        }
        if (!qj.c(token2, token3)) {
            MediaController mediaController8 = this.i;
            gq gqVar2 = this.k;
            if (mediaController8 != null) {
                mediaController8.unregisterCallback(gqVar2);
            }
            this.i = mediaController5;
            if (mediaController5 != null) {
                mediaController5.registerCallback(gqVar2, handler);
            }
            ko koVar = this.h;
            if (koVar != null) {
                if (mediaController5 != null && (metadata = mediaController5.getMetadata()) != null) {
                    mediaMetadataCompat = g(metadata);
                } else {
                    mediaMetadataCompat = null;
                }
                koVar.L(mediaMetadataCompat);
                ko koVar2 = this.h;
                if (koVar2 != null) {
                    if (mediaController5 != null) {
                        list2 = mediaController5.getQueue();
                    } else {
                        list2 = null;
                    }
                    koVar2.N(i(list2));
                    ko koVar3 = this.h;
                    if (koVar3 != null) {
                        if (mediaController5 != null) {
                            charSequence = mediaController5.getQueueTitle();
                        } else {
                            charSequence = null;
                        }
                        ((go) koVar3.b).a.setQueueTitle(charSequence);
                        ko koVar4 = this.h;
                        if (koVar4 != null) {
                            if (mediaController5 != null) {
                                playbackState = mediaController5.getPlaybackState();
                            }
                            koVar4.M(h(playbackState));
                            b();
                            return;
                        }
                        qj.v("mediaSession");
                        throw null;
                    }
                    qj.v("mediaSession");
                    throw null;
                }
                qj.v("mediaSession");
                throw null;
            }
            qj.v("mediaSession");
            throw null;
        }
    }

    @Override // defpackage.vn, android.app.Service
    public final void onCreate() {
        super.onCreate();
        ko koVar = new ko(this);
        hq hqVar = new hq(this);
        go goVar = (go) koVar.b;
        goVar.c(hqVar, new Handler());
        koVar.J(true);
        MediaSessionCompat$Token mediaSessionCompat$Token = goVar.c;
        if (mediaSessionCompat$Token != null) {
            if (this.f == null) {
                this.f = mediaSessionCompat$Token;
                cf cfVar = this.a;
                ((vn) cfVar.e).e.a(new c1(cfVar, 6, mediaSessionCompat$Token));
                this.h = koVar;
                q = this;
                k();
                return;
            }
            c2.g("The session token has already been set");
            return;
        }
        c2.n("Session token may not be null");
    }

    @Override // defpackage.vn, android.app.Service
    public final void onDestroy() {
        q = null;
        MediaController mediaController = this.i;
        if (mediaController != null) {
            mediaController.unregisterCallback(this.k);
        }
        LinkedHashMap linkedHashMap = this.l;
        for (MediaController mediaController2 : linkedHashMap.values()) {
            mediaController2.unregisterCallback(this.n);
        }
        linkedHashMap.clear();
        Object systemService = getSystemService("media_session");
        systemService.getClass();
        ((MediaSessionManager) systemService).removeOnActiveSessionsChangedListener(this.o);
        super.onDestroy();
        ko koVar = this.h;
        if (koVar != null) {
            go goVar = (go) koVar.b;
            MediaSession mediaSession = goVar.a;
            goVar.e.kill();
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    Field declaredField = mediaSession.getClass().getDeclaredField("mCallback");
                    declaredField.setAccessible(true);
                    Handler handler = (Handler) declaredField.get(mediaSession);
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                } catch (Exception e) {
                    Log.w("MediaSessionCompat", "Exception happened while accessing MediaSession.mCallback.", e);
                }
            }
            mediaSession.setCallback(null);
            goVar.b.a.set(null);
            mediaSession.release();
            return;
        }
        qj.v("mediaSession");
        throw null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        this.m.clear();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
