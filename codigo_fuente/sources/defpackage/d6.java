package defpackage;

import java.util.concurrent.Executor;
/* renamed from: d6  reason: default package */
/* loaded from: classes.dex */
public final class d6 implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        new Thread(runnable).start();
    }
}
