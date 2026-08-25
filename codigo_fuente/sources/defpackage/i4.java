package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: i4  reason: default package */
/* loaded from: classes.dex */
public class i4 extends RadioButton implements r40 {
    public final f3 a;
    public final z1 b;
    public final h5 c;
    public c4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        o40.a(context);
        m40.a(this, getContext());
        f3 f3Var = new f3(this);
        this.a = f3Var;
        f3Var.d(attributeSet, R.attr.radioButtonStyle);
        z1 z1Var = new z1(this);
        this.b = z1Var;
        z1Var.k(attributeSet, R.attr.radioButtonStyle);
        h5 h5Var = new h5(this);
        this.c = h5Var;
        h5Var.f(attributeSet, R.attr.radioButtonStyle);
        getEmojiTextViewHelper().b(attributeSet, R.attr.radioButtonStyle);
    }

    private c4 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new c4(this);
        }
        return this.d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.a();
        }
        h5 h5Var = this.c;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        f3 f3Var = this.a;
        if (f3Var != null) {
            f3Var.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.b;
        if (z1Var != null) {
            return z1Var.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.b;
        if (z1Var != null) {
            return z1Var.i();
        }
        return null;
    }

    @Override // defpackage.r40
    public ColorStateList getSupportButtonTintList() {
        f3 f3Var = this.a;
        if (f3Var != null) {
            return (ColorStateList) f3Var.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        f3 f3Var = this.a;
        if (f3Var != null) {
            return (PorterDuff.Mode) f3Var.b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.n(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        f3 f3Var = this.a;
        if (f3Var != null) {
            if (f3Var.e) {
                f3Var.e = false;
                return;
            }
            f3Var.e = true;
            f3Var.a();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.c;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.c;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.t(mode);
        }
    }

    @Override // defpackage.r40
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        f3 f3Var = this.a;
        if (f3Var != null) {
            f3Var.a = colorStateList;
            f3Var.c = true;
            f3Var.a();
        }
    }

    @Override // defpackage.r40
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        f3 f3Var = this.a;
        if (f3Var != null) {
            f3Var.b = mode;
            f3Var.d = true;
            f3Var.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        h5 h5Var = this.c;
        h5Var.l(colorStateList);
        h5Var.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        h5 h5Var = this.c;
        h5Var.m(mode);
        h5Var.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(gn.p(getContext(), i));
    }
}
