package defpackage;

import java.util.concurrent.ThreadFactory;
/* renamed from: na  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class na implements ThreadFactory {
    public final /* synthetic */ String a;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.a);
        thread.setPriority(10);
        return thread;
    }
}
