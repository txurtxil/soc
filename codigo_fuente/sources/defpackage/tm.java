package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: tm  reason: default package */
/* loaded from: classes.dex */
public final class tm extends a3 {
    public final jl e;
    public final AccessibilityManager f;
    public final int g;
    public final float h;
    public ColorStateList i;
    public int j;
    public ColorStateList k;

    public tm(Context context, AttributeSet attributeSet) {
        super(s8.E(context, attributeSet, R.attr.autoCompleteTextViewStyle, 0), attributeSet, R.attr.autoCompleteTextViewStyle);
        new Rect();
        Context context2 = getContext();
        s8.j(context2, attributeSet, R.attr.autoCompleteTextViewStyle, 2131821331);
        int[] iArr = uv.e;
        s8.m(context2, attributeSet, iArr, R.attr.autoCompleteTextViewStyle, 2131821331, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.autoCompleteTextViewStyle, 2131821331);
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        this.g = obtainStyledAttributes.getResourceId(3, R.layout.mtrl_auto_complete_simple_item);
        this.h = obtainStyledAttributes.getDimensionPixelOffset(1, R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (obtainStyledAttributes.hasValue(2)) {
            this.i = ColorStateList.valueOf(obtainStyledAttributes.getColor(2, 0));
        }
        this.j = obtainStyledAttributes.getColor(4, 0);
        this.k = qj.j(context2, obtainStyledAttributes, 5);
        this.f = (AccessibilityManager) context2.getSystemService("accessibility");
        jl jlVar = new jl(context2, null, R.attr.listPopupWindowStyle, 0);
        this.e = jlVar;
        jlVar.z = true;
        h4 h4Var = jlVar.A;
        h4Var.setFocusable(true);
        jlVar.o = this;
        h4Var.setInputMethodMode(2);
        jlVar.q(getAdapter());
        jlVar.q = new u4(1, this);
        if (obtainStyledAttributes.hasValue(6)) {
            setSimpleItems(obtainStyledAttributes.getResourceId(6, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public static void a(tm tmVar, Object obj) {
        tmVar.setText(tmVar.convertSelectionToString(obj), false);
    }

    @Override // android.widget.AutoCompleteTextView
    public final void dismissDropDown() {
        AccessibilityManager accessibilityManager = this.f;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            this.e.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    public ColorStateList getDropDownBackgroundTintList() {
        return this.i;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
        }
        return super.getHint();
    }

    public float getPopupElevation() {
        return this.h;
    }

    public int getSimpleItemSelectedColor() {
        return this.j;
    }

    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.k;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.e.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            getAdapter();
            for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, 0), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        AccessibilityManager accessibilityManager = this.f;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        super.onWindowFocusChanged(z);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.e.q(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        jl jlVar = this.e;
        if (jlVar != null) {
            jlVar.i(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i));
    }

    public void setDropDownBackgroundTintList(ColorStateList colorStateList) {
        this.i = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof en) {
            ((en) dropDownBackground).h(this.i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.e.r = getOnItemSelectedListener();
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i) {
        super.setRawInputType(i);
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
        }
    }

    public void setSimpleItemSelectedColor(int i) {
        this.j = i;
        if (getAdapter() instanceof sm) {
            ((sm) getAdapter()).a();
        }
    }

    public void setSimpleItemSelectedRippleColor(ColorStateList colorStateList) {
        this.k = colorStateList;
        if (getAdapter() instanceof sm) {
            ((sm) getAdapter()).a();
        }
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new sm(this, getContext(), this.g, strArr));
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        AccessibilityManager accessibilityManager = this.f;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            this.e.d();
        } else {
            super.showDropDown();
        }
    }

    public void setSimpleItems(int i) {
        setSimpleItems(getResources().getStringArray(i));
    }
}
