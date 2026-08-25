package defpackage;
/* renamed from: r8  reason: default package */
/* loaded from: classes.dex */
public final class r8 {
    public boolean a;
    public q8 b;
    public boolean c;

    public final void a(q8 q8Var) {
        synchronized (this) {
            while (this.c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } finally {
                }
            }
            if (this.b != q8Var) {
                this.b = q8Var;
                if (this.a) {
                    q8Var.onCancel();
                }
            }
        }
    }
}
