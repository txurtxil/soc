package defpackage;

import java.util.Collection;
import java.util.Iterator;
/* renamed from: km  reason: default package */
/* loaded from: classes.dex */
public final class km implements Collection {
    public final /* synthetic */ t6 a;

    public km(t6 t6Var) {
        this.a = t6Var;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.a.a();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        if (this.a.f(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        if (this.a.d() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new hm(this.a, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        t6 t6Var = this.a;
        int f = t6Var.f(obj);
        if (f >= 0) {
            t6Var.g(f);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        t6 t6Var = this.a;
        int d = t6Var.d();
        int i = 0;
        boolean z = false;
        while (i < d) {
            if (collection.contains(t6Var.b(i, 1))) {
                t6Var.g(i);
                i--;
                d--;
                z = true;
            }
            i++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        t6 t6Var = this.a;
        int d = t6Var.d();
        int i = 0;
        boolean z = false;
        while (i < d) {
            if (!collection.contains(t6Var.b(i, 1))) {
                t6Var.g(i);
                i--;
                d--;
                z = true;
            }
            i++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.a.d();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        t6 t6Var = this.a;
        int d = t6Var.d();
        Object[] objArr = new Object[d];
        for (int i = 0; i < d; i++) {
            objArr[i] = t6Var.b(i, 1);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.a.i(1, objArr);
    }
}
