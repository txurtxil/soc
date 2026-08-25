package defpackage;

import java.util.List;
import java.util.RandomAccess;
/* renamed from: j  reason: default package */
/* loaded from: classes.dex */
public final class j extends k implements RandomAccess {
    public final k a;
    public final int b;
    public final int c;

    public j(k kVar, int i, int i2) {
        this.a = kVar;
        this.b = i;
        qj.e(i, i2, kVar.a());
        this.c = i2 - i;
    }

    @Override // defpackage.k
    public final int a() {
        return this.c;
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            return this.a.get(this.b + i);
        }
        c2.i("index: ", i, ", size: ", i2);
        return null;
    }

    @Override // defpackage.k, java.util.List
    public final List subList(int i, int i2) {
        qj.e(i, i2, this.c);
        int i3 = this.b;
        return new j(this.a, i + i3, i3 + i2);
    }
}
