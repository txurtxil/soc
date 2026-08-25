package com.google.android.apps.auto.sdk.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class MaxWidthLayout extends FrameLayout {
    private int a;

    public MaxWidthLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context.obtainStyledAttributes(attributeSet, R.styleable.MaxWidthLayout, i, 0));
    }

    private final void a(TypedArray typedArray) {
        this.a = typedArray.getDimensionPixelSize(R.styleable.MaxWidthLayout_carMaxWidth, 0);
        typedArray.recycle();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.a == 0) {
            return;
        }
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return;
            }
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i3 = this.a;
                    if (measuredWidth > i3) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec((i3 - layoutParams.leftMargin) - layoutParams.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                    }
                }
            }
        }
    }

    public MaxWidthLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context.obtainStyledAttributes(attributeSet, R.styleable.MaxWidthLayout));
    }

    public MaxWidthLayout(Context context) {
        super(context);
        a(context.obtainStyledAttributes(R.styleable.MaxWidthLayout));
    }
}
