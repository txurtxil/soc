package defpackage;

import android.app.Notification;
/* renamed from: rr  reason: default package */
/* loaded from: classes.dex */
public abstract class rr {
    public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z) {
        return builder.setAuthenticationRequired(z);
    }

    public static Notification.Builder b(Notification.Builder builder, int i) {
        return builder.setForegroundServiceBehavior(i);
    }
}
