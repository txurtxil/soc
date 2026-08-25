package defpackage;

import java.lang.reflect.Array;
import java.util.Map;
import java.util.Set;
/* renamed from: t6  reason: default package */
/* loaded from: classes.dex */
public final class t6 {
    public im a;
    public im b;
    public km c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    public /* synthetic */ t6(int i, Object obj) {
        this.d = i;
        this.e = obj;
    }

    public static boolean h(Set set, Object obj) {
        if (set != obj) {
            if (obj instanceof Set) {
                Set set2 = (Set) obj;
                try {
                    if (set.size() == set2.size()) {
                        if (set.containsAll(set2)) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final void a() {
        int i = this.d;
        Object obj = this.e;
        switch (i) {
            case 0:
                ((u6) obj).clear();
                return;
            default:
                ((v6) obj).clear();
                return;
        }
    }

    public final Object b(int i, int i2) {
        int i3 = this.d;
        Object obj = this.e;
        switch (i3) {
            case 0:
                return ((u6) obj).b[(i << 1) + i2];
            default:
                return ((v6) obj).b[i];
        }
    }

    public final Map c() {
        switch (this.d) {
            case 0:
                return (u6) this.e;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    public final int d() {
        int i = this.d;
        Object obj = this.e;
        switch (i) {
            case 0:
                return ((u6) obj).c;
            default:
                return ((v6) obj).c;
        }
    }

    public final int e(Object obj) {
        int i = this.d;
        Object obj2 = this.e;
        switch (i) {
            case 0:
                return ((u6) obj2).d(obj);
            default:
                v6 v6Var = (v6) obj2;
                if (obj == null) {
                    return v6Var.d();
                }
                return v6Var.c(obj.hashCode(), obj);
        }
    }

    public final int f(Object obj) {
        int i = this.d;
        Object obj2 = this.e;
        switch (i) {
            case 0:
                return ((u6) obj2).f(obj);
            default:
                v6 v6Var = (v6) obj2;
                if (obj == null) {
                    return v6Var.d();
                }
                return v6Var.c(obj.hashCode(), obj);
        }
    }

    public final void g(int i) {
        int i2 = this.d;
        Object obj = this.e;
        switch (i2) {
            case 0:
                ((u6) obj).h(i);
                return;
            default:
                ((v6) obj).e(i);
                return;
        }
    }

    public final Object[] i(int i, Object[] objArr) {
        int d = d();
        if (objArr.length < d) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), d);
        }
        for (int i2 = 0; i2 < d; i2++) {
            objArr[i2] = b(i2, i);
        }
        if (objArr.length > d) {
            objArr[d] = null;
        }
        return objArr;
    }
}
