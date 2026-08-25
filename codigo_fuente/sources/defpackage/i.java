package defpackage;

import java.util.ListIterator;
import java.util.NoSuchElementException;
/* renamed from: i  reason: default package */
/* loaded from: classes.dex */
public final class i extends h implements ListIterator {
    public final /* synthetic */ k c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(k kVar, int i) {
        super(kVar);
        this.c = kVar;
        int a = kVar.a();
        if (i >= 0 && i <= a) {
            this.a = i;
        } else {
            c2.i("index: ", i, ", size: ", a);
            throw null;
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.a > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.a;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i = this.a - 1;
            this.a = i;
            return this.c.get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.a - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
