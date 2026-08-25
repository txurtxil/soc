package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
/* renamed from: jm  reason: default package */
/* loaded from: classes.dex */
public final class jm implements Iterator, Map.Entry {
    public int a;
    public final /* synthetic */ t6 d;
    public boolean c = false;
    public int b = -1;

    public jm(t6 t6Var) {
        this.d = t6Var;
        this.a = t6Var.d() - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this.c) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            int i = this.b;
            t6 t6Var = this.d;
            Object b = t6Var.b(i, 0);
            if (key != b && (key == null || !key.equals(b))) {
                return false;
            }
            Object value = entry.getValue();
            Object b2 = t6Var.b(this.b, 1);
            if (value != b2 && (value == null || !value.equals(b2))) {
                return false;
            }
            return true;
        }
        c2.g("This container does not support retaining Map.Entry objects");
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.c) {
            return this.d.b(this.b, 0);
        }
        c2.g("This container does not support retaining Map.Entry objects");
        return null;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.c) {
            return this.d.b(this.b, 1);
        }
        c2.g("This container does not support retaining Map.Entry objects");
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b < this.a) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        int i = 0;
        if (this.c) {
            int i2 = this.b;
            t6 t6Var = this.d;
            Object b = t6Var.b(i2, 0);
            Object b2 = t6Var.b(this.b, 1);
            if (b == null) {
                hashCode = 0;
            } else {
                hashCode = b.hashCode();
            }
            if (b2 != null) {
                i = b2.hashCode();
            }
            return hashCode ^ i;
        }
        c2.g("This container does not support retaining Map.Entry objects");
        return 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.b++;
            this.c = true;
            return this;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.c) {
            this.d.g(this.b);
            this.b--;
            this.a--;
            this.c = false;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.c) {
            int i = this.b;
            t6 t6Var = this.d;
            switch (t6Var.d) {
                case 0:
                    int i2 = (i << 1) + 1;
                    Object[] objArr = ((u6) t6Var.e).b;
                    Object obj2 = objArr[i2];
                    objArr[i2] = obj;
                    return obj2;
                default:
                    throw new UnsupportedOperationException("not a map");
            }
        }
        c2.g("This container does not support retaining Map.Entry objects");
        return null;
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
