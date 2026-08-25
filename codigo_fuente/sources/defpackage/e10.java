package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
/* renamed from: e10  reason: default package */
/* loaded from: classes.dex */
public final class e10 extends i10 {
    public final g10 c;
    public final float d;
    public final float e;

    public e10(g10 g10Var, float f, float f2) {
        this.c = g10Var;
        this.d = f;
        this.e = f2;
    }

    @Override // defpackage.i10
    public final void a(Matrix matrix, x00 x00Var, int i, Canvas canvas) {
        g10 g10Var = this.c;
        float f = g10Var.c;
        float f2 = this.e;
        float f3 = g10Var.b;
        float f4 = this.d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
        Matrix matrix2 = this.a;
        matrix2.set(matrix);
        matrix2.preTranslate(f4, f2);
        matrix2.preRotate(b());
        x00Var.getClass();
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int i2 = x00Var.f;
        int[] iArr = x00.i;
        iArr[0] = i2;
        iArr[1] = x00Var.e;
        iArr[2] = x00Var.d;
        Paint paint = x00Var.c;
        float f5 = rectF.left;
        paint.setShader(new LinearGradient(f5, rectF.top, f5, rectF.bottom, iArr, x00.j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        g10 g10Var = this.c;
        return (float) Math.toDegrees(Math.atan((g10Var.c - this.e) / (g10Var.b - this.d)));
    }
}
