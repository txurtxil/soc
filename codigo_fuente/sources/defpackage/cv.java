package defpackage;

import java.util.concurrent.Executor;
/* renamed from: cv  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class cv implements Executor {
    public final /* synthetic */ int a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.a) {
            case 0:
                runnable.run();
                return;
            default:
                e60.a(runnable);
                return;
        }
    }
}
