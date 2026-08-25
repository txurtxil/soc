package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import java.util.BitSet;
/* renamed from: en  reason: default package */
/* loaded from: classes.dex */
public final class en extends Drawable implements k10 {
    public static final Paint x;
    public dn a;
    public final i10[] b;
    public final i10[] c;
    public final BitSet d;
    public boolean e;
    public final Matrix f;
    public final Path g;
    public final Path h;
    public final RectF i;
    public final RectF j;
    public final Region k;
    public final Region l;
    public z00 m;
    public final Paint n;
    public final Paint o;
    public final x00 q;
    public final c9 r;
    public final b10 s;
    public PorterDuffColorFilter t;
    public PorterDuffColorFilter u;
    public final RectF v;
    public final boolean w;

    static {
        Paint paint = new Paint(1);
        x = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public en(dn dnVar) {
        b10 b10Var;
        this.b = new i10[4];
        this.c = new i10[4];
        this.d = new BitSet(8);
        this.f = new Matrix();
        this.g = new Path();
        this.h = new Path();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new Region();
        this.l = new Region();
        Paint paint = new Paint(1);
        this.n = paint;
        Paint paint2 = new Paint(1);
        this.o = paint2;
        this.q = new x00();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            b10Var = a10.a;
        } else {
            b10Var = new b10();
        }
        this.s = b10Var;
        this.v = new RectF();
        this.w = true;
        this.a = dnVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        j();
        i(getState());
        this.r = new c9(18, this);
    }

    public final void a(RectF rectF, Path path) {
        dn dnVar = this.a;
        this.s.a(dnVar.a, dnVar.i, rectF, this.r, path);
        if (this.a.h != 1.0f) {
            Matrix matrix = this.f;
            matrix.reset();
            float f = this.a.h;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.v, true);
    }

