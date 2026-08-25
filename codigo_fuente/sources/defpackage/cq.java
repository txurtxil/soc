package defpackage;

import android.util.Log;
import idv.lzn.screenonauto.privileged.ShizukuBackend;
/* renamed from: cq  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class cq implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;

    public /* synthetic */ cq(Object obj, int i, int i2, int i3) {
        this.a = i3;
        this.b = obj;
        this.c = i;
        this.d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                eq eqVar = (eq) this.b;
                int i = this.c;
                int i2 = this.d;
                if (!eqVar.w && i > 0 && i2 > 0) {
                    if (i != eqVar.s || i2 != eqVar.t) {
                        eqVar.s = i;
                        eqVar.t = i2;
                        int i3 = eqVar.B;
                        StringBuilder g = t20.g("setSource: VD ", i, "x", i2, ", buffer ");
                        g.append(i3);
                        g.append("²");
                        Log.d("MirrorCompositor", g.toString());
                        eqVar.e(true);
                        return;
                    }
                    return;
                }
                return;
            case 1:
                eq eqVar2 = (eq) this.b;
                int i4 = this.c;
                int i5 = this.d;
                if (!eqVar2.w && i4 > 0 && i5 > 0) {
                    if (i4 != eqVar2.q || i5 != eqVar2.r) {
                        eqVar2.q = i4;
                        eqVar2.r = i5;
                        int i6 = eqVar2.B;
                        StringBuilder g2 = t20.g("setCapture: ", i4, "x", i5, " in ");
                        g2.append(i6);
                        g2.append("² buffer");
                        Log.d("MirrorCompositor", g2.toString());
                        eqVar2.e(true);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                eq eqVar3 = (eq) this.b;
                int i7 = this.c;
                int i8 = this.d;
                if (!eqVar3.w) {
                    if (i7 != eqVar3.u || i8 != eqVar3.v) {
                        eqVar3.u = i7;
                        eqVar3.v = i8;
                        eqVar3.e(true);
                        return;
                    }
                    return;
                }
                return;
            default:
                int i9 = this.c;
                int i10 = this.d;
                ((c20) ((x10) ((u10) this.b).a)).getClass();
                ShizukuBackend.a(i9, i10);
                return;
        }
    }
}
