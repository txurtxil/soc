package defpackage;

import android.os.Handler;
import androidx.lifecycle.a;
/* renamed from: bv  reason: default package */
/* loaded from: classes.dex */
public final class bv implements sk {
    public static final bv i = new bv();
    public int a;
    public int b;
    public Handler e;
    public boolean c = true;
    public boolean d = true;
    public final a f = new a(this);
    public final m1 g = new m1(9, this);
    public final c9 h = new c9(24, this);

    public final void b() {
        int i2 = this.b + 1;
        this.b = i2;
        if (i2 == 1) {
            if (this.c) {
                this.f.e(lk.ON_RESUME);
                this.c = false;
                return;
            }
            Handler handler = this.e;
            handler.getClass();
            handler.removeCallbacks(this.g);
        }
    }

    @Override // defpackage.sk
    public final a f() {
        return this.f;
    }
}
