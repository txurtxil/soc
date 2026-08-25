package defpackage;

import java.io.Serializable;
/* renamed from: cy  reason: default package */
/* loaded from: classes.dex */
public final class cy implements Serializable {
    public final Throwable a;

    public cy(Throwable th) {
        this.a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cy) {
            if (this.a.equals(((cy) obj).a)) {
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
        return "Failure(" + this.a + ')';
    }
}
