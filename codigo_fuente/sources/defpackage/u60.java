package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.car.app.navigation.model.Maneuver;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: u60  reason: default package */
/* loaded from: classes.dex */
public final class u60 extends l60 {
    public static final PorterDuff.Mode j = PorterDuff.Mode.SRC_IN;
    public s60 b;
    public PorterDuffColorFilter c;
    public ColorFilter d;
    public boolean e;
    public boolean f;
    public final float[] g;
    public final Matrix h;
    public final Rect i;

    /* JADX WARN: Type inference failed for: r0v5, types: [android.graphics.drawable.Drawable$ConstantState, s60] */
    public u60() {
        this.f = true;
        this.g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        ?? constantState = new Drawable.ConstantState();
        constantState.c = null;
        constantState.d = j;
        constantState.b = new r60();
        this.b = constantState;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList != null && mode != null) {
            return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.a;
        if (drawable != null) {
            tc.b(drawable);
            return false;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.i;
        copyBounds(rect);
        if (rect.width() > 0 && rect.height() > 0) {
            ColorFilter colorFilter = this.d;
            if (colorFilter == null) {
                colorFilter = this.c;
            }
            Matrix matrix = this.h;
            canvas.getMatrix(matrix);
            float[] fArr = this.g;
            matrix.getValues(fArr);
            float abs = Math.abs(fArr[0]);
            float abs2 = Math.abs(fArr[4]);
            float abs3 = Math.abs(fArr[1]);
            float abs4 = Math.abs(fArr[3]);
            if (abs3 != 0.0f || abs4 != 0.0f) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int min = Math.min(2048, (int) (rect.width() * abs));
            int min2 = Math.min(2048, (int) (rect.height() * abs2));
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                canvas.translate(rect.left, rect.top);
                if (isAutoMirrored() && uc.a(this) == 1) {
                    canvas.translate(rect.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                rect.offsetTo(0, 0);
                s60 s60Var = this.b;
                Bitmap bitmap = s60Var.f;
                if (bitmap == null || min != bitmap.getWidth() || min2 != s60Var.f.getHeight()) {
                    s60Var.f = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
                    s60Var.k = true;
                }
                boolean z = this.f;
                s60 s60Var2 = this.b;
                if (!z) {
                    s60Var2.f.eraseColor(0);
                    Canvas canvas2 = new Canvas(s60Var2.f);
                    r60 r60Var = s60Var2.b;
                    r60Var.a(r60Var.g, r60.p, canvas2, min, min2);
                } else if (s60Var2.k || s60Var2.g != s60Var2.c || s60Var2.h != s60Var2.d || s60Var2.j != s60Var2.e || s60Var2.i != s60Var2.b.getRootAlpha()) {
                    s60 s60Var3 = this.b;
                    s60Var3.f.eraseColor(0);
                    Canvas canvas3 = new Canvas(s60Var3.f);
                    r60 r60Var2 = s60Var3.b;
                    r60Var2.a(r60Var2.g, r60.p, canvas3, min, min2);
                    s60 s60Var4 = this.b;
                    s60Var4.g = s60Var4.c;
                    s60Var4.h = s60Var4.d;
                    s60Var4.i = s60Var4.b.getRootAlpha();
                    s60Var4.j = s60Var4.e;
                    s60Var4.k = false;
                }
                s60 s60Var5 = this.b;
                if (s60Var5.b.getRootAlpha() >= 255 && colorFilter == null) {
                    paint = null;
                } else {
                    if (s60Var5.l == null) {
                        Paint paint2 = new Paint();
                        s60Var5.l = paint2;
                        paint2.setFilterBitmap(true);
                    }
                    s60Var5.l.setAlpha(s60Var5.b.getRootAlpha());
                    s60Var5.l.setColorFilter(colorFilter);
                    paint = s60Var5.l;
                }
                canvas.drawBitmap(s60Var5.f, (Rect) null, rect, paint);
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return sc.a(drawable);
        }
        return this.b.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.b.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return tc.c(drawable);
        }
        return this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.a != null) {
            return new t60(this.a.getConstantState());
        }
        this.b.a = getChangingConfigurations();
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.b.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.b.b.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v13, types: [n60, q60, java.lang.Object] */
    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int i;
        char c;
        int i2;
        Paint.Cap cap;
        Paint.Join join;
        Drawable drawable = this.a;
        if (drawable != null) {
            tc.d(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        s60 s60Var = this.b;
        s60Var.b = new r60();
        TypedArray l = gt.l(resources, theme, attributeSet, em.d);
        s60 s60Var2 = this.b;
        r60 r60Var = s60Var2.b;
        int i3 = !gt.j(xmlPullParser, "tintMode") ? -1 : l.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (i3 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i3 != 5) {
            if (i3 != 9) {
                switch (i3) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case Maneuver.TYPE_ON_RAMP_NORMAL_LEFT /* 15 */:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        s60Var2.d = mode;
        ColorStateList colorStateList = null;
        int i4 = 1;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tint") != null) {
            TypedValue typedValue = new TypedValue();
            l.getValue(1, typedValue);
            int i5 = typedValue.type;
            if (i5 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            } else if (i5 >= 28 && i5 <= 31) {
                colorStateList = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = l.getResources();
                int resourceId = l.getResourceId(1, 0);
                ThreadLocal threadLocal = ca.a;
                try {
                    colorStateList = ca.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
                }
            }
        }
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList2 != null) {
            s60Var2.c = colorStateList2;
        }
        boolean z = s60Var2.e;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z = l.getBoolean(5, z);
        }
        s60Var2.e = z;
        float f = r60Var.j;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f = l.getFloat(7, f);
        }
        r60Var.j = f;
        float f2 = r60Var.k;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f2 = l.getFloat(8, f2);
        }
        r60Var.k = f2;
        if (r60Var.j <= 0.0f) {
            throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (f2 > 0.0f) {
            r60Var.h = l.getDimension(3, r60Var.h);
            float dimension = l.getDimension(2, r60Var.i);
            r60Var.i = dimension;
            if (r60Var.h <= 0.0f) {
                throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (dimension > 0.0f) {
                float alpha = r60Var.getAlpha();
                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
                    alpha = l.getFloat(4, alpha);
                }
                r60Var.setAlpha(alpha);
                String string = l.getString(0);
                if (string != null) {
                    r60Var.m = string;
                    r60Var.o.put(string, r60Var);
                }
                l.recycle();
                s60Var.a = getChangingConfigurations();
                s60Var.k = true;
                s60 s60Var3 = this.b;
                r60 r60Var2 = s60Var3.b;
                ArrayDeque arrayDeque = new ArrayDeque();
                o60 o60Var = r60Var2.g;
                u6 u6Var = r60Var2.o;
                arrayDeque.push(o60Var);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z2 = true;
                while (eventType != i4 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        o60 o60Var2 = (o60) arrayDeque.peek();
                        i = depth;
                        if ("path".equals(name)) {
                            ?? q60Var = new q60();
                            q60Var.e = 0.0f;
                            q60Var.g = 1.0f;
                            q60Var.h = 1.0f;
                            q60Var.i = 0.0f;
                            q60Var.j = 1.0f;
                            q60Var.k = 0.0f;
                            Paint.Cap cap2 = Paint.Cap.BUTT;
                            q60Var.l = cap2;
                            Paint.Join join2 = Paint.Join.MITER;
                            q60Var.m = join2;
                            q60Var.n = 4.0f;
                            TypedArray l2 = gt.l(resources, theme, attributeSet, em.f);
                            if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                                String string2 = l2.getString(0);
                                if (string2 != null) {
                                    q60Var.b = string2;
                                }
                                String string3 = l2.getString(2);
                                if (string3 != null) {
                                    q60Var.a = qj.h(string3);
                                }
                                q60Var.f = gt.h(l2, xmlPullParser, theme, "fillColor", 1);
                                float f3 = q60Var.h;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null) {
                                    f3 = l2.getFloat(12, f3);
                                }
                                q60Var.h = f3;
                                int i6 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? l2.getInt(8, -1) : -1;
                                Paint.Cap cap3 = q60Var.l;
                                if (i6 == 0) {
                                    cap = cap2;
                                } else if (i6 != 1) {
                                    cap = i6 != 2 ? cap3 : Paint.Cap.SQUARE;
                                } else {
                                    cap = Paint.Cap.ROUND;
                                }
                                q60Var.l = cap;
                                int i7 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? l2.getInt(9, -1) : -1;
                                Paint.Join join3 = q60Var.m;
                                if (i7 == 0) {
                                    join = join2;
                                } else if (i7 != 1) {
                                    join = i7 != 2 ? join3 : Paint.Join.BEVEL;
                                } else {
                                    join = Paint.Join.ROUND;
                                }
                                q60Var.m = join;
                                float f4 = q60Var.n;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null) {
                                    f4 = l2.getFloat(10, f4);
                                }
                                q60Var.n = f4;
                                q60Var.d = gt.h(l2, xmlPullParser, theme, "strokeColor", 3);
                                float f5 = q60Var.g;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null) {
                                    f5 = l2.getFloat(11, f5);
                                }
                                q60Var.g = f5;
                                float f6 = q60Var.e;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null) {
                                    f6 = l2.getFloat(4, f6);
                                }
                                q60Var.e = f6;
                                float f7 = q60Var.j;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null) {
                                    f7 = l2.getFloat(6, f7);
                                }
                                q60Var.j = f7;
                                float f8 = q60Var.k;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null) {
                                    f8 = l2.getFloat(7, f8);
                                }
                                q60Var.k = f8;
                                float f9 = q60Var.i;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null) {
                                    f9 = l2.getFloat(5, f9);
                                }
                                q60Var.i = f9;
                                int i8 = q60Var.c;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") != null) {
                                    i8 = l2.getInt(13, i8);
                                }
                                q60Var.c = i8;
                            }
                            l2.recycle();
                            o60Var2.b.add(q60Var);
                            if (q60Var.getPathName() != null) {
                                u6Var.put(q60Var.getPathName(), q60Var);
                            }
                            s60Var3.a = s60Var3.a;
                            z2 = false;
                            c = '\b';
                        } else {
                            c = '\b';
                            if ("clip-path".equals(name)) {
                                q60 q60Var2 = new q60();
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                                    TypedArray l3 = gt.l(resources, theme, attributeSet, em.g);
                                    String string4 = l3.getString(0);
                                    if (string4 != null) {
                                        q60Var2.b = string4;
                                    }
                                    String string5 = l3.getString(1);
                                    if (string5 != null) {
                                        q60Var2.a = qj.h(string5);
                                    }
                                    q60Var2.c = !gt.j(xmlPullParser, "fillType") ? 0 : l3.getInt(2, 0);
                                    l3.recycle();
                                }
                                o60Var2.b.add(q60Var2);
                                if (q60Var2.getPathName() != null) {
                                    u6Var.put(q60Var2.getPathName(), q60Var2);
                                }
                                s60Var3.a = s60Var3.a;
                            } else if ("group".equals(name)) {
                                o60 o60Var3 = new o60();
                                TypedArray l4 = gt.l(resources, theme, attributeSet, em.e);
                                float f10 = o60Var3.c;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "rotation") != null) {
                                    f10 = l4.getFloat(5, f10);
                                }
                                o60Var3.c = f10;
                                o60Var3.d = l4.getFloat(1, o60Var3.d);
                                o60Var3.e = l4.getFloat(2, o60Var3.e);
                                float f11 = o60Var3.f;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null) {
                                    f11 = l4.getFloat(3, f11);
                                }
                                o60Var3.f = f11;
                                float f12 = o60Var3.g;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null) {
                                    f12 = l4.getFloat(4, f12);
                                }
                                o60Var3.g = f12;
                                float f13 = o60Var3.h;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null) {
                                    f13 = l4.getFloat(6, f13);
                                }
                                o60Var3.h = f13;
                                float f14 = o60Var3.i;
                                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") != null) {
                                    f14 = l4.getFloat(7, f14);
                                }
                                o60Var3.i = f14;
                                String string6 = l4.getString(0);
                                if (string6 != null) {
                                    o60Var3.k = string6;
                                }
                                o60Var3.c();
                                l4.recycle();
                                o60Var2.b.add(o60Var3);
                                arrayDeque.push(o60Var3);
                                if (o60Var3.getGroupName() != null) {
                                    u6Var.put(o60Var3.getGroupName(), o60Var3);
                                }
                                s60Var3.a = s60Var3.a;
                            }
                        }
                        i2 = 1;
                    } else {
                        i = depth;
                        c = '\b';
                        i2 = 1;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i4 = i2;
                    depth = i;
                }
                if (!z2) {
                    this.c = a(s60Var.c, s60Var.d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            } else {
                throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(l.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return sc.d(drawable);
        }
        return this.b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            s60 s60Var = this.b;
            if (s60Var != null) {
                r60 r60Var = s60Var.b;
                if (r60Var.n == null) {
                    r60Var.n = Boolean.valueOf(r60Var.g.a());
                }
                if (!r60Var.n.booleanValue()) {
                    ColorStateList colorStateList = this.b.c;
                    if (colorStateList == null || !colorStateList.isStateful()) {
                        return false;
                    }
                    return true;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.Drawable$ConstantState, s60] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.e && super.mutate() == this) {
            s60 s60Var = this.b;
            ?? constantState = new Drawable.ConstantState();
            constantState.c = null;
            constantState.d = j;
            if (s60Var != null) {
                constantState.a = s60Var.a;
                r60 r60Var = new r60(s60Var.b);
                constantState.b = r60Var;
                if (s60Var.b.e != null) {
                    r60Var.e = new Paint(s60Var.b.e);
                }
                if (s60Var.b.d != null) {
                    constantState.b.d = new Paint(s60Var.b.d);
                }
                constantState.c = s60Var.c;
                constantState.d = s60Var.d;
                constantState.e = s60Var.e;
            }
            this.b = constantState;
            this.e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        s60 s60Var = this.b;
        ColorStateList colorStateList = s60Var.c;
        if (colorStateList != null && (mode = s60Var.d) != null) {
            this.c = a(colorStateList, mode);
            invalidateSelf();
            z = true;
        } else {
            z = false;
        }
        r60 r60Var = s60Var.b;
        if (r60Var.n == null) {
            r60Var.n = Boolean.valueOf(r60Var.g.a());
        }
        if (r60Var.n.booleanValue()) {
            boolean b = s60Var.b.g.b(iArr);
            s60Var.k |= b;
            if (b) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.b.b.getRootAlpha() != i) {
            this.b.b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.a;
        if (drawable != null) {
            sc.e(drawable, z);
        } else {
            this.b.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.d = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            tc.g(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.a;
        if (drawable != null) {
            tc.h(drawable, colorStateList);
            return;
        }
        s60 s60Var = this.b;
        if (s60Var.c != colorStateList) {
            s60Var.c = colorStateList;
            this.c = a(colorStateList, s60Var.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.a;
        if (drawable != null) {
            tc.i(drawable, mode);
            return;
        }
        s60 s60Var = this.b;
        if (s60Var.d != mode) {
            s60Var.d = mode;
            this.c = a(s60Var.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public u60(s60 s60Var) {
        this.f = true;
        this.g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        this.b = s60Var;
        this.c = a(s60Var.c, s60Var.d);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }
}
