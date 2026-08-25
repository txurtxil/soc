package defpackage;

import android.content.Intent;
import android.media.session.MediaController;
import android.os.Build;
import android.view.KeyEvent;
import idv.lzn.screenonauto.MirrorMediaService;
import java.util.Locale;
/* renamed from: hq  reason: default package */
/* loaded from: classes.dex */
public final class hq extends fo {
    public final /* synthetic */ MirrorMediaService f;

    public hq(MirrorMediaService mirrorMediaService) {
        this.f = mirrorMediaService;
    }

    @Override // defpackage.fo
    public final void b() {
        MirrorMediaService.e(this.f, 90);
    }

    @Override // defpackage.fo
    public final boolean c(Intent intent) {
        Object parcelableExtra;
        KeyEvent keyEvent;
        intent.getClass();
        int i = t7.a;
        if (Build.VERSION.SDK_INT >= 33) {
            String str = Build.VERSION.CODENAME;
            if (!"REL".equals(str)) {
                Locale locale = Locale.ROOT;
                if (str.toUpperCase(locale).compareTo("UpsideDownCake".toUpperCase(locale)) >= 0) {
                    parcelableExtra = oj.c(intent, "android.intent.extra.KEY_EVENT", KeyEvent.class);
                    keyEvent = (KeyEvent) parcelableExtra;
                    if (keyEvent == null && keyEvent.getAction() == 0) {
                        MirrorMediaService.e(this.f, keyEvent.getKeyCode());
                        return true;
                    }
                    return super.c(intent);
                }
            }
        }
        parcelableExtra = intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (!KeyEvent.class.isInstance(parcelableExtra)) {
            parcelableExtra = null;
        }
        keyEvent = (KeyEvent) parcelableExtra;
        if (keyEvent == null) {
        }
        return super.c(intent);
    }

    @Override // defpackage.fo
    public final void d() {
        MirrorMediaService.e(this.f, 127);
    }

    @Override // defpackage.fo
    public final void e() {
        MirrorMediaService.e(this.f, 126);
    }

    @Override // defpackage.fo
    public final void f() {
        MirrorMediaService.e(this.f, 89);
    }

    @Override // defpackage.fo
    public final void g() {
        MirrorMediaService.e(this.f, 87);
    }

    @Override // defpackage.fo
    public final void h() {
        MirrorMediaService.e(this.f, 88);
    }

    @Override // defpackage.fo
    public final void i(long j) {
        MediaController.TransportControls transportControls;
        MediaController mediaController = this.f.i;
        if (mediaController != null && (transportControls = mediaController.getTransportControls()) != null) {
            transportControls.skipToQueueItem(j);
        }
    }

    @Override // defpackage.fo
    public final void j() {
        MirrorMediaService.e(this.f, 86);
    }
}
