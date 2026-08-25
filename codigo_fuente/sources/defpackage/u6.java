package defpackage;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;
/* renamed from: u6  reason: default package */
/* loaded from: classes.dex */
public final class u6 extends j20 implements Map {
    public t6 h;

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.h == null) {
            this.h = new t6(0, this);
        }
        t6 t6Var = this.h;
        if (t6Var.a == null) {
            t6Var.a = new im(t6Var, 0);
        }
        return t6Var.a;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.h == null) {
            this.h = new t6(0, this);
        }
        t6 t6Var = this.h;
        if (t6Var.b == null) {
            t6Var.b = new im(t6Var, 1);
        }
        return t6Var.b;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.c;
        int i = this.c;
        int[] iArr = this.a;
        if (iArr.length < size) {
            Object[] objArr = this.b;
            a(size);
            if (this.c > 0) {
                System.arraycopy(iArr, 0, this.a, 0, i);
                System.arraycopy(objArr, 0, this.b, 0, i << 1);
            }
            j20.b(iArr, objArr, i);
        }
        if (this.c == i) {
            for (Map.Entry entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.h == null) {
            this.h = new t6(0, this);
        }
        t6 t6Var = this.h;
        if (t6Var.c == null) {
            t6Var.c = new km(t6Var);
        }
        return t6Var.c;
    }
}
