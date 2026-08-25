package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import java.util.ArrayList;
/* renamed from: r60  reason: default package */
/* loaded from: classes.dex */
public final class r60 {
    public static final Matrix p = new Matrix();
    public final Path a;
    public final Path b;
    public final Matrix c;
    public Paint d;
    public Paint e;
    public PathMeasure f;
    public final o60 g;
    public float h;
    public float i;
    public float j;
    public float k;
    public int l;
    public String m;
    public Boolean n;
    public final u6 o;

    /* JADX WARN: Type inference failed for: r0v4, types: [u6, j20] */
    public r60(r60 r60Var) {
        this.c = new Matrix();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = 255;
        this.m = null;
        this.n = null;
        ?? j20Var = new j20();
        this.o = j20Var;
        this.g = new o60(r60Var.g, j20Var);
        this.a = new Path(r60Var.a);
        this.b = new Path(r60Var.b);
        this.h = r60Var.h;
        this.i = r60Var.i;
        this.j = r60Var.j;
        this.k = r60Var.k;
        this.l = r60Var.l;
        this.m = r60Var.m;
        String str = r60Var.m;
        if (str != null) {
            j20Var.put(str, this);
        }
        this.n = r60Var.n;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(o60 o60Var, Matrix matrix, Canvas canvas, int i, int i2) {
        int i3;
        float f;
        float f2;
        int i4;
        float f3;
        Path.FillType fillType;
        Path.FillType fillType2;
        Matrix matrix2 = o60Var.a;
        ArrayList arrayList = o60Var.b;
        matrix2.set(matrix);
        Matrix matrix3 = o60Var.a;
        matrix3.preConcat(o60Var.j);
        canvas.save();
        char c = 0;
        int i5 = 0;
        while (i5 < arrayList.size()) {
            p60 p60Var = (p60) arrayList.get(i5);
            if (p60Var instanceof o60) {
                a((o60) p60Var, matrix3, canvas, i, i2);
            } else if (p60Var instanceof q60) {
                q60 q60Var = (q60) p60Var;
                float f4 = i / this.j;
                float f5 = i2 / this.k;
                float min = Math.min(f4, f5);
                Matrix matrix4 = this.c;
                matrix4.set(matrix3);
                matrix4.postScale(f4, f5);
                float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                matrix3.mapVectors(fArr);
                boolean z = c;
                i3 = i5;
                float f6 = (fArr[z ? 1 : 0] * fArr[3]) - (fArr[1] * fArr[2]);
                float max = Math.max((float) Math.hypot(fArr[c], fArr[1]), (float) Math.hypot(fArr[2], fArr[3]));
                if (max > 0.0f) {
                    f = Math.abs(f6) / max;
                } else {
                    f = 0.0f;
                }
                if (f != 0.0f) {
                    Path path = this.a;
                    path.reset();
                    jt[] jtVarArr = q60Var.a;
                    if (jtVarArr != null) {
                        jt.b(jtVarArr, path);
                    }
                    Path path2 = this.b;
                    path2.reset();
                    if (q60Var instanceof m60) {
                        if (q60Var.c == 0) {
                            fillType2 = Path.FillType.WINDING;
                        } else {
                            fillType2 = Path.FillType.EVEN_ODD;
                        }
                        path2.setFillType(fillType2);
                        path2.addPath(path, matrix4);
                        canvas.clipPath(path2);
                    } else {
                        n60 n60Var = (n60) q60Var;
                        float f7 = n60Var.i;
                        if (f7 != 0.0f || n60Var.j != 1.0f) {
                            float f8 = n60Var.k;
                            float f9 = (f7 + f8) % 1.0f;
                            float f10 = (n60Var.j + f8) % 1.0f;
                            if (this.f == null) {
                                this.f = new PathMeasure();
                            }
                            this.f.setPath(path, z);
                            float length = this.f.getLength();
                            float f11 = f9 * length;
                            float f12 = f10 * length;
                            path.reset();
                            int i6 = (f11 > f12 ? 1 : (f11 == f12 ? 0 : -1));
                            PathMeasure pathMeasure = this.f;
                            if (i6 > 0) {
                                pathMeasure.getSegment(f11, length, path, true);
                                f2 = 0.0f;
                                this.f.getSegment(0.0f, f12, path, true);
                            } else {
                                f2 = 0.0f;
                                pathMeasure.getSegment(f11, f12, path, true);
                            }
                            path.rLineTo(f2, f2);
                        }
                        path2.addPath(path, matrix4);
                        e4 e4Var = n60Var.f;
                        if (((Shader) e4Var.b) != null || e4Var.a != 0) {
                            if (this.e == null) {
                                i4 = 16777215;
                                Paint paint = new Paint(1);
                                this.e = paint;
                                paint.setStyle(Paint.Style.FILL);
                            } else {
                                i4 = 16777215;
                            }
                            Paint paint2 = this.e;
                            Shader shader = (Shader) e4Var.b;
                            if (shader != null) {
                                shader.setLocalMatrix(matrix4);
                                paint2.setShader(shader);
                                paint2.setAlpha(Math.round(n60Var.h * 255.0f));
                                f3 = 255.0f;
                            } else {
                                paint2.setShader(null);
                                paint2.setAlpha(255);
                                int i7 = e4Var.a;
                                float f13 = n60Var.h;
                                PorterDuff.Mode mode = u60.j;
                                f3 = 255.0f;
                                paint2.setColor((i7 & i4) | (((int) (Color.alpha(i7) * f13)) << 24));
                            }
                            paint2.setColorFilter(null);
                            if (n60Var.c == 0) {
                                fillType = Path.FillType.WINDING;
                            } else {
                                fillType = Path.FillType.EVEN_ODD;
                            }
                            path2.setFillType(fillType);
                            canvas.drawPath(path2, paint2);
                        } else {
                            f3 = 255.0f;
                            i4 = 16777215;
                        }
                        e4 e4Var2 = n60Var.d;
                        if (((Shader) e4Var2.b) != null || e4Var2.a != 0) {
                            if (this.d == null) {
                                Paint paint3 = new Paint(1);
                                this.d = paint3;
                                paint3.setStyle(Paint.Style.STROKE);
                            }
                            Paint paint4 = this.d;
                            Paint.Join join = n60Var.m;
                            if (join != null) {
                                paint4.setStrokeJoin(join);
                            }
                            Paint.Cap cap = n60Var.l;
                            if (cap != null) {
                                paint4.setStrokeCap(cap);
                            }
                            paint4.setStrokeMiter(n60Var.n);
                            Shader shader2 = (Shader) e4Var2.b;
                            if (shader2 != null) {
                                shader2.setLocalMatrix(matrix4);
                                paint4.setShader(shader2);
                                paint4.setAlpha(Math.round(n60Var.g * f3));
                            } else {
                                paint4.setShader(null);
                                paint4.setAlpha(255);
                                int i8 = e4Var2.a;
                                float f14 = n60Var.g;
                                PorterDuff.Mode mode2 = u60.j;
                                paint4.setColor((i8 & i4) | (((int) (Color.alpha(i8) * f14)) << 24));
                            }
                            paint4.setColorFilter(null);
                            paint4.setStrokeWidth(n60Var.e * min * f);
                            canvas.drawPath(path2, paint4);
                        }
                    }
                }
                i5 = i3 + 1;
                c = 0;
            }
            i3 = i5;
            i5 = i3 + 1;
            c = 0;
        }
        canvas.restore();
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.l;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i) {
        this.l = i;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [u6, j20] */
    public r60() {
        this.c = new Matrix();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = 255;
        this.m = null;
        this.n = null;
        this.o = new j20();
        this.g = new o60();
        this.a = new Path();
        this.b = new Path();
    }
}
