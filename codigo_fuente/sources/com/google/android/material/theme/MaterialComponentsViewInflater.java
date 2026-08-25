package com.google.android.material.theme;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends u5 {
    @Override // defpackage.u5
    public final a3 a(Context context, AttributeSet attributeSet) {
        return new tm(context, attributeSet);
    }

    @Override // defpackage.u5
    public final b3 b(Context context, AttributeSet attributeSet) {
        return new wm(context, attributeSet);
    }

    @Override // defpackage.u5
    public final d3 c(Context context, AttributeSet attributeSet) {
        return new bn(context, attributeSet);
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [android.widget.CompoundButton, android.view.View, i4, cn] */
    @Override // defpackage.u5
    public final i4 d(Context context, AttributeSet attributeSet) {
        ?? i4Var = new i4(s8.E(context, attributeSet, R.attr.radioButtonStyle, 2131821616), attributeSet);
        Context context2 = i4Var.getContext();
        s8.j(context2, attributeSet, R.attr.radioButtonStyle, 2131821616);
        int[] iArr = uv.h;
        s8.m(context2, attributeSet, iArr, R.attr.radioButtonStyle, 2131821616, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.radioButtonStyle, 2131821616);
        if (obtainStyledAttributes.hasValue(0)) {
            la.c(i4Var, qj.j(context2, obtainStyledAttributes, 0));
        }
        i4Var.f = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        return i4Var;
    }

    @Override // defpackage.u5
    public final k5 e(Context context, AttributeSet attributeSet) {
        k5 k5Var = new k5(s8.E(context, attributeSet, 16842884, 0), attributeSet, 16842884);
        Context context2 = k5Var.getContext();
        if (em.u(context2, R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = uv.k;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, 16842884, 0);
            int f = fn.f(context2, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (f == -1) {
                TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, 16842884, 0);
                int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
                obtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray obtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, uv.j);
                    int f2 = fn.f(k5Var.getContext(), obtainStyledAttributes3, 1, 2);
                    obtainStyledAttributes3.recycle();
                    if (f2 >= 0) {
                        k5Var.setLineHeight(f2);
                    }
                }
            }
        }
        return k5Var;
    }
}
