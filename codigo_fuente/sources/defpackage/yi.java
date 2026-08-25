package defpackage;

import java.util.Iterator;
import java.util.ListIterator;
/* renamed from: yi  reason: default package */
/* loaded from: classes.dex */
public final class yi extends zi {
    public final transient int c;
    public final transient int d;
    public final /* synthetic */ zi e;

    public yi(zi ziVar, int i, int i2) {
        this.e = ziVar;
        this.c = i;
        this.d = i2;
    }

    @Override // defpackage.wi
    public final Object[] b() {
        return this.e.b();
    }

    @Override // defpackage.wi
    public final int c() {
        return this.e.d() + this.c + this.d;
    }

    @Override // defpackage.wi
    public final int d() {
        return this.e.d() + this.c;
    }

    @Override // defpackage.zi, java.util.List
    /* renamed from: f */
    public final zi subList(int i, int i2) {
        s8.l(i, i2, this.d);
        int i3 = this.c;
        return this.e.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        s8.k(i, this.d);
        return this.e.get(i + this.c);
    }

    @Override // defpackage.zi, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // defpackage.zi, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // defpackage.zi, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return listIterator(i);
    }
}
