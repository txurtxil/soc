package defpackage;

import android.app.NotificationManager;
/* renamed from: sr  reason: default package */
/* loaded from: classes.dex */
public abstract class sr {
    public static boolean a(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static int b(NotificationManager notificationManager) {
        return notificationManager.getImportance();
    }
}
