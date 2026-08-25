package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
/* renamed from: d10  reason: default package */
/* loaded from: classes.dex */
public final class d10 extends i10 {
    public final f10 c;

    public d10(f10 f10Var) {
        this.c = f10Var;
    }

    @Override // defpackage.i10
    public final void a(Matrix matrix, x00 x00Var, int i, Canvas canvas) {
        boolean z;
        f10 f10Var = this.c;
        float f = f10Var.f;
        float f2 = f10Var.g;
        RectF rectF = new RectF(f10Var.b, f10Var.c, f10Var.d, f10Var.e);
        Paint paint = x00Var.b;
        if (f2 < 0.0f) {
            z = true;
        } else {
            z = false;
        }
        Path path = x00Var.g;
        int[] iArr = x00.k;
        if (z) {
            iArr[0] = 0;
            iArr[1] = x00Var.f;
            iArr[2] = x00Var.e;
            iArr[3] = x00Var.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            iArr[0] = 0;
            iArr[1] = x00Var.d;
            iArr[2] = x00Var.e;
            iArr[3] = x00Var.f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i / width);
        float[] fArr = x00.l;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, x00Var.h);
        }
        canvas.drawArc(rectF, f, f2, true, paint);
        canvas.restore();
    }
}
