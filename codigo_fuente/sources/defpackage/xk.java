package defpackage;

import android.view.View;
/* renamed from: xk  reason: default package */
/* loaded from: classes.dex */
public final class xk {
    public pd a;
    public int b;
    public int c;
    public boolean d;
    public boolean e;

    public xk() {
        c();
    }

    public final void a() {
        int k;
        boolean z = this.d;
        pd pdVar = this.a;
        if (z) {
            k = pdVar.g();
        } else {
            k = pdVar.k();
        }
        this.c = k;
    }

    public final void b(View view, int i) {
        int l;
        pd pdVar = this.a;
        int i2 = 0;
        if (Integer.MIN_VALUE == pdVar.a) {
            l = 0;
        } else {
            l = pdVar.l() - pdVar.a;
        }
        if (l >= 0) {
            boolean z = this.d;
            pd pdVar2 = this.a;
            if (z) {
                int b = pdVar2.b(view);
                pd pdVar3 = this.a;
                if (Integer.MIN_VALUE != pdVar3.a) {
                    i2 = pdVar3.l() - pdVar3.a;
                }
                this.c = i2 + b;
            } else {
                this.c = pdVar2.e(view);
            }
            this.b = i;
            return;
        }
        this.b = i;
        boolean z2 = this.d;
        pd pdVar4 = this.a;
        if (z2) {
            int g = (pdVar4.g() - l) - this.a.b(view);
            this.c = this.a.g() - g;
            if (g > 0) {
                int c = this.c - this.a.c(view);
                int k = this.a.k();
                int min = c - (Math.min(this.a.e(view) - k, 0) + k);
                if (min < 0) {
                    this.c = Math.min(g, -min) + this.c;
                    return;
                }
                return;
            }
            return;
        }
        int e = pdVar4.e(view);
        int k2 = e - this.a.k();
        this.c = e;
        if (k2 > 0) {
            int g2 = (this.a.g() - Math.min(0, (this.a.g() - l) - this.a.b(view))) - (this.a.c(view) + e);
            if (g2 < 0) {
                this.c -= Math.min(k2, -g2);
            }
        }
    }

    public final void c() {
        this.b = -1;
        this.c = Integer.MIN_VALUE;
        this.d = false;
        this.e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
    }
}
