package defpackage;

import android.os.Build;
import android.text.TextUtils;
/* renamed from: lo  reason: default package */
/* loaded from: classes.dex */
public final class lo {
    public oo a;

    public lo(int i, int i2, String str) {
        if (str != null) {
            if (!TextUtils.isEmpty(str)) {
                if (Build.VERSION.SDK_INT >= 28) {
                    oo ooVar = new oo(i, i2, str);
                    y.o(i, i2, str);
                    this.a = ooVar;
                    return;
                }
                this.a = new oo(i, i2, str);
                return;
            }
            c2.n("packageName should be nonempty");
            throw null;
        }
        throw new NullPointerException("package shouldn't be null");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lo)) {
            return false;
        }
        return this.a.equals(((lo) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
