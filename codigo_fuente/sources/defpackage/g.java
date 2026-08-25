package defpackage;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: g  reason: default package */
/* loaded from: classes.dex */
public final class g implements gb {
    public final float a;

    public g(float f) {
        this.a = f;
    }

    @Override // defpackage.gb
    public final float a(RectF rectF) {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof g) && this.a == ((g) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
