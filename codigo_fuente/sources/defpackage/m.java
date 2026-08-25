package defpackage;
/* renamed from: m  reason: default package */
/* loaded from: classes.dex */
public final class m {
    public static final m b;
    public static final m c;
    public final Throwable a;

    static {
        if (s.d) {
            c = null;
            b = null;
            return;
        }
        c = new m(false, null);
        b = new m(true, null);
    }

    public m(boolean z, Throwable th) {
        this.a = th;
    }
}
