package defpackage;

import android.graphics.RectF;
import java.util.Arrays;
/* renamed from: a2  reason: default package */
/* loaded from: classes.dex */
public final class a2 implements gb {
    public final gb a;
    public final float b;

    public a2(float f, gb gbVar) {
        while (gbVar instanceof a2) {
            gbVar = ((a2) gbVar).a;
            f += ((a2) gbVar).b;
        }
        this.a = gbVar;
        this.b = f;
    }

    @Override // defpackage.gb
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.a.a(rectF) + this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a2)) {
            return false;
        }
        a2 a2Var = (a2) obj;
        if (this.a.equals(a2Var.a) && this.b == a2Var.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.b)});
    }
}
