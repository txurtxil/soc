package idv.lzn.screenonauto;

import android.service.notification.NotificationListenerService;
/* loaded from: classes.dex */
public final class MirrorNotificationListenerService extends NotificationListenerService {
    @Override // android.service.notification.NotificationListenerService
    public final void onListenerConnected() {
        MirrorMediaService mirrorMediaService = MirrorMediaService.q;
        if (mirrorMediaService != null) {
            mirrorMediaService.k();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onListenerDisconnected() {
    }
}
