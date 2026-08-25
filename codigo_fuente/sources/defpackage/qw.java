package defpackage;

import android.util.SparseArray;
/* renamed from: qw  reason: default package */
/* loaded from: classes.dex */
public final class qw {
    public SparseArray a;
    public int b;

    public final pw a(int i) {
        SparseArray sparseArray = this.a;
        pw pwVar = (pw) sparseArray.get(i);
        if (pwVar == null) {
            pw pwVar2 = new pw();
            sparseArray.put(i, pwVar2);
            return pwVar2;
        }
        return pwVar;
    }
}
