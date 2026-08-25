package defpackage;

import android.os.Handler;
/* renamed from: ox  reason: default package */
/* loaded from: classes.dex */
public final class ox implements Runnable {
    public ff a;
    public gf b;
    public Handler c;

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        try {
            obj = this.a.call();
        } catch (Exception unused) {
            obj = null;
        }
        this.c.post(new c1(this.b, obj, 7, false));
    }
}
