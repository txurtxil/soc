package defpackage;

import android.view.DisplayCutout;
/* renamed from: rc  reason: default package */
/* loaded from: classes.dex */
public final class rc {
    public final DisplayCutout a;

    public rc(DisplayCutout displayCutout) {
        this.a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && rc.class == obj.getClass()) {
            return vr.a(this.a, ((rc) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        hashCode = this.a.hashCode();
        return hashCode;
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.a + "}";
    }
}
