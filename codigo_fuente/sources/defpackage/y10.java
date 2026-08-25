package defpackage;

import android.content.ComponentName;
import android.os.Bundle;
import java.util.Objects;
/* renamed from: y10  reason: default package */
/* loaded from: classes.dex */
public final class y10 {
    public final ComponentName a;
    public String c;
    public int b = 1;
    public boolean d = false;
    public boolean e = true;

    public y10(ComponentName componentName) {
        this.a = componentName;
    }

    public static Bundle a(y10 y10Var) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("shizuku:user-service-arg-component", y10Var.a);
        bundle.putBoolean("shizuku:user-service-arg-debuggable", y10Var.d);
        bundle.putInt("shizuku:user-service-arg-version-code", y10Var.b);
        bundle.putBoolean("shizuku:user-service-arg-daemon", y10Var.e);
        bundle.putBoolean("shizuku:user-service-arg-use-32-bit-app-process", false);
        String str = y10Var.c;
        Objects.requireNonNull(str, "process name suffix must not be null");
        bundle.putString("shizuku:user-service-arg-process-name", str);
        return bundle;
    }
}
