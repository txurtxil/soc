package defpackage;

import android.text.TextUtils;
import androidx.preference.Preference;
/* renamed from: iu  reason: default package */
/* loaded from: classes.dex */
public final class iu {
    public final int a;
    public final int b;
    public final String c;

    public iu(Preference preference) {
        this.c = preference.getClass().getName();
        this.a = preference.F;
        this.b = preference.G;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof iu) {
            iu iuVar = (iu) obj;
            if (this.a == iuVar.a && this.b == iuVar.b && TextUtils.equals(this.c, iuVar.c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((((527 + this.a) * 31) + this.b) * 31);
    }
}
