package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.drawable.Icon;
/* renamed from: mr  reason: default package */
/* loaded from: classes.dex */
public abstract class mr {
    public static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
        return new Notification.Action.Builder(icon, charSequence, pendingIntent);
    }

    public static Notification.Builder b(Notification.Builder builder, Object obj) {
        return builder.setSmallIcon((Icon) obj);
    }
}
