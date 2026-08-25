package defpackage;

import java.io.Serializable;
/* renamed from: pe  reason: default package */
/* loaded from: classes.dex */
public final class pe extends k implements oe, Serializable {
    public final Enum[] a;

    public pe(Enum[] enumArr) {
        enumArr.getClass();
        this.a = enumArr;
    }

    @Override // defpackage.k
    public final int a() {
        return this.a.length;
    }

    @Override // defpackage.k, java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        Enum r2;
        if (obj instanceof Enum) {
            Enum r3 = (Enum) obj;
            int ordinal = r3.ordinal();
            Enum[] enumArr = this.a;
            enumArr.getClass();
            if (ordinal >= 0 && ordinal < enumArr.length) {
                r2 = enumArr[ordinal];
            } else {
                r2 = null;
            }
            if (r2 == r3) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Enum[] enumArr = this.a;
        int length = enumArr.length;
        if (i >= 0 && i < length) {
            return enumArr[i];
        }
        c2.i("index: ", i, ", size: ", length);
        return null;
    }

    @Override // defpackage.k, java.util.List
    public final int indexOf(Object obj) {
        Enum r3;
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r4 = (Enum) obj;
        int ordinal = r4.ordinal();
        Enum[] enumArr = this.a;
        enumArr.getClass();
        if (ordinal >= 0 && ordinal < enumArr.length) {
            r3 = enumArr[ordinal];
        } else {
            r3 = null;
        }
        if (r3 != r4) {
            return -1;
        }
        return ordinal;
    }

    @Override // defpackage.k, java.util.List
    public final int lastIndexOf(Object obj) {
        Enum r3;
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r4 = (Enum) obj;
        int ordinal = r4.ordinal();
        Enum[] enumArr = this.a;
        enumArr.getClass();
        if (ordinal >= 0 && ordinal < enumArr.length) {
            r3 = enumArr[ordinal];
        } else {
            r3 = null;
        }
        if (r3 != r4) {
            return -1;
        }
        return ordinal;
    }
}
