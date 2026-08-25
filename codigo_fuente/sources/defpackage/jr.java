package defpackage;

import android.app.Notification;
import android.os.Bundle;
/* renamed from: jr  reason: default package */
/* loaded from: classes.dex */
public abstract class jr {
    public static Notification.Builder a(Notification.Builder builder, Bundle bundle) {
        return builder.setExtras(bundle);
    }
}
