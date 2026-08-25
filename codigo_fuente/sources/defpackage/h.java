package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: h  reason: default package */
/* loaded from: classes.dex */
public class h implements Iterator {
    public int a;
    public final /* synthetic */ k b;

    public h(k kVar) {
        this.b = kVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.a < this.b.a()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            int i = this.a;
            this.a = i + 1;
            return this.b.get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
