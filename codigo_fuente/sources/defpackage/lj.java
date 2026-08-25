package defpackage;

import android.graphics.Insets;
/* renamed from: lj  reason: default package */
/* loaded from: classes.dex */
public final class lj {
    public static final lj e = new lj(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public lj(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static lj a(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return e;
        }
        return new lj(i, i2, i3, i4);
    }

    public final Insets b() {
        return kj.a(this.a, this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || lj.class != obj.getClass()) {
            return false;
        }
        lj ljVar = (lj) obj;
        if (this.d == ljVar.d && this.a == ljVar.a && this.c == ljVar.c && this.b == ljVar.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        return "Insets{left=" + this.a + ", top=" + this.b + ", right=" + this.c + ", bottom=" + this.d + '}';
    }
}
