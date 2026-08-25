package defpackage;

import java.util.Map;
/* renamed from: u90  reason: default package */
/* loaded from: classes.dex */
public class u90 {
    public final int[] a = k60.g;
    public final Object[] b = k60.h;
    public final int c = 0;

    public final int a() {
        int i = this.c;
        if (i == 0) {
            return -1;
        }
        int a = k60.a(i, 0, this.a);
        if (a >= 0) {
            if (this.b[a << 1] != null) {
                int i2 = a + 1;
                while (i2 < i && this.a[i2] == 0) {
                    if (this.b[i2 << 1] == null) {
                        return i2;
                    }
                    i2++;
                }
                do {
                    a--;
                    if (a < 0 || this.a[a] != 0) {
                        return ~i2;
                    }
                } while (this.b[a << 1] != null);
                return a;
            }
        }
        return a;
    }

    public final int b(int i, Object obj) {
        int i2 = this.c;
        if (i2 == 0) {
            return -1;
        }
        int[] iArr = this.a;
        int a = k60.a(i2, i, iArr);
        if (a >= 0) {
            Object[] objArr = this.b;
            if (!obj.equals(objArr[a << 1])) {
                int i3 = a + 1;
                while (i3 < i2 && iArr[i3] == i) {
                    if (obj.equals(objArr[i3 << 1])) {
                        return i3;
                    }
                    i3++;
                }
                do {
                    a--;
                    if (a < 0 || iArr[a] != i) {
                        return ~i3;
                    }
                } while (!obj.equals(objArr[a << 1]));
                return a;
            }
        }
        return a;
    }

    public final Object c(int i) {
        return this.b[(i << 1) + 1];
    }

    public final boolean d(Object obj) {
        int b;
        if (obj == null) {
            b = a();
        } else {
            b = b(obj.hashCode(), obj);
        }
        if (b >= 0) {
            return true;
        }
        return false;
    }

    public final Object e(Object obj) {
        int b;
        if (obj == null) {
            b = a();
        } else {
            b = b(obj.hashCode(), obj);
        }
        if (b >= 0) {
            return this.b[(b << 1) + 1];
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            boolean z = obj instanceof u90;
            Object[] objArr = this.b;
            int i = this.c;
            if (z) {
                u90 u90Var = (u90) obj;
                if (i == u90Var.c) {
                    for (int i2 = 0; i2 < i; i2++) {
                        Object obj2 = objArr[i2 << 1];
                        Object c = c(i2);
                        Object e = u90Var.e(obj2);
                        if (c == null) {
                            if (e == null && u90Var.d(obj2)) {
                            }
                        } else if (c.equals(e)) {
                        }
                    }
                    return true;
                }
                return false;
            }
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (i == map.size()) {
                    for (int i3 = 0; i3 < i; i3++) {
                        Object obj3 = objArr[i3 << 1];
                        Object c2 = c(i3);
                        Object obj4 = map.get(obj3);
                        if (c2 == null) {
                            if (obj4 == null && map.containsKey(obj3)) {
                            }
                        } else if (c2.equals(obj4)) {
                        }
                    }
                    return true;
                }
            }
            return false;
            return false;
        }
        return true;
    }

    public final boolean f() {
        return this.c <= 0;
    }

    public final int hashCode() {
        int i = 1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.c) {
            Object obj = this.b[i];
            i3 += (obj == null ? 0 : obj.hashCode()) ^ this.a[i2];
            i2++;
            i += 2;
        }
        return i3;
    }

    public final String toString() {
        if (f()) {
            return "{}";
        }
        int i = this.c;
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.b[i2 << 1];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object c = c(i2);
            if (c != this) {
                sb.append(c);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
