package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.LinkedHashSet;
/* loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends gt {
    public final en l;
    public final ColorStateList m;
    public final z00 n;
    public int o;

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        new c9(this);
        this.o = 5;
        new LinkedHashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, uv.o);
        if (obtainStyledAttributes.hasValue(3)) {
            this.m = qj.j(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.n = z00.a(context, attributeSet, 0, 2131821542).a();
        }
        if (obtainStyledAttributes.hasValue(5)) {
            obtainStyledAttributes.getResourceId(5, -1);
        }
        z00 z00Var = this.n;
        if (z00Var != null) {
            en enVar = new en(z00Var);
            this.l = enVar;
            enVar.f(context);
            ColorStateList colorStateList = this.m;
            if (colorStateList != null) {
                this.l.h(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16842801, typedValue, true);
                this.l.setTint(typedValue.data);
            }
        }
        obtainStyledAttributes.getDimension(2, -1.0f);
        obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public SideSheetBehavior() {
        new c9(this);
        this.o = 5;
        new LinkedHashSet();
    }
}
