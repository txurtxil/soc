package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends gt {
    public final boolean l;
    public int m;
    public boolean n;
    public final en o;
    public final ColorStateList p;
    public final boolean q;
    public final z00 r;
    public boolean s;
    public final ValueAnimator t;
    public final int u;
    public final boolean v;
    public int w;

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        this.l = true;
        new c9(this);
        this.w = 4;
        new ArrayList();
        new SparseIntArray();
        context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, uv.a);
        int i2 = 3;
        if (obtainStyledAttributes.hasValue(3)) {
            this.p = qj.j(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(21)) {
            this.r = z00.a(context, attributeSet, R.attr.bottomSheetStyle, 2131821398).a();
        }
        z00 z00Var = this.r;
        if (z00Var != null) {
            en enVar = new en(z00Var);
            this.o = enVar;
            enVar.f(context);
            ColorStateList colorStateList = this.p;
            if (colorStateList != null) {
                this.o.h(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16842801, typedValue, true);
                this.o.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.t = ofFloat;
        ofFloat.setDuration(500L);
        this.t.addUpdateListener(new r7(0, this));
        obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null && (i = peekValue.data) == -1) {
            u(i);
        } else {
            u(obtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        boolean z = obtainStyledAttributes.getBoolean(8, false);
        if (this.v != z) {
            this.v = z;
            if (!z && this.w == 5 && this.w != 4) {
                this.w = 4;
            }
        }
        obtainStyledAttributes.getBoolean(13, false);
        boolean z2 = obtainStyledAttributes.getBoolean(6, true);
        if (this.l != z2) {
            this.l = z2;
            i2 = (z2 && this.w == 6) ? i2 : this.w;
            if (this.w != i2) {
                this.w = i2;
            }
            v(this.w);
        }
        obtainStyledAttributes.getBoolean(12, false);
        obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.getInt(10, 0);
        float f = obtainStyledAttributes.getFloat(7, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(5);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i3 = peekValue2.data;
                if (i3 >= 0) {
                    this.u = i3;
                    v(this.w);
                } else {
                    c2.n("offset must be greater than or equal to 0");
                    throw null;
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.u = dimensionPixelOffset;
                    v(this.w);
                } else {
                    c2.n("offset must be greater than or equal to 0");
                    throw null;
                }
            }
            obtainStyledAttributes.getInt(11, 500);
            obtainStyledAttributes.getBoolean(17, false);
            obtainStyledAttributes.getBoolean(18, false);
            obtainStyledAttributes.getBoolean(19, false);
            obtainStyledAttributes.getBoolean(20, true);
            obtainStyledAttributes.getBoolean(14, false);
            obtainStyledAttributes.getBoolean(15, false);
            obtainStyledAttributes.getBoolean(16, false);
            this.q = obtainStyledAttributes.getBoolean(23, true);
            obtainStyledAttributes.recycle();
            ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        c2.n("ratio must be a float value between 0 and 1");
        throw null;
    }

    public final void u(int i) {
        boolean z = this.n;
        if (i == -1) {
            if (!z) {
                this.n = true;
            }
        } else if (!z && this.m == i) {
        } else {
            this.n = false;
            this.m = Math.max(0, i);
        }
    }

    public final void v(int i) {
        boolean z;
        en enVar;
        if (i != 2) {
            if (this.w == 3 && this.q) {
                z = true;
            } else {
                z = false;
            }
            if (this.s != z && (enVar = this.o) != null) {
                this.s = z;
                ValueAnimator valueAnimator = this.t;
                float f = 1.0f;
                if (valueAnimator != null) {
                    if (valueAnimator.isRunning()) {
                        valueAnimator.reverse();
                        return;
                    }
                    float f2 = enVar.a.i;
                    if (z) {
                        f = 0.0f;
                    }
                    valueAnimator.setFloatValues(f2, f);
                    valueAnimator.start();
                    return;
                }
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    valueAnimator.cancel();
                }
                if (this.s) {
                    f = 0.0f;
                }
                dn dnVar = enVar.a;
                if (dnVar.i != f) {
                    dnVar.i = f;
                    enVar.e = true;
                    enVar.invalidateSelf();
                }
            }
        }
    }

    public BottomSheetBehavior() {
        this.l = true;
        new c9(this);
        this.w = 4;
        new ArrayList();
        new SparseIntArray();
    }
}
