package defpackage;

import java.util.Objects;
/* renamed from: u10  reason: default package */
/* loaded from: classes.dex */
public final class u10 {
    public final Object a;

    public u10(Object obj) {
        this.a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && u10.class == obj.getClass() && Objects.equals(this.a, ((u10) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, null);
    }
}
