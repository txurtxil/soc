package defpackage;

import android.media.session.MediaSession;
import android.os.Handler;
import android.os.RemoteCallbackList;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.media.session.b;
import idv.lzn.screenonauto.MirrorMediaService;
import java.lang.ref.WeakReference;
import java.util.List;
/* renamed from: go  reason: default package */
/* loaded from: classes.dex */
public class go {
    public final MediaSession a;
    public final b b;
    public final MediaSessionCompat$Token c;
    public final Object d = new Object();
    public final RemoteCallbackList e = new RemoteCallbackList();
    public PlaybackStateCompat f;
    public List g;
    public MediaMetadataCompat h;
    public fo i;
    public lo j;

    public go(MirrorMediaService mirrorMediaService) {
        MediaSession a = a(mirrorMediaService);
        this.a = a;
        b bVar = new b(this);
        this.b = bVar;
        this.c = new MediaSessionCompat$Token(a.getSessionToken(), bVar);
        a.setFlags(3);
    }

    public MediaSession a(MirrorMediaService mirrorMediaService) {
        return new MediaSession(mirrorMediaService, "MirrorMediaService");
    }

    public lo b() {
        lo loVar;
        synchronized (this.d) {
            loVar = this.j;
        }
        return loVar;
    }

    public final void c(fo foVar, Handler handler) {
        eo eoVar;
        synchronized (this.d) {
            this.i = foVar;
            MediaSession mediaSession = this.a;
            db0 db0Var = null;
            if (foVar == null) {
                eoVar = null;
            } else {
                eoVar = foVar.b;
            }
            mediaSession.setCallback(eoVar, handler);
            if (foVar != null) {
                synchronized (foVar.a) {
                    foVar.d = new WeakReference(this);
                    db0 db0Var2 = foVar.e;
                    if (db0Var2 != null) {
                        db0Var2.removeCallbacksAndMessages(null);
                    }
                    if (handler != null) {
                        db0Var = new db0(foVar, handler.getLooper(), 3);
                    }
                    foVar.e = db0Var;
                }
            }
        }
    }

    public void d(lo loVar) {
        synchronized (this.d) {
            this.j = loVar;
        }
    }
}
