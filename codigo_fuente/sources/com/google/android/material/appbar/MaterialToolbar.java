package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public static final ImageView.ScaleType[] d0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer V;
    public boolean W;
    public boolean a0;
    public ImageView.ScaleType b0;
    public Boolean c0;

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, z00] */
    /* JADX WARN: Type inference failed for: r2v2, types: [k60, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [k60, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [k60, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [k60, java.lang.Object] */
    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(s8.E(context, attributeSet, i, 2131821691), attributeSet, i);
        Context context2 = getContext();
        s8.j(context2, attributeSet, i, 2131821691);
        int[] iArr = uv.l;
        s8.m(context2, attributeSet, iArr, i, 2131821691, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, 2131821691);
        if (obtainStyledAttributes.hasValue(2)) {
            setNavigationIconTint(obtainStyledAttributes.getColor(2, -1));
        }
        this.W = obtainStyledAttributes.getBoolean(4, false);
        this.a0 = obtainStyledAttributes.getBoolean(3, false);
        int i2 = obtainStyledAttributes.getInt(1, -1);
        if (i2 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = d0;
            if (i2 < scaleTypeArr.length) {
                this.b0 = scaleTypeArr[i2];
            }
        }
        if (obtainStyledAttributes.hasValue(0)) {
            this.c0 = Boolean.valueOf(obtainStyledAttributes.getBoolean(0, false));
        }
        obtainStyledAttributes.recycle();
        Drawable background = getBackground();
        if (background != null && !(background instanceof ColorDrawable)) {
            return;
        }
        ?? obj = new Object();
        obj.a = new Object();
        obj.b = new Object();
        obj.c = new Object();
        obj.d = new Object();
        obj.e = new g(0.0f);
        obj.f = new g(0.0f);
        obj.g = new g(0.0f);
        obj.h = new g(0.0f);
        obj.i = new hd(0);
        obj.j = new hd(0);
        obj.k = new hd(0);
        obj.l = new hd(0);
        en enVar = new en((z00) obj);
        enVar.h(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
        enVar.f(context2);
        WeakHashMap weakHashMap = u70.a;
        enVar.g(j70.i(this));
        e70.q(this, enVar);
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.b0;
    }

    public Integer getNavigationIconTint() {
        return this.V;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void m(int i) {
        Menu menu = getMenu();
        boolean z = menu instanceof so;
        if (z) {
            ((so) menu).w();
        }
        super.m(i);
        if (z) {
            ((so) menu).v();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof en) {
            gn.E(this, (en) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TextView textView;
        TextView textView2;
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        o6 o6Var = qj.f;
        int i5 = 0;
        ImageView imageView2 = null;
        if (this.W || this.a0) {
            ArrayList l = qj.l(this, getTitle());
            if (l.isEmpty()) {
                textView = null;
            } else {
                textView = (TextView) Collections.min(l, o6Var);
            }
            ArrayList l2 = qj.l(this, getSubtitle());
            if (l2.isEmpty()) {
                textView2 = null;
            } else {
                textView2 = (TextView) Collections.max(l2, o6Var);
            }
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i6 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i6 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i6 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.W && textView != null) {
                    x(textView, pair);
                }
                if (this.a0 && textView2 != null) {
                    x(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i5 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i5);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i5++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.c0;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.b0;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof en) {
            ((en) background).g(f);
        }
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.c0;
        if (bool != null && bool.booleanValue() == z) {
            return;
        }
        this.c0 = Boolean.valueOf(z);
        requestLayout();
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.b0 != scaleType) {
            this.b0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.V != null) {
            drawable = drawable.mutate();
            tc.g(drawable, this.V.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i) {
        this.V = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.a0 != z) {
            this.a0 = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.W != z) {
            this.W = z;
            requestLayout();
        }
    }

    public final void x(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i, textView.getTop(), i2, textView.getBottom());
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public MaterialToolbar(Context context) {
        this(context, null);
    }
}
