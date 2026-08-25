package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: g4  reason: default package */
/* loaded from: classes.dex */
public final class g4 extends MultiAutoCompleteTextView {
    public static final int[] d = {16843126};
    public final z1 a;
    public final h5 b;
    public final ko c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        o40.a(context);
        m40.a(this, getContext());
        v5 C = v5.C(getContext(), attributeSet, d, R.attr.autoCompleteTextViewStyle);
        if (((TypedArray) C.b).hasValue(0)) {
            setDropDownBackgroundDrawable(C.r(0));
        }
        C.E();
        z1 z1Var = new z1(this);
        this.a = z1Var;
        z1Var.k(attributeSet, R.attr.autoCompleteTextViewStyle);
        h5 h5Var = new h5(this);
        this.b = h5Var;
        h5Var.f(attributeSet, R.attr.autoCompleteTextViewStyle);
        h5Var.b();
        ko koVar = new ko(this, 3);
        this.c = koVar;
        koVar.z(attributeSet, R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean isFocusable = isFocusable();
            boolean isClickable = isClickable();
            boolean isLongClickable = isLongClickable();
            int inputType = getInputType();
            KeyListener u = koVar.u(keyListener);
            if (u != keyListener) {
                super.setKeyListener(u);
                setRawInputType(inputType);
                setFocusable(isFocusable);
                setClickable(isClickable);
                setLongClickable(isLongClickable);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.a();
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.a;
        if (z1Var != null) {
            return z1Var.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.a;
        if (z1Var != null) {
            return z1Var.i();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        qj.q(editorInfo, onCreateInputConnection, this);
        return this.c.C(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.n(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(gn.p(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.c.K(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.c.u(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.t(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        h5 h5Var = this.b;
        h5Var.l(colorStateList);
        h5Var.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        h5 h5Var = this.b;
        h5Var.m(mode);
        h5Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.g(context, i);
        }
    }
}
