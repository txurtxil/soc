package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: im  reason: default package */
/* loaded from: classes.dex */
public final class im implements Set {
    public final /* synthetic */ int a;
    public final /* synthetic */ t6 b;

    public /* synthetic */ im(t6 t6Var, int i) {
        this.a = i;
        this.b = t6Var;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.a) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.a) {
            case 0:
                t6 t6Var = this.b;
                int d = t6Var.d();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    switch (t6Var.d) {
                        case 0:
                            ((u6) t6Var.e).put(key, value);
                            break;
                        default:
                            ((v6) t6Var.e).add(key);
                            break;
                    }
                }
                if (d != t6Var.d()) {
                    return true;
                }
                return false;
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        int i = this.a;
        t6 t6Var = this.b;
        switch (i) {
            case 0:
                t6Var.a();
                return;
            default:
                t6Var.a();
                return;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        int i = this.a;
        t6 t6Var = this.b;
        switch (i) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                int e = t6Var.e(entry.getKey());
                if (e < 0) {
                    return false;
                }
                Object b = t6Var.b(e, 1);
                Object value = entry.getValue();
                if (b != value && (b == null || !b.equals(value))) {
                    return false;
                }
                return true;
            default:
                if (t6Var.e(obj) < 0) {
                    return false;
                }
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.a) {
            case 0:
                for (Object obj : collection) {
                    if (!contains(obj)) {
                        return false;
                    }
                }
                return true;
            default:
                Map c = this.b.c();
                for (Object obj2 : collection) {
                    if (!c.containsKey(obj2)) {
                        return false;
                    }
                }
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.a) {
            case 0:
                return t6.h(this, obj);
            default:
                return t6.h(this, obj);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = this.a;
        t6 t6Var = this.b;
        switch (i) {
            case 0:
                int i2 = 0;
                for (int d = t6Var.d() - 1; d >= 0; d--) {
                    Object b = t6Var.b(d, 0);
                    Object b2 = t6Var.b(d, 1);
                    if (b == null) {
                        hashCode = 0;
                    } else {
                        hashCode = b.hashCode();
                    }
                    if (b2 == null) {
                        hashCode2 = 0;
                    } else {
                        hashCode2 = b2.hashCode();
                    }
                    i2 += hashCode ^ hashCode2;
                }
                return i2;
            default:
                int i3 = 0;
                for (int d2 = t6Var.d() - 1; d2 >= 0; d2--) {
                    Object b3 = t6Var.b(d2, 0);
                    if (b3 == null) {
                        hashCode3 = 0;
                    } else {
                        hashCode3 = b3.hashCode();
                    }
                    i3 += hashCode3;
                }
                return i3;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        int i = this.a;
        t6 t6Var = this.b;
        switch (i) {
            case 0:
                if (t6Var.d() != 0) {
                    return false;
                }
                return true;
            default:
                if (t6Var.d() != 0) {
                    return false;
                }
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i = this.a;
        t6 t6Var = this.b;
        switch (i) {
            case 0:
                return new jm(t6Var);
            default:
                return new hm(t6Var, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                t6 t6Var = this.b;
                int e = t6Var.e(obj);
                if (e >= 0) {
                    t6Var.g(e);
                    return true;
                }
                return false;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                Map c = this.b.c();
                int size = c.size();
                for (Object obj : collection) {
                    c.remove(obj);
                }
                if (size != c.size()) {
                    return true;
                }
                return false;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                Map c = this.b.c();
                int size = c.size();
                Iterator it = c.keySet().iterator();
                while (it.hasNext()) {
                    if (!collection.contains(it.next())) {
                        it.remove();
                    }
                }
                if (size != c.size()) {
                    return true;
                }
                return false;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        int i = this.a;
        t6 t6Var = this.b;
        switch (i) {
            case 0:
                return t6Var.d();
            default:
                return t6Var.d();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                t6 t6Var = this.b;
                int d = t6Var.d();
                Object[] objArr = new Object[d];
                for (int i = 0; i < d; i++) {
                    objArr[i] = t6Var.b(i, 0);
                }
                return objArr;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return this.b.i(0, objArr);
        }
    }
}
