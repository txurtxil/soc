package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
/* renamed from: wm  reason: default package */
/* loaded from: classes.dex */
public class wm extends b3 implements Checkable, k10 {
    public static final int[] r = {16842911};
    public static final int[] s = {16842912};
    public final xm d;
    public final LinkedHashSet e;
    public PorterDuff.Mode f;
    public ColorStateList g;
    public Drawable h;
    public String i;
    public int j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public int q;

    public wm(Context context, AttributeSet attributeSet) {
        super(s8.E(context, attributeSet, R.attr.materialButtonStyle, 2131821591), attributeSet, R.attr.materialButtonStyle);
        Drawable drawable;
        int resourceId;
        this.e = new LinkedHashSet();
        this.n = false;
        this.o = false;
        Context context2 = getContext();
        s8.j(context2, attributeSet, R.attr.materialButtonStyle, 2131821591);
        int[] iArr = uv.f;
        s8.m(context2, attributeSet, iArr, R.attr.materialButtonStyle, 2131821591, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.materialButtonStyle, 2131821591);
        this.m = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        int i = obtainStyledAttributes.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f = qj.t(i);
        this.g = qj.j(getContext(), obtainStyledAttributes, 14);
        this.h = (!obtainStyledAttributes.hasValue(10) || (resourceId = obtainStyledAttributes.getResourceId(10, 0)) == 0 || (drawable = gn.p(getContext(), resourceId)) == null) ? obtainStyledAttributes.getDrawable(10) : drawable;
        this.q = obtainStyledAttributes.getInteger(11, 1);
        this.j = obtainStyledAttributes.getDimensionPixelSize(13, 0);
        xm xmVar = new xm(this, z00.a(context2, attributeSet, R.attr.materialButtonStyle, 2131821591).a());
        this.d = xmVar;
        xmVar.c = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        xmVar.d = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        xmVar.e = obtainStyledAttributes.getDimensionPixelOffset(3, 0);
        xmVar.f = obtainStyledAttributes.getDimensionPixelOffset(4, 0);
        if (obtainStyledAttributes.hasValue(8)) {
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, -1);
            xmVar.g = dimensionPixelSize;
            xmVar.c(xmVar.b.e(dimensionPixelSize));
            xmVar.p = true;
        }
        xmVar.h = obtainStyledAttributes.getDimensionPixelSize(20, 0);
        xmVar.i = qj.t(obtainStyledAttributes.getInt(7, -1));
        xmVar.j = qj.j(getContext(), obtainStyledAttributes, 6);
        xmVar.k = qj.j(getContext(), obtainStyledAttributes, 19);
        xmVar.l = qj.j(getContext(), obtainStyledAttributes, 16);
        xmVar.q = obtainStyledAttributes.getBoolean(5, false);
        xmVar.t = obtainStyledAttributes.getDimensionPixelSize(9, 0);
        xmVar.r = obtainStyledAttributes.getBoolean(21, true);
        WeakHashMap weakHashMap = u70.a;
        int f = f70.f(this);
        int paddingTop = getPaddingTop();
        int e = f70.e(this);
        int paddingBottom = getPaddingBottom();
        if (obtainStyledAttributes.hasValue(0)) {
            xmVar.o = true;
            setSupportBackgroundTintList(xmVar.j);
            setSupportBackgroundTintMode(xmVar.i);
        } else {
            xmVar.e();
        }
        f70.k(this, f + xmVar.c, paddingTop + xmVar.e, e + xmVar.d, paddingBottom + xmVar.f);
        obtainStyledAttributes.recycle();
        setCompoundDrawablePadding(this.m);
        c(this.h != null);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment != 1) {
            if (textAlignment != 6 && textAlignment != 3) {
                if (textAlignment != 4) {
                    return Layout.Alignment.ALIGN_NORMAL;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        if (gravity != 1) {
            if (gravity != 5 && gravity != 8388613) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            f = Math.max(f, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f);
    }

    public final boolean a() {
        xm xmVar = this.d;
        if (xmVar != null && !xmVar.o) {
            return true;
        }
        return false;
    }

    public final void b() {
        int i = this.q;
        if (i != 1 && i != 2) {
            if (i != 3 && i != 4) {
                if (i != 16 && i != 32) {
                    return;
                }
                g40.e(this, null, this.h, null, null);
                return;
            }
            g40.e(this, null, null, this.h, null);
            return;
        }
        g40.e(this, this.h, null, null, null);
    }

    public final void c(boolean z) {
        Drawable drawable = this.h;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.h = mutate;
            tc.h(mutate, this.g);
            PorterDuff.Mode mode = this.f;
            if (mode != null) {
                tc.i(this.h, mode);
            }
            int i = this.j;
            if (i == 0) {
                i = this.h.getIntrinsicWidth();
            }
            int i2 = this.j;
            if (i2 == 0) {
                i2 = this.h.getIntrinsicHeight();
            }
            Drawable drawable2 = this.h;
            int i3 = this.k;
            int i4 = this.l;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.h.setVisible(true, z);
        }
        if (z) {
            b();
            return;
        }
        Drawable[] a = g40.a(this);
        Drawable drawable3 = a[0];
        Drawable drawable4 = a[1];
        Drawable drawable5 = a[2];
        int i5 = this.q;
        if (((i5 != 1 && i5 != 2) || drawable3 == this.h) && (((i5 != 3 && i5 != 4) || drawable5 == this.h) && ((i5 != 16 && i5 != 32) || drawable4 == this.h))) {
            return;
        }
        b();
    }

    public final void d(int i, int i2) {
        boolean z;
        if (this.h != null && getLayout() != null) {
            int i3 = this.q;
            boolean z2 = true;
            if (i3 != 1 && i3 != 2 && i3 != 3 && i3 != 4) {
                if (i3 != 16 && i3 != 32) {
                    return;
                }
                this.k = 0;
                if (i3 == 16) {
                    this.l = 0;
                    c(false);
                    return;
                }
                int i4 = this.j;
                if (i4 == 0) {
                    i4 = this.h.getIntrinsicHeight();
                }
                int max = Math.max(0, (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.m) - getPaddingBottom()) / 2);
                if (this.l != max) {
                    this.l = max;
                    c(false);
                    return;
                }
                return;
            }
            this.l = 0;
            Layout.Alignment actualTextAlignment = getActualTextAlignment();
            int i5 = this.q;
            if (i5 != 1 && i5 != 3 && ((i5 != 2 || actualTextAlignment != Layout.Alignment.ALIGN_NORMAL) && (i5 != 4 || actualTextAlignment != Layout.Alignment.ALIGN_OPPOSITE))) {
                int i6 = this.j;
                if (i6 == 0) {
                    i6 = this.h.getIntrinsicWidth();
                }
                int textLayoutWidth = i - getTextLayoutWidth();
                WeakHashMap weakHashMap = u70.a;
                int e = (((textLayoutWidth - f70.e(this)) - i6) - this.m) - f70.f(this);
                if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
                    e /= 2;
                }
                if (f70.d(this) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (this.q != 4) {
                    z2 = false;
                }
                if (z != z2) {
                    e = -e;
                }
                if (this.k != e) {
                    this.k = e;
                    c(false);
                    return;
                }
                return;
            }
            this.k = 0;
            c(false);
        }
    }

    public String getA11yClassName() {
        Class cls;
        if (!TextUtils.isEmpty(this.i)) {
            return this.i;
        }
        xm xmVar = this.d;
        if (xmVar != null && xmVar.q) {
            cls = CompoundButton.class;
        } else {
            cls = Button.class;
        }
        return cls.getName();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (a()) {
            return this.d.g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.h;
    }

    public int getIconGravity() {
        return this.q;
    }

    public int getIconPadding() {
        return this.m;
    }

    public int getIconSize() {
        return this.j;
    }

    public ColorStateList getIconTint() {
        return this.g;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f;
    }

    public int getInsetBottom() {
        return this.d.f;
    }

    public int getInsetTop() {
        return this.d.e;
    }

    public ColorStateList getRippleColor() {
        if (a()) {
            return this.d.l;
        }
        return null;
    }

    public z00 getShapeAppearanceModel() {
        if (a()) {
            return this.d.b;
        }
        c2.g("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (a()) {
            return this.d.k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (a()) {
            return this.d.h;
        }
        return 0;
    }

    @Override // defpackage.b3
    public ColorStateList getSupportBackgroundTintList() {
        if (a()) {
            return this.d.j;
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // defpackage.b3
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (a()) {
            return this.d.i;
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.n;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (a()) {
            gn.E(this, this.d.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        xm xmVar = this.d;
        if (xmVar != null && xmVar.q) {
            View.mergeDrawableStates(onCreateDrawableState, r);
        }
        if (this.n) {
            View.mergeDrawableStates(onCreateDrawableState, s);
        }
        return onCreateDrawableState;
    }

    @Override // defpackage.b3, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.n);
    }

    @Override // defpackage.b3, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        xm xmVar = this.d;
        if (xmVar != null && xmVar.q) {
            z = true;
        } else {
            z = false;
        }
        accessibilityNodeInfo.setCheckable(z);
        accessibilityNodeInfo.setChecked(this.n);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // defpackage.b3, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof vm)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        vm vmVar = (vm) parcelable;
        super.onRestoreInstanceState(vmVar.a);
        setChecked(vmVar.c);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, f, vm] */
    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? fVar = new f(super.onSaveInstanceState());
        fVar.c = this.n;
        return fVar;
    }

    @Override // defpackage.b3, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.d.r) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.h != null) {
            if (this.h.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.i = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (a()) {
            xm xmVar = this.d;
            if (xmVar.b(false) != null) {
                xmVar.b(false).setTint(i);
                return;
            }
            return;
        }
        super.setBackgroundColor(i);
    }

    @Override // defpackage.b3, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (a()) {
            if (drawable != getBackground()) {
                Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                xm xmVar = this.d;
                xmVar.o = true;
                wm wmVar = xmVar.a;
                wmVar.setSupportBackgroundTintList(xmVar.j);
                wmVar.setSupportBackgroundTintMode(xmVar.i);
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // defpackage.b3, android.view.View
    public void setBackgroundResource(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = gn.p(getContext(), i);
        } else {
            drawable = null;
        }
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (a()) {
            this.d.q = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        xm xmVar = this.d;
        if (xmVar != null && xmVar.q && isEnabled() && this.n != z) {
            this.n = z;
            refreshDrawableState();
            getParent();
            if (!this.o) {
                this.o = true;
                Iterator it = this.e.iterator();
                if (!it.hasNext()) {
                    this.o = false;
                    return;
                }
                it.next().getClass();
                c2.l();
            }
        }
    }

    public void setCornerRadius(int i) {
        if (a()) {
            xm xmVar = this.d;
            if (!xmVar.p || xmVar.g != i) {
                xmVar.g = i;
                xmVar.p = true;
                xmVar.c(xmVar.b.e(i));
            }
        }
    }

    public void setCornerRadiusResource(int i) {
        if (a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (a()) {
            this.d.b(false).g(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.h != drawable) {
            this.h = drawable;
            c(true);
            d(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.q != i) {
            this.q = i;
            d(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.m != i) {
            this.m = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = gn.p(getContext(), i);
        } else {
            drawable = null;
        }
        setIcon(drawable);
    }

    public void setIconSize(int i) {
        if (i >= 0) {
            if (this.j != i) {
                this.j = i;
                c(true);
                return;
            }
            return;
        }
        c2.n("iconSize cannot be less than 0");
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.g != colorStateList) {
            this.g = colorStateList;
            c(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f != mode) {
            this.f = mode;
            c(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(gn.o(getContext(), i));
    }

    public void setInsetBottom(int i) {
        xm xmVar = this.d;
        xmVar.d(xmVar.e, i);
    }

    public void setInsetTop(int i) {
        xm xmVar = this.d;
        xmVar.d(i, xmVar.f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (a()) {
            xm xmVar = this.d;
            wm wmVar = xmVar.a;
            if (xmVar.l != colorStateList) {
                xmVar.l = colorStateList;
                if (wmVar.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) wmVar.getBackground()).setColor(hy.a(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (a()) {
            setRippleColor(gn.o(getContext(), i));
        }
    }

    @Override // defpackage.k10
    public void setShapeAppearanceModel(z00 z00Var) {
        if (a()) {
            this.d.c(z00Var);
        } else {
            c2.g("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (a()) {
            xm xmVar = this.d;
            xmVar.n = z;
            xmVar.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (a()) {
            xm xmVar = this.d;
            if (xmVar.k != colorStateList) {
                xmVar.k = colorStateList;
                xmVar.f();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (a()) {
            setStrokeColor(gn.o(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (a()) {
            xm xmVar = this.d;
            if (xmVar.h != i) {
                xmVar.h = i;
                xmVar.f();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // defpackage.b3
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (a()) {
            xm xmVar = this.d;
            if (xmVar.j != colorStateList) {
                xmVar.j = colorStateList;
                if (xmVar.b(false) != null) {
                    tc.h(xmVar.b(false), xmVar.j);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintList(colorStateList);
    }

    @Override // defpackage.b3
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (a()) {
            xm xmVar = this.d;
            if (xmVar.i != mode) {
                xmVar.i = mode;
                if (xmVar.b(false) != null && xmVar.i != null) {
                    tc.i(xmVar.b(false), xmVar.i);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintMode(mode);
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.d.r = z;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.n);
    }

    public void setOnPressedChangeListenerInternal(um umVar) {
    }
}
