package defpackage;

import java.util.Collection;
/* renamed from: x9  reason: default package */
/* loaded from: classes.dex */
public abstract class x9 extends w9 {
    public static int z(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
