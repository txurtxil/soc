package defpackage;

import java.util.Objects;
/* renamed from: dx  reason: default package */
/* loaded from: classes.dex */
public final class dx extends zi {
    public static final dx e = new dx(0, new Object[0]);
    public final transient Object[] c;
    public final transient int d;

    public dx(int i, Object[] objArr) {
        this.c = objArr;
        this.d = i;
    }

    @Override // defpackage.zi, defpackage.wi
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.c;
        int i = this.d;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // defpackage.wi
    public final Object[] b() {
        return this.c;
    }

    @Override // defpackage.wi
    public final int c() {
        return this.d;
    }

    @Override // defpackage.wi
    public final int d() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i) {
        s8.k(i, this.d);
        Object obj = this.c[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }
}
