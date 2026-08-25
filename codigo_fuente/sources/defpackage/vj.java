package defpackage;

import java.util.NoSuchElementException;
/* renamed from: vj  reason: default package */
/* loaded from: classes.dex */
public final class vj extends g60 {
    public boolean a;
    public final /* synthetic */ Object b;

    public vj(Class cls) {
        this.b = cls;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.a) {
            this.a = true;
            return this.b;
        }
        throw new NoSuchElementException();
    }
}
