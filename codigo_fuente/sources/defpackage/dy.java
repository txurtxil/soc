package defpackage;

import java.io.Serializable;
/* renamed from: dy  reason: default package */
/* loaded from: classes.dex */
public final class dy implements Serializable {
    public final Serializable a;

    public /* synthetic */ dy(Serializable serializable) {
        this.a = serializable;
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof cy) {
            return ((cy) obj).a;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof dy) {
            if (!this.a.equals(((dy) obj).a)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        Serializable serializable = this.a;
        if (serializable instanceof cy) {
            return ((cy) serializable).toString();
        }
        return "Success(" + serializable + ')';
    }
}
