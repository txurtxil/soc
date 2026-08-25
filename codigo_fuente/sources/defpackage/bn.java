package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
/* renamed from: bn  reason: default package */
/* loaded from: classes.dex */
public final class bn extends d3 {
    public final LinkedHashSet e;
    public final LinkedHashSet f;
    public ColorStateList g;
    public boolean h;
    public boolean i;
    public boolean j;
    public CharSequence k;
    public Drawable l;
    public Drawable m;
    public boolean n;
    public ColorStateList o;
    public ColorStateList q;
    public PorterDuff.Mode r;
    public int s;
    public int[] t;
    public boolean u;
    public CharSequence v;
    public CompoundButton.OnCheckedChangeListener w;
    public final u2 x;
    public final ym y;
    public static final int[] z = {R.attr.state_indeterminate};
    public static final int[] A = {R.attr.state_error};
    public static final int[][] B = {new int[]{16842910, R.attr.state_error}, new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    public static final int C = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    public bn(Context context, AttributeSet attributeSet) {
        super(s8.E(context, attributeSet, R.attr.checkboxStyle, 2131821615), attributeSet);
        Drawable drawable;
        ColorStateList colorStateList;
        int resourceId;
        ColorStateList o;
        int resourceId2;
        int resourceId3;
        this.e = new LinkedHashSet();
        this.f = new LinkedHashSet();
        Context context2 = getContext();
        u2 u2Var = new u2(context2);
        Resources resources = context2.getResources();
        Resources.Theme theme = context2.getTheme();
        ThreadLocal threadLocal = xx.a;
        Drawable a = sx.a(resources, R.drawable.mtrl_checkbox_button_checked_unchecked, theme);
        u2Var.a = a;
        a.setCallback(u2Var.f);
        new t2(u2Var.a.getConstantState());
        this.x = u2Var;
        this.y = new ym(this);
        Context context3 = getContext();
        this.l = ma.a(this);
        this.o = getSuperButtonTintList();
        setSupportButtonTintList(null);
        s8.j(context3, attributeSet, R.attr.checkboxStyle, 2131821615);
        int[] iArr = uv.g;
        s8.m(context3, attributeSet, iArr, R.attr.checkboxStyle, 2131821615, new int[0]);
        TypedArray obtainStyledAttributes = context3.obtainStyledAttributes(attributeSet, iArr, R.attr.checkboxStyle, 2131821615);
        if (obtainStyledAttributes.hasValue(2) && (resourceId3 = obtainStyledAttributes.getResourceId(2, 0)) != 0) {
            drawable = gn.p(context3, resourceId3);
        } else {
            drawable = obtainStyledAttributes.getDrawable(2);
        }
        this.m = drawable;
        if (this.l != null && em.u(context3, R.attr.isMaterial3Theme, false)) {
            int resourceId4 = obtainStyledAttributes.getResourceId(0, 0);
            int resourceId5 = obtainStyledAttributes.getResourceId(1, 0);
            if (resourceId4 == C && resourceId5 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.l = gn.p(context3, R.drawable.mtrl_checkbox_button);
                this.n = true;
                if (this.m == null) {
                    this.m = gn.p(context3, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        if (!obtainStyledAttributes.hasValue(3) || (resourceId2 = obtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList = gn.o(context3, resourceId2)) == null) {
            if (obtainStyledAttributes.hasValue(3) && (resourceId = obtainStyledAttributes.getResourceId(3, 0)) != 0 && (o = gn.o(context3, resourceId)) != null) {
                colorStateList = o;
            } else {
                colorStateList = obtainStyledAttributes.getColorStateList(3);
            }
        }
        this.q = colorStateList;
        int i = obtainStyledAttributes.getInt(4, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.r = qj.t(i);
        this.h = obtainStyledAttributes.getBoolean(10, false);
        this.i = obtainStyledAttributes.getBoolean(6, true);
        this.j = obtainStyledAttributes.getBoolean(9, false);
        this.k = obtainStyledAttributes.getText(8);
        if (obtainStyledAttributes.hasValue(7)) {
            setCheckedState(obtainStyledAttributes.getInt(7, 0));
        }
        obtainStyledAttributes.recycle();
        a();
    }

    private String getButtonStateDescription() {
        int i = this.s;
        if (i == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        if (i == 0) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_unchecked);
        }
        return getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.g == null) {
            int p = s8.p(this, R.attr.colorControlActivated);
            int p2 = s8.p(this, R.attr.colorError);
            int p3 = s8.p(this, R.attr.colorSurface);
            int p4 = s8.p(this, R.attr.colorOnSurface);
            this.g = new ColorStateList(B, new int[]{s8.w(p3, p2, 1.0f), s8.w(p3, p, 1.0f), s8.w(p3, p4, 0.54f), s8.w(p3, p4, 0.38f), s8.w(p3, p4, 0.38f)});
        }
        return this.g;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.o;
        if (colorStateList != null) {
            return colorStateList;
        }
        if (super.getButtonTintList() != null) {
            return super.getButtonTintList();
        }
        return getSupportButtonTintList();
    }

    public final void a() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        t0 t0Var;
        Drawable drawable = this.l;
        ColorStateList colorStateList3 = this.o;
        PorterDuff.Mode b = la.b(this);
        if (drawable == null) {
            drawable = null;
        } else if (colorStateList3 != null) {
            drawable = drawable.mutate();
            if (b != null) {
                tc.i(drawable, b);
            }
        }
        this.l = drawable;
        Drawable drawable2 = this.m;
        ColorStateList colorStateList4 = this.q;
        PorterDuff.Mode mode = this.r;
        if (drawable2 == null) {
            drawable2 = null;
        } else if (colorStateList4 != null) {
            drawable2 = drawable2.mutate();
            if (mode != null) {
                tc.i(drawable2, mode);
            }
        }
        this.m = drawable2;
        if (this.n) {
            u2 u2Var = this.x;
            if (u2Var != null) {
                s2 s2Var = u2Var.b;
                Drawable drawable3 = u2Var.a;
                ym ymVar = this.y;
                if (drawable3 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable3;
                    if (ymVar.a == null) {
                        ymVar.a = new q2(ymVar);
                    }
                    animatedVectorDrawable.unregisterAnimationCallback(ymVar.a);
                }
                ArrayList arrayList = u2Var.e;
                if (arrayList != null && ymVar != null) {
                    arrayList.remove(ymVar);
                    if (u2Var.e.size() == 0 && (t0Var = u2Var.d) != null) {
                        s2Var.b.removeListener(t0Var);
                        u2Var.d = null;
                    }
                }
                Drawable drawable4 = u2Var.a;
                if (drawable4 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable4;
                    if (ymVar.a == null) {
                        ymVar.a = new q2(ymVar);
                    }
                    animatedVectorDrawable2.registerAnimationCallback(ymVar.a);
                } else if (ymVar != null) {
                    if (u2Var.e == null) {
                        u2Var.e = new ArrayList();
                    }
                    if (!u2Var.e.contains(ymVar)) {
                        u2Var.e.add(ymVar);
                        if (u2Var.d == null) {
                            u2Var.d = new t0(1, u2Var);
                        }
                        s2Var.b.addListener(u2Var.d);
                    }
                }
            }
            Drawable drawable5 = this.l;
            if ((drawable5 instanceof AnimatedStateListDrawable) && u2Var != null) {
                ((AnimatedStateListDrawable) drawable5).addTransition(R.id.checked, R.id.unchecked, u2Var, false);
                ((AnimatedStateListDrawable) this.l).addTransition(R.id.indeterminate, R.id.unchecked, u2Var, false);
            }
        }
        Drawable drawable6 = this.l;
        if (drawable6 != null && (colorStateList2 = this.o) != null) {
            tc.h(drawable6, colorStateList2);
        }
        Drawable drawable7 = this.m;
        if (drawable7 != null && (colorStateList = this.q) != null) {
            tc.h(drawable7, colorStateList);
        }
        Drawable drawable8 = this.l;
        Drawable drawable9 = this.m;
        if (drawable8 == null) {
            drawable8 = drawable9;
        } else if (drawable9 != null) {
            int intrinsicWidth = drawable9.getIntrinsicWidth();
            if (intrinsicWidth == -1) {
                intrinsicWidth = drawable8.getIntrinsicWidth();
            }
            int intrinsicHeight = drawable9.getIntrinsicHeight();
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable8.getIntrinsicHeight();
            }
            if (intrinsicWidth > drawable8.getIntrinsicWidth() || intrinsicHeight > drawable8.getIntrinsicHeight()) {
                float f = intrinsicWidth / intrinsicHeight;
                if (f >= drawable8.getIntrinsicWidth() / drawable8.getIntrinsicHeight()) {
                    int intrinsicWidth2 = drawable8.getIntrinsicWidth();
                    intrinsicHeight = (int) (intrinsicWidth2 / f);
                    intrinsicWidth = intrinsicWidth2;
                } else {
                    intrinsicHeight = drawable8.getIntrinsicHeight();
                    intrinsicWidth = (int) (f * intrinsicHeight);
                }
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable8, drawable9});
            layerDrawable.setLayerSize(1, intrinsicWidth, intrinsicHeight);
            layerDrawable.setLayerGravity(1, 17);
            drawable8 = layerDrawable;
        }
        super.setButtonDrawable(drawable8);
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.l;
    }

    public Drawable getButtonIconDrawable() {
        return this.m;
    }

    public ColorStateList getButtonIconTintList() {
        return this.q;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.r;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.o;
    }

    public int getCheckedState() {
        return this.s;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.k;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        if (this.s == 1) {
            return true;
        }
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.h && this.o == null && this.q == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] copyOf;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(onCreateDrawableState, z);
        }
        if (this.j) {
            View.mergeDrawableStates(onCreateDrawableState, A);
        }
        int i2 = 0;
        while (true) {
            if (i2 < onCreateDrawableState.length) {
                int i3 = onCreateDrawableState[i2];
                if (i3 == 16842912) {
                    copyOf = onCreateDrawableState;
                    break;
                } else if (i3 == 0) {
                    copyOf = (int[]) onCreateDrawableState.clone();
                    copyOf[i2] = 16842912;
                    break;
                } else {
                    i2++;
                }
            } else {
                copyOf = Arrays.copyOf(onCreateDrawableState, onCreateDrawableState.length + 1);
                copyOf[onCreateDrawableState.length] = 16842912;
                break;
            }
        }
        this.t = copyOf;
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable a;
        if (this.i && TextUtils.isEmpty(getText()) && (a = ma.a(this)) != null) {
            WeakHashMap weakHashMap = u70.a;
            int i = 1;
            if (f70.d(this) == 1) {
                i = -1;
            }
            int width = ((getWidth() - a.getIntrinsicWidth()) / 2) * i;
            int save = canvas.save();
            canvas.translate(width, 0.0f);
            super.onDraw(canvas);
            canvas.restoreToCount(save);
            if (getBackground() != null) {
                Rect bounds = a.getBounds();
                tc.f(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.j) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.k));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof zm)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        zm zmVar = (zm) parcelable;
        super.onRestoreInstanceState(zmVar.getSuperState());
        setCheckedState(zmVar.a);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, zm, android.os.Parcelable] */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.a = getCheckedState();
        return baseSavedState;
    }

    @Override // defpackage.d3, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(gn.p(getContext(), i));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.m = drawable;
        a();
    }

    public void setButtonIconDrawableResource(int i) {
        setButtonIconDrawable(gn.p(getContext(), i));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.q == colorStateList) {
            return;
        }
        this.q = colorStateList;
        a();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.r == mode) {
            return;
        }
        this.r = mode;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.o == colorStateList) {
            return;
        }
        this.o = colorStateList;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        a();
    }

    public void setCenterIfNoTextEnabled(boolean z2) {
        this.i = z2;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        setCheckedState(z2 ? 1 : 0);
    }

    public void setCheckedState(int i) {
        boolean z2;
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.s != i) {
            this.s = i;
            if (i == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            super.setChecked(z2);
            refreshDrawableState();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && this.v == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (!this.u) {
                this.u = true;
                LinkedHashSet linkedHashSet = this.f;
                if (linkedHashSet != null) {
                    Iterator it = linkedHashSet.iterator();
                    if (it.hasNext()) {
                        it.next().getClass();
                        c2.l();
                        return;
                    }
                }
                if (this.s != 2 && (onCheckedChangeListener = this.w) != null) {
                    onCheckedChangeListener.onCheckedChanged(this, isChecked());
                }
                if (i2 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                    autofillManager.notifyValueChanged(this);
                }
                this.u = false;
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.k = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i) {
        CharSequence charSequence;
        if (i != 0) {
            charSequence = getResources().getText(i);
        } else {
            charSequence = null;
        }
        setErrorAccessibilityLabel(charSequence);
    }

    public void setErrorShown(boolean z2) {
        if (this.j != z2) {
            this.j = z2;
            refreshDrawableState();
            Iterator it = this.e.iterator();
            if (!it.hasNext()) {
                return;
            }
            it.next().getClass();
            c2.l();
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.w = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.v = charSequence;
        if (charSequence == null) {
            if (Build.VERSION.SDK_INT >= 30 && charSequence == null) {
                super.setStateDescription(getButtonStateDescription());
                return;
            }
            return;
        }
        super.setStateDescription(charSequence);
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.h = z2;
        if (z2) {
            la.c(this, getMaterialThemeColorsTintList());
        } else {
            la.c(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // defpackage.d3, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.l = drawable;
        this.n = false;
        a();
    }
}
