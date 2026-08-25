package defpackage;

import android.app.Activity;
import android.content.Intent;
/* renamed from: tq  reason: default package */
/* loaded from: classes.dex */
public abstract class tq {
    public static Intent a(Activity activity) {
        return activity.getParentActivityIntent();
    }

    public static boolean b(Activity activity, Intent intent) {
        return activity.navigateUpTo(intent);
    }

    public static boolean c(Activity activity, Intent intent) {
        return activity.shouldUpRecreateTask(intent);
    }
}
