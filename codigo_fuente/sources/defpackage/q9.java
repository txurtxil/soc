package defpackage;

import java.util.ArrayList;
import java.util.List;
/* renamed from: q9  reason: default package */
/* loaded from: classes.dex */
public final class q9 implements p9 {
    public final Class a;

    static {
        List y = w9.y(rg.class, ch.class, gh.class, hh.class, ih.class, jh.class, kh.class, lh.class, mh.class, nh.class, sg.class, tg.class, ug.class, vg.class, wg.class, xg.class, yg.class, zg.class, ah.class, bh.class, dh.class, eh.class, fh.class);
        ArrayList arrayList = new ArrayList(x9.z(y));
        int i = 0;
        for (Object obj : y) {
            int i2 = i + 1;
            if (i >= 0) {
                arrayList.add(new at((Class) obj, Integer.valueOf(i)));
                i = i2;
            } else {
                throw new ArithmeticException("Index overflow has happened.");
            }
        }
        pm.M(arrayList);
    }

    public q9(Class cls) {
        this.a = cls;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof q9) && qj.k(this).equals(qj.k((q9) obj))) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return qj.k(this).hashCode();
    }

    public final String toString() {
        return this.a + " (Kotlin reflection is not available)";
    }
}
