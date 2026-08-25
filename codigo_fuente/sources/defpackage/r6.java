package defpackage;

import java.util.concurrent.Executors;
/* renamed from: r6  reason: default package */
/* loaded from: classes.dex */
public final class r6 extends em {
    public static volatile r6 p;
    public final Object o;

    public r6(int i) {
        switch (i) {
            case 1:
                this.o = new Object();
                Executors.newFixedThreadPool(4, new hc());
                return;
            default:
                this.o = new r6(1);
                return;
        }
    }

    public static r6 w() {
        if (p != null) {
            return p;
        }
        synchronized (r6.class) {
            try {
                if (p == null) {
                    p = new r6(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return p;
    }
}
