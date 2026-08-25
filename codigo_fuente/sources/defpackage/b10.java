package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;
/* renamed from: b10  reason: default package */
/* loaded from: classes.dex */
public final class b10 {
    public final j10[] a = new j10[4];
    public final Matrix[] b = new Matrix[4];
    public final Matrix[] c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();
    public final Path f = new Path();
    public final j10 g = new j10();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public final boolean l = true;

    public b10() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new j10();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v5 */
    public final void a(z00 z00Var, float f, RectF rectF, c9 c9Var, Path path) {
        Matrix[] matrixArr;
        float[] fArr;
        int i;
        j10[] j10VarArr;
        Matrix[] matrixArr2;
        ?? r16;
        float f2;
        hd hdVar;
        boolean z;
        gb gbVar;
        k60 k60Var;
        int i2;
        path.rewind();
        Path path2 = this.e;
        path2.rewind();
        Path path3 = this.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i3 = 0;
        while (true) {
            matrixArr = this.c;
            fArr = this.h;
            j10VarArr = this.a;
            matrixArr2 = this.b;
            r16 = 0;
            if (i3 >= 4) {
                break;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        gbVar = z00Var.f;
                    } else {
                        gbVar = z00Var.e;
                    }
                } else {
                    gbVar = z00Var.h;
                }
            } else {
                gbVar = z00Var.g;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        k60Var = z00Var.b;
                    } else {
                        k60Var = z00Var.a;
                    }
                } else {
                    k60Var = z00Var.d;
                }
            } else {
                k60Var = z00Var.c;
            }
            j10 j10Var = j10VarArr[i3];
            k60Var.getClass();
            k60Var.s(j10Var, f, gbVar.a(rectF));
            int i4 = i3 + 1;
            float f3 = (i4 % 4) * 90;
            matrixArr2[i3].reset();
            PointF pointF = this.d;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        i2 = i3;
                        pointF.set(rectF.right, rectF.top);
                    } else {
                        i2 = i3;
                        pointF.set(rectF.left, rectF.top);
                    }
                } else {
                    i2 = i3;
                    pointF.set(rectF.left, rectF.bottom);
                }
            } else {
                i2 = i3;
                pointF.set(rectF.right, rectF.bottom);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f3);
            j10 j10Var2 = j10VarArr[i2];
            fArr[0] = j10Var2.b;
            fArr[1] = j10Var2.c;
            matrixArr2[i2].mapPoints(fArr);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr[0], fArr[1]);
            matrixArr[i2].preRotate(f3);
            i3 = i4;
        }
        int i5 = 0;
        for (i = 4; i5 < i; i = 4) {
            j10 j10Var3 = j10VarArr[i5];
            j10Var3.getClass();
            fArr[r16] = 0.0f;
            fArr[1] = j10Var3.a;
            matrixArr2[i5].mapPoints(fArr);
            if (i5 == 0) {
                path.moveTo(fArr[r16], fArr[1]);
            } else {
                path.lineTo(fArr[r16], fArr[1]);
            }
            j10VarArr[i5].b(matrixArr2[i5], path);
            if (c9Var != null) {
                j10 j10Var4 = j10VarArr[i5];
                Matrix matrix = matrixArr2[i5];
                en enVar = (en) c9Var.b;
                f2 = 0.0f;
                BitSet bitSet = enVar.d;
                j10Var4.getClass();
                bitSet.set(i5, (boolean) r16);
                i10[] i10VarArr = enVar.b;
                j10Var4.a(j10Var4.e);
                i10VarArr[i5] = new c10(new ArrayList(j10Var4.g), new Matrix(matrix));
            } else {
                f2 = 0.0f;
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            j10 j10Var5 = j10VarArr[i5];
            fArr[0] = j10Var5.b;
            fArr[1] = j10Var5.c;
            matrixArr2[i5].mapPoints(fArr);
            j10 j10Var6 = j10VarArr[i7];
            j10Var6.getClass();
            float[] fArr2 = this.i;
            fArr2[0] = f2;
            fArr2[1] = j10Var6.a;
            matrixArr2[i7].mapPoints(fArr2);
            Matrix[] matrixArr3 = matrixArr;
            j10[] j10VarArr2 = j10VarArr;
            float max = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, f2);
            j10 j10Var7 = j10VarArr2[i5];
            fArr[0] = j10Var7.b;
            fArr[1] = j10Var7.c;
            matrixArr2[i5].mapPoints(fArr);
            if (i5 != 1 && i5 != 3) {
                Math.abs(rectF.centerY() - fArr[1]);
            } else {
                Math.abs(rectF.centerX() - fArr[0]);
            }
            j10 j10Var8 = this.g;
            j10Var8.d(0.0f, 270.0f, 0.0f);
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        hdVar = z00Var.j;
                    } else {
                        hdVar = z00Var.i;
                    }
                } else {
                    hdVar = z00Var.l;
                }
            } else {
                hdVar = z00Var.k;
            }
            hdVar.getClass();
            j10Var8.c(max, 0.0f);
            Path path4 = this.j;
            path4.reset();
            j10Var8.b(matrixArr3[i5], path4);
            if (this.l && (b(path4, i5) || b(path4, i7))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = 0.0f;
                fArr[1] = j10Var8.a;
                matrixArr3[i5].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                j10Var8.b(matrixArr3[i5], path2);
            } else {
                j10Var8.b(matrixArr3[i5], path);
            }
            if (c9Var != null) {
                Matrix matrix2 = matrixArr3[i5];
                en enVar2 = (en) c9Var.b;
                z = false;
                enVar2.d.set(i5 + 4, false);
                i10[] i10VarArr2 = enVar2.c;
                j10Var8.a(j10Var8.e);
                i10VarArr2[i5] = new c10(new ArrayList(j10Var8.g), new Matrix(matrix2));
            } else {
                z = false;
            }
            i5 = i6;
            r16 = z;
            j10VarArr = j10VarArr2;
            matrixArr = matrixArr3;
        }
        path.close();
        path2.close();
        if (!path2.isEmpty()) {
            path.op(path2, Path.Op.UNION);
        }
    }

    public final boolean b(Path path, int i) {
        Path path2 = this.k;
        path2.reset();
        this.a[i].b(this.b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (!rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f)) {
            return true;
        }
        return false;
    }
}
