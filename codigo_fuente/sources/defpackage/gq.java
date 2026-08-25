package defpackage;

import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.PlaybackState;
import idv.lzn.screenonauto.MirrorMediaService;
import java.util.List;
/* renamed from: gq  reason: default package */
/* loaded from: classes.dex */
public final class gq extends MediaController.Callback {
    public final /* synthetic */ int a;
    public final /* synthetic */ MirrorMediaService b;

    public /* synthetic */ gq(MirrorMediaService mirrorMediaService, int i) {
        this.a = i;
        this.b = mirrorMediaService;
    }

    @Override // android.media.session.MediaController.Callback
    public void onMetadataChanged(MediaMetadata mediaMetadata) {
        String str;
        switch (this.a) {
            case 0:
                if (mediaMetadata != null) {
                    str = mediaMetadata.getString("android.media.metadata.TITLE");
                } else {
                    str = null;
                }
                if (str != null && str.length() != 0) {
                    MirrorMediaService mirrorMediaService = this.b;
                    ko koVar = mirrorMediaService.h;
                    if (koVar != null) {
                        koVar.L(MirrorMediaService.g(mediaMetadata));
                        mirrorMediaService.b();
                        return;
                    }
                    qj.v("mediaSession");
                    throw null;
                }
                return;
            default:
                super.onMetadataChanged(mediaMetadata);
                return;
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onPlaybackStateChanged(PlaybackState playbackState) {
        int i = this.a;
        MirrorMediaService mirrorMediaService = this.b;
        switch (i) {
            case 0:
                ko koVar = mirrorMediaService.h;
                if (koVar != null) {
                    koVar.M(MirrorMediaService.h(playbackState));
                    return;
                } else {
                    qj.v("mediaSession");
                    throw null;
                }
            default:
                if (playbackState != null && playbackState.getState() == 3) {
                    MirrorMediaService.f(mirrorMediaService);
                    return;
                }
                return;
        }
    }

    @Override // android.media.session.MediaController.Callback
    public void onQueueChanged(List list) {
        switch (this.a) {
            case 0:
                MirrorMediaService mirrorMediaService = this.b;
                ko koVar = mirrorMediaService.h;
                CharSequence charSequence = null;
                if (koVar != null) {
                    koVar.N(MirrorMediaService.i(list));
                    ko koVar2 = mirrorMediaService.h;
                    if (koVar2 != null) {
                        MediaController mediaController = mirrorMediaService.i;
                        if (mediaController != null) {
                            charSequence = mediaController.getQueueTitle();
                        }
                        ((go) koVar2.b).a.setQueueTitle(charSequence);
                        return;
                    }
                    qj.v("mediaSession");
                    throw null;
                }
                qj.v("mediaSession");
                throw null;
            default:
                super.onQueueChanged(list);
                return;
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onSessionDestroyed() {
        int i = this.a;
        MirrorMediaService mirrorMediaService = this.b;
        switch (i) {
            case 0:
                MirrorMediaService.f(mirrorMediaService);
                return;
            default:
                MirrorMediaService.f(mirrorMediaService);
                return;
        }
    }
}
