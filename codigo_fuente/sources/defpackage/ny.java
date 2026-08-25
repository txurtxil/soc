package defpackage;

import android.content.ServiceConnection;
import android.util.Pair;
import java.util.concurrent.Executor;
/* renamed from: ny  reason: default package */
/* loaded from: classes.dex */
public final class ny extends Pair {
    public final void a(ServiceConnection serviceConnection) {
        ((Executor) ((Pair) this).second).execute(new y5(this, 6, serviceConnection));
    }
}
