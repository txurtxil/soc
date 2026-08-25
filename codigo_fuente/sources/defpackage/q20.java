package defpackage;
/* renamed from: q20  reason: default package */
/* loaded from: classes.dex */
public final class q20 implements Cloneable {
    public static final Object d = new Object();
    public int[] a;
    public Object[] b;
    public int c;

    public q20() {
        int i;
        int i2 = 4;
        while (true) {
            i = 40;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (40 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 4;
        this.a = new int[i4];
        this.b = new Object[i4];
    }

    public final Object clone() {
        try {
            q20 q20Var = (q20) super.clone();
            q20Var.a = (int[]) this.a.clone();
            q20Var.b = (Object[]) this.b.clone();
            return q20Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final String toString() {
        int i = this.c;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(this.a[i2]);
            sb.append('=');
            Object obj = this.b[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
