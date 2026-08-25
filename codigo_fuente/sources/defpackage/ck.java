package defpackage;
/* renamed from: ck  reason: default package */
/* loaded from: classes.dex */
public final class ck {
    public final String a;
    public final boolean b;

    public ck(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ck) {
                ck ckVar = (ck) obj;
                if (!this.a.equals(ckVar.a) || this.b != ckVar.b) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "LaunchShortcut(pkg=" + this.a + ", enabled=" + this.b + ")";
    }
}
