package defpackage;

import java.util.HashSet;
/* renamed from: w8  reason: default package */
/* loaded from: classes.dex */
public final class w8 {
    public static final w8 b = new w8(new int[]{0, 1, 2, 3, 4, 5, 6, 7});
    public final HashSet a = new HashSet();

    static {
        new w8(new int[]{1, 2, 3, 4, 5, 6, 7});
    }

    public w8(int[] iArr) {
        for (int i : iArr) {
            this.a.add(Integer.valueOf(i));
        }
    }
}
