package defpackage;

import android.app.NotificationManager;
import android.content.Context;
import java.util.HashSet;
/* renamed from: ur  reason: default package */
/* loaded from: classes.dex */
public final class ur {
    public static String c;
    public final NotificationManager a;
    public static final Object b = new Object();
    public static HashSet d = new HashSet();

    public ur(Context context) {
        this.a = (NotificationManager) context.getSystemService("notification");
    }
}
