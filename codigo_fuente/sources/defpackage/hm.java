package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: hm  reason: default package */
/* loaded from: classes.dex */
public final class hm implements Iterator {
    public final int a;
    public int b;
    public int c;
    public boolean d = false;
    public final /* synthetic */ t6 e;

    public hm(t6 t6Var, int i) {
        this.e = t6Var;
        this.a = i;
        this.b = t6Var.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.c < this.b) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            Object b = this.e.b(this.c, this.a);
            this.c++;
            this.d = true;
            return b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.d) {
            int i = this.c - 1;
            this.c = i;
            this.b--;
            this.d = false;
            this.e.g(i);
            return;
        }
        throw new IllegalStateException();
    }
}
