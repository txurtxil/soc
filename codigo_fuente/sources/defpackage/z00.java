package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
/* renamed from: z00  reason: default package */
/* loaded from: classes.dex */
public final class z00 {
    public k60 a;
    public k60 b;
    public k60 c;
    public k60 d;
    public gb e;
    public gb f;
    public gb g;
    public gb h;
    public hd i;
    public hd j;
    public hd k;
    public hd l;

    public static y00 a(Context context, AttributeSet attributeSet, int i, int i2) {
        g gVar = new g(0.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, uv.i, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, resourceId);
        if (resourceId2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, resourceId2);
        }
        TypedArray obtainStyledAttributes2 = contextThemeWrapper.obtainStyledAttributes(uv.n);
        try {
            int i3 = obtainStyledAttributes2.getInt(0, 0);
            int i4 = obtainStyledAttributes2.getInt(3, i3);
            int i5 = obtainStyledAttributes2.getInt(4, i3);
            int i6 = obtainStyledAttributes2.getInt(2, i3);
            int i7 = obtainStyledAttributes2.getInt(1, i3);
            gb b = b(obtainStyledAttributes2, 5, gVar);
            gb b2 = b(obtainStyledAttributes2, 8, b);
            gb b3 = b(obtainStyledAttributes2, 9, b);
            gb b4 = b(obtainStyledAttributes2, 7, b);
            gb b5 = b(obtainStyledAttributes2, 6, b);
            y00 y00Var = new y00();
            y00Var.a = gn.k(i4);
            y00Var.e = b2;
            y00Var.b = gn.k(i5);
            y00Var.f = b3;
            y00Var.c = gn.k(i6);
            y00Var.g = b4;
            y00Var.d = gn.k(i7);
            y00Var.h = b5;
            return y00Var;
        } finally {
            obtainStyledAttributes2.recycle();
        }
    }

    public static gb b(TypedArray typedArray, int i, gb gbVar) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new g(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new fx(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return gbVar;
    }

    public final boolean c(RectF rectF) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.l.getClass().equals(hd.class) && this.j.getClass().equals(hd.class) && this.i.getClass().equals(hd.class) && this.k.getClass().equals(hd.class)) {
            z = true;
        } else {
            z = false;
        }
        float a = this.e.a(rectF);
        if (this.f.a(rectF) == a && this.h.a(rectF) == a && this.g.a(rectF) == a) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((this.b instanceof ez) && (this.a instanceof ez) && (this.c instanceof ez) && (this.d instanceof ez)) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z || !z2 || !z3) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [y00, java.lang.Object] */
    public final y00 d() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.b;
        obj.c = this.c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.l;
        return obj;
    }

    public final z00 e(float f) {
        y00 d = d();
        d.e = new g(f);
        d.f = new g(f);
        d.g = new g(f);
        d.h = new g(f);
        return d.a();
    }
}
