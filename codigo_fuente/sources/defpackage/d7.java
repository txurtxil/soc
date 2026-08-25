package defpackage;

import android.window.BackEvent;
/* renamed from: d7  reason: default package */
/* loaded from: classes.dex */
public final class d7 {
    public final float a;
    public final float b;
    public final float c;
    public final int d;

    public d7(BackEvent backEvent) {
        w2 w2Var = w2.a;
        float d = w2Var.d(backEvent);
        float e = w2Var.e(backEvent);
        float b = w2Var.b(backEvent);
        int c = w2Var.c(backEvent);
        this.a = d;
        this.b = e;
        this.c = b;
        this.d = c;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.a + ", touchY=" + this.b + ", progress=" + this.c + ", swipeEdge=" + this.d + '}';
    }
}
