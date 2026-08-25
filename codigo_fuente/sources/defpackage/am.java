package defpackage;
/* renamed from: am  reason: default package */
/* loaded from: classes.dex */
public final class am implements Cloneable {
    public static final Object e = new Object();
    public boolean a = false;
    public long[] b;
    public Object[] c;
    public int d;

    public am() {
        int i;
        int i2 = 4;
        while (true) {
            i = 80;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (80 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 8;
        this.b = new long[i4];
        this.c = new Object[i4];
    }

    public final void a() {
        int i = this.d;
        Object[] objArr = this.c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.d = 0;
        this.a = false;
    }

    public final void b() {
        int i = this.d;
        long[] jArr = this.b;
        Object[] objArr = this.c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.a = false;
        this.d = i2;
    }

    public final Object c(long j) {
        Object obj;
        int e2 = gt.e(this.b, this.d, j);
        if (e2 >= 0 && (obj = this.c[e2]) != e) {
            return obj;
        }
        return null;
    }

    public final Object clone() {
        try {
            am amVar = (am) super.clone();
            amVar.b = (long[]) this.b.clone();
            amVar.c = (Object[]) this.c.clone();
            return amVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void d(long j, Object obj) {
        int e2 = gt.e(this.b, this.d, j);
        if (e2 >= 0) {
            this.c[e2] = obj;
            return;
        }
        int i = ~e2;
        int i2 = this.d;
        if (i < i2) {
            Object[] objArr = this.c;
            if (objArr[i] == e) {
                this.b[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.a && i2 >= this.b.length) {
            b();
            i = ~gt.e(this.b, this.d, j);
        }
        int i3 = this.d;
        if (i3 >= this.b.length) {
            int i4 = (i3 + 1) * 8;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 8;
            long[] jArr = new long[i7];
            Object[] objArr2 = new Object[i7];
            long[] jArr2 = this.b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = jArr;
            this.c = objArr2;
        }
        int i8 = this.d - i;
        if (i8 != 0) {
            long[] jArr3 = this.b;
            int i9 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i9, i8);
            Object[] objArr4 = this.c;
            System.arraycopy(objArr4, i, objArr4, i9, this.d - i);
        }
        this.b[i] = j;
        this.c[i] = obj;
        this.d++;
    }

    public final int e() {
        if (this.a) {
            b();
        }
        return this.d;
    }

    public final Object f(int i) {
        if (this.a) {
            b();
        }
        return this.c[i];
    }

    public final String toString() {
        if (e() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.d * 28);
        sb.append('{');
        for (int i = 0; i < this.d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (this.a) {
                b();
            }
            sb.append(this.b[i]);
            sb.append('=');
            Object f = f(i);
            if (f != this) {
                sb.append(f);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
