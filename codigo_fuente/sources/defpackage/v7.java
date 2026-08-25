package defpackage;

import android.os.Bundle;
import android.os.IBinder;
/* renamed from: v7  reason: default package */
/* loaded from: classes.dex */
public abstract class v7 {
    public static IBinder a(Bundle bundle, String str) {
        return bundle.getBinder(str);
    }

    public static void b(Bundle bundle, String str, IBinder iBinder) {
        bundle.putBinder(str, iBinder);
    }
}
