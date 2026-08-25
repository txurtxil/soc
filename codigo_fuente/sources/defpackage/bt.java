package defpackage;
/* renamed from: bt  reason: default package */
/* loaded from: classes.dex */
public final class bt {
    public final Object a;
    public final Object b;

    public bt(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bt)) {
            return false;
        }
        bt btVar = (bt) obj;
        if (!vr.a(btVar.a, this.a) || !vr.a(btVar.b, this.b)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        Object obj = this.a;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        Object obj2 = this.b;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return "Pair{" + this.a + " " + this.b + "}";
    }
}
