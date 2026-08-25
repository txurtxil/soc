package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* renamed from: h5  reason: default package */
/* loaded from: classes.dex */
public final class h5 {
    public final TextView a;
    public p40 b;
    public p40 c;
    public p40 d;
    public p40 e;
    public p40 f;
    public p40 g;
    public p40 h;
    public final r5 i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    public h5(TextView textView) {
        this.a = textView;
        this.i = new r5(textView);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, p40] */
    public static p40 c(Context context, z3 z3Var, int i) {
        ColorStateList g;
        synchronized (z3Var) {
            g = z3Var.a.g(context, i);
        }
        if (g != null) {
            ?? obj = new Object();
            obj.d = true;
            obj.a = g;
            return obj;
        }
        return null;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i;
        int i2;
        CharSequence subSequence;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 30 && inputConnection != null) {
            CharSequence text = textView.getText();
            if (i3 >= 30) {
                ld.a(editorInfo, text);
                return;
            }
            text.getClass();
            if (i3 >= 30) {
                ld.a(editorInfo, text);
                return;
            }
            int i4 = editorInfo.initialSelStart;
            int i5 = editorInfo.initialSelEnd;
            if (i4 > i5) {
                i = i5;
            } else {
                i = i4;
            }
            if (i4 <= i5) {
                i4 = i5;
            }
            int length = text.length();
            if (i >= 0 && i4 <= length) {
                int i6 = editorInfo.inputType & 4095;
                if (i6 != 129 && i6 != 225 && i6 != 18) {
                    if (length <= 2048) {
                        k60.H(editorInfo, text, i, i4);
                        return;
                    }
                    int i7 = i4 - i;
                    if (i7 > 1024) {
                        i2 = 0;
                    } else {
                        i2 = i7;
                    }
                    int i8 = 2048 - i2;
                    int min = Math.min(text.length() - i4, i8 - Math.min(i, (int) (i8 * 0.8d)));
                    int min2 = Math.min(i, i8 - min);
                    int i9 = i - min2;
                    if (Character.isLowSurrogate(text.charAt(i9))) {
                        i9++;
                        min2--;
                    }
                    if (Character.isHighSurrogate(text.charAt((i4 + min) - 1))) {
                        min--;
                    }
                    int i10 = min2 + i2;
                    int i11 = i10 + min;
                    if (i2 != i7) {
                        subSequence = TextUtils.concat(text.subSequence(i9, i9 + min2), text.subSequence(i4, min + i4));
                    } else {
                        subSequence = text.subSequence(i9, i11 + i9);
                    }
                    k60.H(editorInfo, subSequence, min2, i10);
                    return;
                }
                k60.H(editorInfo, null, 0, 0);
                return;
            }
            k60.H(editorInfo, null, 0, 0);
        }
    }

    public final void a(Drawable drawable, p40 p40Var) {
        if (drawable != null && p40Var != null) {
            z3.d(drawable, p40Var, this.a.getDrawableState());
        }
    }

    public final void b() {
        p40 p40Var = this.b;
        TextView textView = this.a;
        if (p40Var != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] a = d5.a(textView);
        a(a[0], this.f);
        a(a[2], this.g);
    }

    public final ColorStateList d() {
        p40 p40Var = this.h;
        if (p40Var != null) {
            return p40Var.a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        p40 p40Var = this.h;
        if (p40Var != null) {
            return p40Var.b;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        float f;
        float f2;
        float f3;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        int fontMetricsInt;
        ColorStateList colorStateList;
        int resourceId;
        int i2;
        int resourceId2;
        TextView textView = this.a;
        Context context = textView.getContext();
        z3 a = z3.a();
        int[] iArr = vv.h;
        v5 C = v5.C(context, attributeSet, iArr, i);
        u70.g(textView, textView.getContext(), iArr, attributeSet, (TypedArray) C.b, i);
        TypedArray typedArray = (TypedArray) C.b;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.b = c(context, a, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.c = c(context, a, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.d = c(context, a, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.e = c(context, a, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f = c(context, a, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.g = c(context, a, typedArray.getResourceId(6, 0));
        }
        C.E();
        boolean z3 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = vv.x;
        if (resourceId3 != -1) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            v5 v5Var = new v5(context, obtainStyledAttributes);
            if (!z3 && obtainStyledAttributes.hasValue(14)) {
                z2 = obtainStyledAttributes.getBoolean(14, false);
                z = true;
            } else {
                z = false;
                z2 = false;
            }
            n(context, v5Var);
            if (obtainStyledAttributes.hasValue(15)) {
                str2 = obtainStyledAttributes.getString(15);
            } else {
                str2 = null;
            }
            if (Build.VERSION.SDK_INT >= 26 && obtainStyledAttributes.hasValue(13)) {
                str = obtainStyledAttributes.getString(13);
            } else {
                str = null;
            }
            v5Var.E();
        } else {
            z = false;
            z2 = false;
            str = null;
            str2 = null;
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        v5 v5Var2 = new v5(context, obtainStyledAttributes2);
        if (!z3 && obtainStyledAttributes2.hasValue(14)) {
            z2 = obtainStyledAttributes2.getBoolean(14, false);
            z = true;
        }
        boolean z4 = z2;
        if (obtainStyledAttributes2.hasValue(15)) {
            str2 = obtainStyledAttributes2.getString(15);
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 26 && obtainStyledAttributes2.hasValue(13)) {
            str = obtainStyledAttributes2.getString(13);
        }
        if (i3 >= 28 && obtainStyledAttributes2.hasValue(0) && obtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, v5Var2);
        v5Var2.E();
        if (!z3 && z) {
            textView.setAllCaps(z4);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.k == -1) {
                textView.setTypeface(typeface, this.j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (str != null) {
            f5.d(textView, str);
        }
        if (str2 != null) {
            e5.b(textView, e5.a(str2));
        }
        r5 r5Var = this.i;
        Context context2 = r5Var.j;
        int[] iArr3 = vv.i;
        TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr3, i, 0);
        TextView textView2 = r5Var.i;
        u70.g(textView2, textView2.getContext(), iArr3, attributeSet, obtainStyledAttributes3, i);
        if (obtainStyledAttributes3.hasValue(5)) {
            r5Var.a = obtainStyledAttributes3.getInt(5, 0);
        }
        if (obtainStyledAttributes3.hasValue(4)) {
            f = obtainStyledAttributes3.getDimension(4, -1.0f);
        } else {
            f = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(2)) {
            f2 = obtainStyledAttributes3.getDimension(2, -1.0f);
        } else {
            f2 = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(1)) {
            f3 = obtainStyledAttributes3.getDimension(1, -1.0f);
        } else {
            f3 = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(3) && (resourceId2 = obtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = obtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i4 = 0; i4 < length; i4++) {
                    iArr4[i4] = obtainTypedArray.getDimensionPixelSize(i4, -1);
                }
                r5Var.f = r5.b(iArr4);
                r5Var.i();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes3.recycle();
        if (r5Var.j()) {
            if (r5Var.a == 1) {
                if (!r5Var.g) {
                    DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                    if (f2 == -1.0f) {
                        i2 = 2;
                        f2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    } else {
                        i2 = 2;
                    }
                    if (f3 == -1.0f) {
                        f3 = TypedValue.applyDimension(i2, 112.0f, displayMetrics);
                    }
                    if (f == -1.0f) {
                        f = 1.0f;
                    }
                    r5Var.k(f2, f3, f);
                }
                r5Var.h();
            }
        } else {
            r5Var.a = 0;
        }
        if (l80.b && r5Var.a != 0) {
            int[] iArr5 = r5Var.f;
            if (iArr5.length > 0) {
                if (f5.a(textView) != -1.0f) {
                    f5.b(textView, Math.round(r5Var.d), Math.round(r5Var.e), Math.round(r5Var.c), 0);
                } else {
                    f5.c(textView, iArr5, 0);
                }
            }
        }
        TypedArray obtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = obtainStyledAttributes4.getResourceId(8, -1);
        if (resourceId4 != -1) {
            drawable = a.b(context, resourceId4);
        } else {
            drawable = null;
        }
        int resourceId5 = obtainStyledAttributes4.getResourceId(13, -1);
        if (resourceId5 != -1) {
            drawable2 = a.b(context, resourceId5);
        } else {
            drawable2 = null;
        }
        int resourceId6 = obtainStyledAttributes4.getResourceId(9, -1);
        if (resourceId6 != -1) {
            drawable3 = a.b(context, resourceId6);
        } else {
            drawable3 = null;
        }
        int resourceId7 = obtainStyledAttributes4.getResourceId(6, -1);
        if (resourceId7 != -1) {
            drawable4 = a.b(context, resourceId7);
        } else {
            drawable4 = null;
        }
        int resourceId8 = obtainStyledAttributes4.getResourceId(10, -1);
        if (resourceId8 != -1) {
            drawable5 = a.b(context, resourceId8);
        } else {
            drawable5 = null;
        }
        int resourceId9 = obtainStyledAttributes4.getResourceId(7, -1);
        if (resourceId9 != -1) {
            drawable6 = a.b(context, resourceId9);
        } else {
            drawable6 = null;
        }
        if (drawable5 == null && drawable6 == null) {
            if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
                Drawable[] a2 = d5.a(textView);
                Drawable drawable7 = a2[0];
                if (drawable7 == null && a2[2] == null) {
                    Drawable[] compoundDrawables = textView.getCompoundDrawables();
                    if (drawable == null) {
                        drawable = compoundDrawables[0];
                    }
                    if (drawable2 == null) {
                        drawable2 = compoundDrawables[1];
                    }
                    if (drawable3 == null) {
                        drawable3 = compoundDrawables[2];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawables[3];
                    }
                    textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                } else {
                    if (drawable2 == null) {
                        drawable2 = a2[1];
                    }
                    Drawable drawable8 = a2[2];
                    if (drawable4 == null) {
                        drawable4 = a2[3];
                    }
                    d5.b(textView, drawable7, drawable2, drawable8, drawable4);
                }
            }
        } else {
            Drawable[] a3 = d5.a(textView);
            if (drawable5 == null) {
                drawable5 = a3[0];
            }
            if (drawable2 == null) {
                drawable2 = a3[1];
            }
            if (drawable6 == null) {
                drawable6 = a3[2];
            }
            if (drawable4 == null) {
                drawable4 = a3[3];
            }
            d5.b(textView, drawable5, drawable2, drawable6, drawable4);
        }
        if (obtainStyledAttributes4.hasValue(11)) {
            if (!obtainStyledAttributes4.hasValue(11) || (resourceId = obtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = gn.o(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes4.getColorStateList(11);
            }
            h40.f(textView, colorStateList);
        }
        if (obtainStyledAttributes4.hasValue(12)) {
            h40.g(textView, xc.c(obtainStyledAttributes4.getInt(12, -1), null));
        }
        int dimensionPixelSize = obtainStyledAttributes4.getDimensionPixelSize(15, -1);
        int dimensionPixelSize2 = obtainStyledAttributes4.getDimensionPixelSize(18, -1);
        int dimensionPixelSize3 = obtainStyledAttributes4.getDimensionPixelSize(19, -1);
        obtainStyledAttributes4.recycle();
        if (dimensionPixelSize != -1) {
            s8.A(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != -1) {
            s8.B(textView, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != -1) {
            if (dimensionPixelSize3 >= 0) {
                if (dimensionPixelSize3 != textView.getPaint().getFontMetricsInt(null)) {
                    textView.setLineSpacing(dimensionPixelSize3 - fontMetricsInt, 1.0f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    public final void g(Context context, int i) {
        String string;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, vv.x);
        v5 v5Var = new v5(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.a;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, v5Var);
        if (Build.VERSION.SDK_INT >= 26 && obtainStyledAttributes.hasValue(13) && (string = obtainStyledAttributes.getString(13)) != null) {
            f5.d(textView, string);
        }
        v5Var.E();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.j);
        }
    }

    public final void i(int i, int i2, int i3, int i4) {
        r5 r5Var = this.i;
        if (r5Var.j()) {
            DisplayMetrics displayMetrics = r5Var.j.getResources().getDisplayMetrics();
            r5Var.k(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (r5Var.h()) {
                r5Var.a();
            }
        }
    }

    public final void j(int[] iArr, int i) {
        r5 r5Var = this.i;
        if (r5Var.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = r5Var.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                r5Var.f = r5.b(iArr2);
                if (!r5Var.i()) {
                    String arrays = Arrays.toString(iArr);
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + arrays);
                }
            } else {
                r5Var.g = false;
            }
            if (r5Var.h()) {
                r5Var.a();
            }
        }
    }

    public final void k(int i) {
        r5 r5Var = this.i;
        if (r5Var.j()) {
            if (i != 0) {
                if (i == 1) {
                    DisplayMetrics displayMetrics = r5Var.j.getResources().getDisplayMetrics();
                    r5Var.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (r5Var.h()) {
                        r5Var.a();
                        return;
                    }
                    return;
                }
                c2.n(t20.d(i, "Unknown auto-size text type: "));
                return;
            }
            r5Var.a = 0;
            r5Var.d = -1.0f;
            r5Var.e = -1.0f;
            r5Var.c = -1.0f;
            r5Var.f = new int[0];
            r5Var.b = false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, p40] */
    public final void l(ColorStateList colorStateList) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        p40 p40Var = this.h;
        p40Var.a = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        p40Var.d = z;
        this.b = p40Var;
        this.c = p40Var;
        this.d = p40Var;
        this.e = p40Var;
        this.f = p40Var;
        this.g = p40Var;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, p40] */
    public final void m(PorterDuff.Mode mode) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        p40 p40Var = this.h;
        p40Var.b = mode;
        if (mode != null) {
            z = true;
        } else {
            z = false;
        }
        p40Var.c = z;
        this.b = p40Var;
        this.c = p40Var;
        this.d = p40Var;
        this.e = p40Var;
        this.f = p40Var;
        this.g = p40Var;
    }

    public final void n(Context context, v5 v5Var) {
        String string;
        boolean z;
        boolean z2;
        int i = this.j;
        TypedArray typedArray = (TypedArray) v5Var.b;
        this.j = typedArray.getInt(2, i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i3 = typedArray.getInt(11, -1);
            this.k = i3;
            if (i3 != -1) {
                this.j &= 2;
            }
        }
        int i4 = 10;
        boolean z3 = true;
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.m = false;
                int i5 = typedArray.getInt(1, 1);
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 == 3) {
                            this.l = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.l = Typeface.SERIF;
                    return;
                }
                this.l = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.l = null;
        if (typedArray.hasValue(12)) {
            i4 = 12;
        }
        int i6 = this.k;
        int i7 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface t = v5Var.t(i4, this.j, new b5(this, i6, i7, new WeakReference(this.a)));
                if (t != null) {
                    if (i2 >= 28 && this.k != -1) {
                        Typeface create = Typeface.create(t, 0);
                        int i8 = this.k;
                        if ((this.j & 2) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.l = g5.a(create, i8, z2);
                    } else {
                        this.l = t;
                    }
                }
                if (this.l == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.m = z;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l == null && (string = typedArray.getString(i4)) != null) {
            if (Build.VERSION.SDK_INT >= 28 && this.k != -1) {
                Typeface create2 = Typeface.create(string, 0);
                int i9 = this.k;
                if ((this.j & 2) == 0) {
                    z3 = false;
                }
                this.l = g5.a(create2, i9, z3);
                return;
            }
            this.l = Typeface.create(string, this.j);
        }
    }
}
