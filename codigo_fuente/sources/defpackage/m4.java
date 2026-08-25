package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: m4  reason: default package */
/* loaded from: classes.dex */
public final class m4 extends ko {
    public final l4 f;
    public Drawable g;
    public ColorStateList h;
    public PorterDuff.Mode i;
    public boolean j;
    public boolean k;

    public m4(l4 l4Var) {
        super(l4Var);
        this.h = null;
        this.i = null;
        this.j = false;
        this.k = false;
        this.f = l4Var;
    }

    public final void Q() {
        Drawable drawable = this.g;
        if (drawable != null) {
            if (this.j || this.k) {
                Drawable mutate = drawable.mutate();
                this.g = mutate;
                if (this.j) {
                    tc.h(mutate, this.h);
                }
                if (this.k) {
                    tc.i(this.g, this.i);
                }
                if (this.g.isStateful()) {
                    this.g.setState(this.f.getDrawableState());
                }
            }
        }
    }

    public final void R(Canvas canvas) {
        l4 l4Var;
        int i;
        if (this.g != null) {
            int max = this.f.getMax();
            int i2 = 1;
            if (max > 1) {
                int intrinsicWidth = this.g.getIntrinsicWidth();
                int intrinsicHeight = this.g.getIntrinsicHeight();
                if (intrinsicWidth >= 0) {
                    i = intrinsicWidth / 2;
                } else {
                    i = 1;
                }
                if (intrinsicHeight >= 0) {
                    i2 = intrinsicHeight / 2;
                }
                this.g.setBounds(-i, -i2, i, i2);
                float width = ((l4Var.getWidth() - l4Var.getPaddingLeft()) - l4Var.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(l4Var.getPaddingLeft(), l4Var.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.g.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // defpackage.ko
    public final void z(AttributeSet attributeSet, int i) {
        super.z(attributeSet, R.attr.seekBarStyle);
        l4 l4Var = this.f;
        Context context = l4Var.getContext();
        int[] iArr = vv.g;
        v5 C = v5.C(context, attributeSet, iArr, R.attr.seekBarStyle);
        TypedArray typedArray = (TypedArray) C.b;
        u70.g(l4Var, l4Var.getContext(), iArr, attributeSet, (TypedArray) C.b, R.attr.seekBarStyle);
        Drawable s = C.s(0);
        if (s != null) {
            l4Var.setThumb(s);
        }
        Drawable r = C.r(1);
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.g = r;
        if (r != null) {
            r.setCallback(l4Var);
            uc.b(r, f70.d(l4Var));
            if (r.isStateful()) {
                r.setState(l4Var.getDrawableState());
            }
            Q();
        }
        l4Var.invalidate();
        if (typedArray.hasValue(3)) {
            this.i = xc.c(typedArray.getInt(3, -1), this.i);
            this.k = true;
        }
        if (typedArray.hasValue(2)) {
            this.h = C.q(2);
            this.j = true;
        }
        C.E();
        Q();
    }
}
