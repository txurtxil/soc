package defpackage;

import java.util.concurrent.ThreadFactory;
/* renamed from: nx  reason: default package */
/* loaded from: classes.dex */
public final class nx implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new mx(runnable);
    }
}
