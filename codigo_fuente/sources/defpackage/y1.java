package defpackage;
/* renamed from: y1  reason: default package */
/* loaded from: classes.dex */
public final class y1 {
    public int a;
    public int b;
    public Object c;
    public int d;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && y1.class == obj.getClass()) {
                y1 y1Var = (y1) obj;
                int i = this.a;
                if (i == y1Var.a) {
                    if (i != 8 || Math.abs(this.d - this.b) != 1 || this.d != y1Var.b || this.b != y1Var.d) {
                        if (this.d == y1Var.d && this.b == y1Var.b) {
                            Object obj2 = this.c;
                            Object obj3 = y1Var.c;
                            if (obj2 != null) {
                                if (!obj2.equals(obj3)) {
                                    return false;
                                }
                            } else if (obj3 != null) {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.d;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.a;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 8) {
                        str = "??";
                    } else {
                        str = "mv";
                    }
                } else {
                    str = "up";
                }
            } else {
                str = "rm";
            }
        } else {
            str = "add";
        }
        sb.append(str);
        sb.append(",s:");
        sb.append(this.b);
        sb.append("c:");
        sb.append(this.d);
        sb.append(",p:");
        sb.append(this.c);
        sb.append("]");
        return sb.toString();
    }
}