    public final int b(int i) {
        float f;
        float f2;
        int i2;
        dn dnVar = this.a;
        float f3 = dnVar.m + 0.0f + dnVar.l;
        md mdVar = dnVar.b;
        if (mdVar != null && mdVar.a && da.d(i, 255) == mdVar.d) {
            if (mdVar.e > 0.0f && f3 > 0.0f) {
                f2 = Math.min(((((float) Math.log1p(f3 / f)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
            } else {
                f2 = 0.0f;
            }
            int alpha = Color.alpha(i);
            int w = s8.w(da.d(i, 255), mdVar.b, f2);
            if (f2 > 0.0f && (i2 = mdVar.c) != 0) {
                w = da.b(da.d(i2, md.f), w);
            }
            return da.d(w, alpha);
        }
        return i;
    }

    public final void c(Canvas canvas) {
        if (this.d.cardinality() > 0) {
            Log.w("en", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i = this.a.o;
        Path path = this.g;
        x00 x00Var = this.q;
        if (i != 0) {
            canvas.drawPath(path, x00Var.a);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            i10 i10Var = this.b[i2];
            int i3 = this.a.n;
            Matrix matrix = i10.b;
            i10Var.a(matrix, x00Var, i3, canvas);
            this.c[i2].a(matrix, x00Var, this.a.n, canvas);
        }
        if (this.w) {
            int sin = (int) (Math.sin(Math.toRadians(0.0d)) * this.a.o);
            int cos = (int) (Math.cos(Math.toRadians(0.0d)) * this.a.o);
            canvas.translate(-sin, -cos);
            canvas.drawPath(path, x);
            canvas.translate(sin, cos);
        }
    }

    public final RectF d() {
        Rect bounds = getBounds();
        RectF rectF = this.i;
        rectF.set(bounds);
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        PorterDuffColorFilter porterDuffColorFilter = this.t;
        Paint paint = this.n;
        paint.setColorFilter(porterDuffColorFilter);
        int alpha = paint.getAlpha();
        int i = this.a.k;
        paint.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.u;
        Paint paint2 = this.o;
        paint2.setColorFilter(porterDuffColorFilter2);
        paint2.setStrokeWidth(this.a.j);
        int alpha2 = paint2.getAlpha();
        int i2 = this.a.k;
        paint2.setAlpha(((i2 + (i2 >>> 7)) * alpha2) >>> 8);
        boolean z = this.e;
        RectF rectF = this.j;
        Path path = this.h;
        Path path2 = this.g;
        if (z) {
            if (e()) {
                f2 = paint2.getStrokeWidth() / 2.0f;
            } else {
                f2 = 0.0f;
            }
            float f4 = -f2;
            z00 z00Var = this.a.a;
            y00 d = z00Var.d();
            gb gbVar = z00Var.e;
            if (!(gbVar instanceof fx)) {
                gbVar = new a2(f4, gbVar);
            }
            d.e = gbVar;
            gb gbVar2 = z00Var.f;
            if (!(gbVar2 instanceof fx)) {
                gbVar2 = new a2(f4, gbVar2);
            }
            d.f = gbVar2;
            gb gbVar3 = z00Var.h;
            if (!(gbVar3 instanceof fx)) {
                gbVar3 = new a2(f4, gbVar3);
            }
            d.h = gbVar3;
            gb gbVar4 = z00Var.g;
            if (!(gbVar4 instanceof fx)) {
                gbVar4 = new a2(f4, gbVar4);
            }
            d.g = gbVar4;
            z00 a = d.a();
            this.m = a;
            float f5 = this.a.i;
            rectF.set(d());
            if (e()) {
                f3 = paint2.getStrokeWidth() / 2.0f;
            } else {
                f3 = 0.0f;
            }
            rectF.inset(f3, f3);
            this.s.a(a, f5, rectF, null, path);
            a(d(), path2);
            this.e = false;
        }
        dn dnVar = this.a;
        dnVar.getClass();
        if (dnVar.n > 0 && !this.a.a.c(d()) && !path2.isConvex() && Build.VERSION.SDK_INT < 29) {
            canvas.save();
            canvas.translate((int) (this.a.o * Math.sin(Math.toRadians(0.0d))), (int) (Math.cos(Math.toRadians(0.0d)) * this.a.o));
            if (!this.w) {
                c(canvas);
                canvas.restore();
            } else {
                RectF rectF2 = this.v;
                int width = (int) (rectF2.width() - getBounds().width());
                int height = (int) (rectF2.height() - getBounds().height());
                if (width >= 0 && height >= 0) {
                    Bitmap createBitmap = Bitmap.createBitmap((this.a.n * 2) + ((int) rectF2.width()) + width, (this.a.n * 2) + ((int) rectF2.height()) + height, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(createBitmap);
                    float f6 = (getBounds().left - this.a.n) - width;
                    float f7 = (getBounds().top - this.a.n) - height;
                    canvas2.translate(-f6, -f7);
                    c(canvas2);
                    canvas.drawBitmap(createBitmap, f6, f7, (Paint) null);
                    createBitmap.recycle();
                    canvas.restore();
                } else {
                    c2.g("Invalid shadow bounds. Check that the treatments result in a valid path.");
                    return;
                }
            }
        }
        dn dnVar2 = this.a;
        Paint.Style style = dnVar2.p;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            z00 z00Var2 = dnVar2.a;
            RectF d2 = d();
            if (z00Var2.c(d2)) {
                float a2 = z00Var2.f.a(d2) * this.a.i;
                canvas.drawRoundRect(d2, a2, a2, paint);
            } else {
                canvas.drawPath(path2, paint);
            }
        }
        if (e()) {
            z00 z00Var3 = this.m;
            rectF.set(d());
            if (e()) {
                f = paint2.getStrokeWidth() / 2.0f;
            } else {
                f = 0.0f;
            }
            rectF.inset(f, f);
            if (z00Var3.c(rectF)) {
                float a3 = z00Var3.f.a(rectF) * this.a.i;
                canvas.drawRoundRect(rectF, a3, a3, paint2);
            } else {
                canvas.drawPath(path, paint2);
            }
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    public final boolean e() {
        Paint.Style style = this.a.p;
        if ((style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.o.getStrokeWidth() > 0.0f) {
            return true;
        }
        return false;
    }

    public final void f(Context context) {
        this.a.b = new md(context);
        k();
    }

    public final void g(float f) {
        dn dnVar = this.a;
        if (dnVar.m != f) {
            dnVar.m = f;
            k();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.a.k;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.a.getClass();
        if (this.a.a.c(d())) {
            outline.setRoundRect(getBounds(), this.a.a.e.a(d()) * this.a.i);
            return;
        }
        RectF d = d();
        Path path = this.g;
        a(d, path);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            outline.setPath(path);
        } else if (i >= 29) {
            try {
                outline.setConvexPath(path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            outline.setConvexPath(path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.a.g;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.k;
        region.set(bounds);
        RectF d = d();
        Path path = this.g;
        a(d, path);
        Region region2 = this.l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final void h(ColorStateList colorStateList) {
        dn dnVar = this.a;
        if (dnVar.c != colorStateList) {
            dnVar.c = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean i(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.a.c != null && color2 != (colorForState2 = this.a.c.getColorForState(iArr, (color2 = (paint2 = this.n).getColor())))) {
            paint2.setColor(colorForState2);
            z = true;
        } else {
            z = false;
        }
        if (this.a.d != null && color != (colorForState = this.a.d.getColorForState(iArr, (color = (paint = this.o).getColor())))) {
            paint.setColor(colorForState);
            return true;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        if (!super.isStateful()) {
            ColorStateList colorStateList = this.a.e;
            if (colorStateList == null || !colorStateList.isStateful()) {
                this.a.getClass();
                ColorStateList colorStateList2 = this.a.d;
                if (colorStateList2 == null || !colorStateList2.isStateful()) {
                    ColorStateList colorStateList3 = this.a.c;
                    if (colorStateList3 == null || !colorStateList3.isStateful()) {
                        return false;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final boolean j() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.t;
        PorterDuffColorFilter porterDuffColorFilter3 = this.u;
        dn dnVar = this.a;
        ColorStateList colorStateList = dnVar.e;
        PorterDuff.Mode mode = dnVar.f;
        if (colorStateList != null && mode != null) {
            porterDuffColorFilter = new PorterDuffColorFilter(b(colorStateList.getColorForState(getState(), 0)), mode);
        } else {
            int color = this.n.getColor();
            int b = b(color);
            if (b != color) {
                porterDuffColorFilter = new PorterDuffColorFilter(b, PorterDuff.Mode.SRC_IN);
            } else {
                porterDuffColorFilter = null;
            }
        }
        this.t = porterDuffColorFilter;
        this.a.getClass();
        this.u = null;
        this.a.getClass();
        if (vr.a(porterDuffColorFilter2, this.t) && vr.a(porterDuffColorFilter3, this.u)) {
            return false;
        }
        return true;
    }

    public final void k() {
        dn dnVar = this.a;
        float f = dnVar.m + 0.0f;
        dnVar.n = (int) Math.ceil(0.75f * f);
        this.a.o = (int) Math.ceil(f * 0.25f);
        j();
        super.invalidateSelf();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.graphics.drawable.Drawable$ConstantState, dn] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        dn dnVar = this.a;
        ?? constantState = new Drawable.ConstantState();
        constantState.c = null;
        constantState.d = null;
        constantState.e = null;
        constantState.f = PorterDuff.Mode.SRC_IN;
        constantState.g = null;
        constantState.h = 1.0f;
        constantState.i = 1.0f;
        constantState.k = 255;
        constantState.l = 0.0f;
        constantState.m = 0.0f;
        constantState.n = 0;
        constantState.o = 0;
        constantState.p = Paint.Style.FILL_AND_STROKE;
        constantState.a = dnVar.a;
        constantState.b = dnVar.b;
        constantState.j = dnVar.j;
        constantState.c = dnVar.c;
        constantState.d = dnVar.d;
        constantState.f = dnVar.f;
        constantState.e = dnVar.e;
        constantState.k = dnVar.k;
        constantState.h = dnVar.h;
        constantState.o = dnVar.o;
        constantState.i = dnVar.i;
        constantState.l = dnVar.l;
        constantState.m = dnVar.m;
        constantState.n = dnVar.n;
        constantState.p = dnVar.p;
        Rect rect = dnVar.g;
        if (rect != null) {
            constantState.g = new Rect(rect);
        }
        this.a = constantState;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        boolean i = i(iArr);
        boolean j = j();
        if (!i && !j) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        dn dnVar = this.a;
        if (dnVar.k != i) {
            dnVar.k = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.a.getClass();
        super.invalidateSelf();
    }

    @Override // defpackage.k10
    public final void setShapeAppearanceModel(z00 z00Var) {
        this.a.a = z00Var;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.a.e = colorStateList;
        j();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        dn dnVar = this.a;
        if (dnVar.f != mode) {
            dnVar.f = mode;
            j();
            super.invalidateSelf();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.graphics.drawable.Drawable$ConstantState, dn] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public en(defpackage.z00 r4) {
        /*
            r3 = this;
            dn r0 = new dn
            r0.<init>()
            r1 = 0
            r0.c = r1
            r0.d = r1
            r0.e = r1
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.SRC_IN
            r0.f = r2
            r0.g = r1
            r2 = 1065353216(0x3f800000, float:1.0)
            r0.h = r2
            r0.i = r2
            r2 = 255(0xff, float:3.57E-43)
            r0.k = r2
            r2 = 0
            r0.l = r2
            r0.m = r2
            r2 = 0
            r0.n = r2
            r0.o = r2
            android.graphics.Paint$Style r2 = android.graphics.Paint.Style.FILL_AND_STROKE
            r0.p = r2
            r0.a = r4
            r0.b = r1
            r3.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.en.<init>(z00):void");
    }
}
