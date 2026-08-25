package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
/* renamed from: xa  reason: default package */
/* loaded from: classes.dex */
public abstract class xa {
    public static void a(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, bundle);
    }

    public static void b(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }
}
