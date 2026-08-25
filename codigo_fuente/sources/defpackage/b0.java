package defpackage;

import android.media.session.MediaSession;
import android.view.WindowInsets;
import idv.lzn.screenonauto.MirrorMediaService;
/* renamed from: b0  reason: default package */
/* loaded from: classes.dex */
public abstract /* synthetic */ class b0 {
    public static /* synthetic */ MediaSession d(MirrorMediaService mirrorMediaService) {
        return new MediaSession(mirrorMediaService, "MirrorMediaService", null);
    }

    public static /* synthetic */ WindowInsets.Builder f() {
        return new WindowInsets.Builder();
    }

    public static /* synthetic */ WindowInsets.Builder g(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }
}
