package defpackage;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: fx  reason: default package */
/* loaded from: classes.dex */
public final class fx implements gb {
    public final float a;

    public fx(float f) {
        this.a = f;
    }

    @Override // defpackage.gb
    public final float a(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof fx) && this.a == ((fx) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
