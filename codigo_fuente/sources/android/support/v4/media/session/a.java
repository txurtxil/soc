package android.support.v4.media.session;

import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.ResultReceiver;
import idv.lzn.screenonauto.MirrorMediaService;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class a {
    public final Object a = new Object();
    public final ArrayList b = new ArrayList();
    public final HashMap c = new HashMap();
    public final MediaSessionCompat$Token d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver, android.os.ResultReceiver] */
    public a(MirrorMediaService mirrorMediaService, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.d = mediaSessionCompat$Token;
        MediaController mediaController = new MediaController(mirrorMediaService, (MediaSession.Token) mediaSessionCompat$Token.b);
        if (mediaSessionCompat$Token.a() == null) {
            ?? resultReceiver = new ResultReceiver(null);
            resultReceiver.a = new WeakReference(this);
            mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, resultReceiver);
        }
    }
}
