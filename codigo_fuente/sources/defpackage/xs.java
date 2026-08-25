package defpackage;
/* renamed from: xs  reason: default package */
/* loaded from: classes.dex */
public final class xs implements p9 {
    public final Class a;

    public xs(Class cls) {
        this.a = cls;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof xs) {
            if (this.a.equals(((xs) obj).a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a + " (Kotlin reflection is not available)";
    }
}
