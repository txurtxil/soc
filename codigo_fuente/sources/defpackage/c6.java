package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: c6  reason: default package */
/* loaded from: classes.dex */
public final class c6 implements Executor {
    public final Object a = new Object();
    public final ArrayDeque b = new ArrayDeque();
    public final d6 c;
    public Runnable d;

    public c6(d6 d6Var) {
        this.c = d6Var;
    }

    public final void a() {
        synchronized (this.a) {
            try {
                Runnable runnable = (Runnable) this.b.poll();
                this.d = runnable;
                if (runnable != null) {
                    this.c.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.a) {
            try {
                this.b.add(new y5(this, 1, runnable));
                if (this.d == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
