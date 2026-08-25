package defpackage;
/* renamed from: n80  reason: default package */
/* loaded from: classes.dex */
public final class n80 implements Runnable {
    public qu a;

    @Override // java.lang.Runnable
    public final synchronized void run() {
        this.a.run();
        this.a = null;
        notifyAll();
    }
}
