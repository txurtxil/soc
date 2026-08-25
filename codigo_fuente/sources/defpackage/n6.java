package defpackage;
/* renamed from: n6  reason: default package */
/* loaded from: classes.dex */
public final class n6 {
    public final String a;
    public final String b;

    public n6(String str, String str2) {
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof n6) {
                n6 n6Var = (n6) obj;
                if (!this.a.equals(n6Var.a) || !qj.c(this.b, n6Var.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AppEntry(pkg=" + this.a + ", label=" + this.b + ")";
    }
}
