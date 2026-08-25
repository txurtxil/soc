package defpackage;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* renamed from: j20  reason: default package */
/* loaded from: classes.dex */
public class j20 {
    public static Object[] d;
    public static int e;
    public static Object[] f;
    public static int g;
    public int[] a = gt.a;
    public Object[] b = gt.b;
    public int c = 0;

    public static void b(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (j20.class) {
                try {
                    if (g < 10) {
                        objArr[0] = f;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f = objArr;
                        g++;
                    }
                } finally {
                }
            }
        } else if (iArr.length == 4) {
            synchronized (j20.class) {
                try {
                    if (e < 10) {
                        objArr[0] = d;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        d = objArr;
                        e++;
                    }
                } finally {
                }
            }
        }
    }

    public final void a(int i) {
        if (i == 8) {
            synchronized (j20.class) {
                try {
                    Object[] objArr = f;
                    if (objArr != null) {
                        this.b = objArr;
                        f = (Object[]) objArr[0];
                        this.a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        g--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (j20.class) {
                try {
                    Object[] objArr2 = d;
                    if (objArr2 != null) {
                        this.b = objArr2;
                        d = (Object[]) objArr2[0];
                        this.a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        e--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.a = new int[i];
        this.b = new Object[i << 1];
    }

    public final int c(int i, Object obj) {
        int i2 = this.c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int d2 = gt.d(i2, i, this.a);
            if (d2 < 0 || obj.equals(this.b[d2 << 1])) {
                return d2;
            }
            int i3 = d2 + 1;
            while (i3 < i2 && this.a[i3] == i) {
                if (obj.equals(this.b[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = d2 - 1; i4 >= 0 && this.a[i4] == i; i4--) {
                if (obj.equals(this.b[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final void clear() {
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.a;
            Object[] objArr = this.b;
            this.a = gt.a;
            this.b = gt.b;
            this.c = 0;
            b(iArr, objArr, i);
        }
        if (this.c <= 0) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public final boolean containsKey(Object obj) {
        if (d(obj) >= 0) {
            return true;
        }
        return false;
    }

    public final boolean containsValue(Object obj) {
        if (f(obj) >= 0) {
            return true;
        }
        return false;
    }

    public final int d(Object obj) {
        if (obj == null) {
            return e();
        }
        return c(obj.hashCode(), obj);
    }

    public final int e() {
        int i = this.c;
        if (i == 0) {
            return -1;
        }
        try {
            int d2 = gt.d(i, 0, this.a);
            if (d2 < 0 || this.b[d2 << 1] == null) {
                return d2;
            }
            int i2 = d2 + 1;
            while (i2 < i && this.a[i2] == 0) {
                if (this.b[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = d2 - 1; i3 >= 0 && this.a[i3] == 0; i3--) {
                if (this.b[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j20) {
            j20 j20Var = (j20) obj;
            if (this.c != j20Var.c) {
                return false;
            }
            for (int i = 0; i < this.c; i++) {
                try {
                    Object g2 = g(i);
                    Object i2 = i(i);
                    Object orDefault = j20Var.getOrDefault(g2, null);
                    if (i2 == null) {
                        if (orDefault != null || !j20Var.containsKey(g2)) {
                            return false;
                        }
                    } else if (!i2.equals(orDefault)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.c != map.size()) {
                return false;
            }
            for (int i3 = 0; i3 < this.c; i3++) {
                try {
                    Object g3 = g(i3);
                    Object i4 = i(i3);
                    Object obj2 = map.get(g3);
                    if (i4 == null) {
                        if (obj2 != null || !map.containsKey(g3)) {
                            return false;
                        }
                    } else if (!i4.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f(Object obj) {
        int i = this.c * 2;
        Object[] objArr = this.b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final Object g(int i) {
        return this.b[i << 1];
    }

    public final Object get(Object obj) {
        return getOrDefault(obj, null);
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int d2 = d(obj);
        if (d2 >= 0) {
            return this.b[(d2 << 1) + 1];
        }
        return obj2;
    }

    public final Object h(int i) {
        Object[] objArr = this.b;
        int i2 = i << 1;
        Object obj = objArr[i2 + 1];
        int i3 = this.c;
        int[] iArr = this.a;
        int i4 = 0;
        if (i3 <= 1) {
            b(iArr, objArr, i3);
            this.a = gt.a;
            this.b = gt.b;
        } else {
            int i5 = i3 - 1;
            int i6 = 8;
            if (iArr.length > 8 && i3 < iArr.length / 3) {
                if (i3 > 8) {
                    i6 = i3 + (i3 >> 1);
                }
                a(i6);
                if (i3 == this.c) {
                    if (i > 0) {
                        System.arraycopy(iArr, 0, this.a, 0, i);
                        System.arraycopy(objArr, 0, this.b, 0, i2);
                    }
                    if (i < i5) {
                        int i7 = i + 1;
                        int i8 = i5 - i;
                        System.arraycopy(iArr, i7, this.a, i, i8);
                        System.arraycopy(objArr, i7 << 1, this.b, i2, i8 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr, i9, iArr, i, i10);
                    Object[] objArr2 = this.b;
                    System.arraycopy(objArr2, i9 << 1, objArr2, i2, i10 << 1);
                }
                Object[] objArr3 = this.b;
                int i11 = i5 << 1;
                objArr3[i11] = null;
                objArr3[i11 + 1] = null;
            }
            i4 = i5;
        }
        if (i3 == this.c) {
            this.c = i4;
            return obj;
        }
        throw new ConcurrentModificationException();
    }

    public final int hashCode() {
        int hashCode;
        int[] iArr = this.a;
        Object[] objArr = this.b;
        int i = this.c;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            int i5 = iArr[i3];
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            i4 += hashCode ^ i5;
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public final Object i(int i) {
        return this.b[(i << 1) + 1];
    }

    public final boolean isEmpty() {
        if (this.c <= 0) {
            return true;
        }
        return false;
    }

    public final Object put(Object obj, Object obj2) {
        int i;
        int c;
        int i2 = this.c;
        if (obj == null) {
            c = e();
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            c = c(hashCode, obj);
        }
        if (c >= 0) {
            int i3 = (c << 1) + 1;
            Object[] objArr = this.b;
            Object obj3 = objArr[i3];
            objArr[i3] = obj2;
            return obj3;
        }
        int i4 = ~c;
        int[] iArr = this.a;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            Object[] objArr2 = this.b;
            a(i5);
            if (i2 == this.c) {
                int[] iArr2 = this.a;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.b, 0, objArr2.length);
                }
                b(iArr, objArr2, i2);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i4 < i2) {
            int[] iArr3 = this.a;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.b;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.c - i4) << 1);
        }
        int i7 = this.c;
        if (i2 == i7) {
            int[] iArr4 = this.a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.b;
                int i8 = i4 << 1;
                objArr4[i8] = obj;
                objArr4[i8 + 1] = obj2;
                this.c = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object orDefault = getOrDefault(obj, null);
        if (orDefault == null) {
            return put(obj, obj2);
        }
        return orDefault;
    }

    public final boolean remove(Object obj, Object obj2) {
        int d2 = d(obj);
        if (d2 >= 0) {
            Object i = i(d2);
            if (obj2 == i || (obj2 != null && obj2.equals(i))) {
                h(d2);
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int d2 = d(obj);
        if (d2 >= 0) {
            Object i = i(d2);
            if (i == obj2 || (obj2 != null && obj2.equals(i))) {
                int i2 = (d2 << 1) + 1;
                Object[] objArr = this.b;
                Object obj4 = objArr[i2];
                objArr[i2] = obj3;
                return true;
            }
            return false;
        }
        return false;
    }

    public final int size() {
        return this.c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.c * 28);
        sb.append('{');
        for (int i = 0; i < this.c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object g2 = g(i);
            if (g2 != this) {
                sb.append(g2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object i2 = i(i);
            if (i2 != this) {
                sb.append(i2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public final Object remove(Object obj) {
        int d2 = d(obj);
        if (d2 >= 0) {
            return h(d2);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int d2 = d(obj);
        if (d2 >= 0) {
            int i = (d2 << 1) + 1;
            Object[] objArr = this.b;
            Object obj3 = objArr[i];
            objArr[i] = obj2;
            return obj3;
        }
        return null;
    }
}
