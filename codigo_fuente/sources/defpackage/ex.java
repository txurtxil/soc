package defpackage;

import java.util.Iterator;
/* renamed from: ex  reason: default package */
/* loaded from: classes.dex */
public final class ex extends aj {
    public static final Object[] f;
    public static final ex g;
    public final transient Object[] d;
    public final transient Object[] e;

    static {
        Object[] objArr = new Object[0];
        f = objArr;
        g = new ex(objArr, objArr);
    }

    public ex(Object[] objArr, Object[] objArr2) {
        this.d = objArr;
        this.e = objArr2;
    }

    @Override // defpackage.wi
    public final int a(Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, 0, 0);
        return 0;
    }

    @Override // defpackage.wi
    public final Object[] b() {
        return this.d;
    }

    @Override // defpackage.wi
    public final int c() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object obj2;
        if (obj != null) {
            Object[] objArr = this.e;
            if (objArr.length != 0) {
                Integer.rotateLeft((int) (obj.hashCode() * (-862048943)), 15);
                do {
                    obj2 = objArr[0];
                    if (obj2 == null) {
                    }
                } while (!obj2.equals(obj));
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.wi
    public final int d() {
        return 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zi ziVar = this.b;
        if (ziVar == null) {
            xi xiVar = zi.b;
            ziVar = dx.e;
            this.b = ziVar;
        }
        return ziVar.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 0;
    }
}
