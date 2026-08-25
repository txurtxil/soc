package defpackage;

import android.util.SparseArray;
/* renamed from: up  reason: default package */
/* loaded from: classes.dex */
public final class up {
    public final SparseArray a;
    public ae b;

    public up(int i) {
        this.a = new SparseArray(i);
    }

    public final void a(ae aeVar, int i, int i2) {
        up upVar;
        int a = aeVar.a(i);
        SparseArray sparseArray = this.a;
        if (sparseArray == null) {
            upVar = null;
        } else {
            upVar = (up) sparseArray.get(a);
        }
        if (upVar == null) {
            upVar = new up(1);
            sparseArray.put(aeVar.a(i), upVar);
        }
        if (i2 > i) {
            upVar.a(aeVar, i + 1, i2);
        } else {
            upVar.b = aeVar;
        }
    }
}
