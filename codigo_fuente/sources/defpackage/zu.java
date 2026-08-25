package defpackage;

import android.app.Activity;
import android.app.Application;
/* renamed from: zu  reason: default package */
/* loaded from: classes.dex */
public abstract class zu {
    public static final void a(Activity activity, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activity.getClass();
        activityLifecycleCallbacks.getClass();
        activity.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
    }
}
