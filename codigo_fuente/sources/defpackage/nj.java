package defpackage;

import java.util.Iterator;
/* renamed from: nj  reason: default package */
/* loaded from: classes.dex */
public final class nj implements Iterable {
    public static final nj d = new nj(1, 0, 1);
    public final int a;
    public final int b;
    public final int c;

    public nj(int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 != Integer.MIN_VALUE) {
                this.a = i;
                if (i3 > 0) {
                    if (i < i2) {
                        int i4 = i2 % i3;
                        int i5 = i % i3;
                        int i6 = ((i4 < 0 ? i4 + i3 : i4) - (i5 < 0 ? i5 + i3 : i5)) % i3;
                        i2 -= i6 < 0 ? i6 + i3 : i6;
                    }
                } else if (i3 < 0) {
                    if (i > i2) {
                        int i7 = -i3;
                        int i8 = i % i7;
                        int i9 = i2 % i7;
                        int i10 = ((i8 < 0 ? i8 + i7 : i8) - (i9 < 0 ? i9 + i7 : i9)) % i7;
                        i2 += i10 < 0 ? i10 + i7 : i10;
                    }
                } else {
                    c2.n("Step is zero.");
                    throw null;
                }
                this.b = i2;
                this.c = i3;
                return;
            }
            c2.n("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        c2.n("Step must be non-zero.");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof nj) {
            if (!isEmpty() || !((nj) obj).isEmpty()) {
                nj njVar = (nj) obj;
                if (this.a == njVar.a && this.b == njVar.b) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.a * 31) + this.b;
    }

    public final boolean isEmpty() {
        if (this.a > this.b) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new mj(this.a, this.b, this.c);
    }

    public final String toString() {
        return this.a + ".." + this.b;
    }
}
