package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* renamed from: k5  reason: default package */
/* loaded from: classes.dex */
public class k5 extends TextView {
    public final z1 a;
    public final h5 b;
    public final ko c;
    public c4 d;
    public boolean e;
    public c9 f;
    public Future g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        o40.a(context);
        this.e = false;
        this.f = null;
        m40.a(this, getContext());
        z1 z1Var = new z1(this);
        this.a = z1Var;
        z1Var.k(attributeSet, i);
        h5 h5Var = new h5(this);
        this.b = h5Var;
        h5Var.f(attributeSet, i);
        h5Var.b();
        ko koVar = new ko(4, false);
        koVar.b = this;
        this.c = koVar;
        getEmojiTextViewHelper().b(attributeSet, i);
    }

    private c4 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new c4(this);
        }
        return this.d;
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

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (l80.b) {
            return super.getAutoSizeMaxTextSize();
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            return Math.round(h5Var.i.e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (l80.b) {
            return super.getAutoSizeMinTextSize();
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            return Math.round(h5Var.i.d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (l80.b) {
            return super.getAutoSizeStepGranularity();
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            return Math.round(h5Var.i.c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (l80.b) {
            return super.getAutoSizeTextAvailableSizes();
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            return h5Var.i.f;
        }
        return new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (l80.b) {
            if (super.getAutoSizeTextType() == 1) {
                return 1;
            }
            return 0;
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            return h5Var.i.a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return s8.D(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public i5 getSuperCaller() {
        if (this.f == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                this.f = new j5(this);
            } else if (i >= 26) {
                this.f = new c9(5, this);
            }
        }
        return this.f;
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

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future future = this.g;
        if (future != null) {
            try {
                this.g = null;
                if (future.get() == null) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        throw null;
                    }
                    s8.v(this);
                    throw null;
                }
                throw new ClassCastException();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        ko koVar;
        if (Build.VERSION.SDK_INT < 28 && (koVar = this.c) != null) {
            TextClassifier textClassifier = (TextClassifier) koVar.c;
            if (textClassifier == null) {
                return a5.a((TextView) koVar.b);
            }
            return textClassifier;
        }
        return super.getTextClassifier();
    }

    public xt getTextMetricsParamsCompat() {
        return s8.v(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.b.getClass();
        h5.h(editorInfo, onCreateInputConnection, this);
        qj.q(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        h5 h5Var = this.b;
        if (h5Var != null && !l80.b) {
            h5Var.i.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Future future = this.g;
        if (future != null) {
            try {
                this.g = null;
                if (future.get() == null) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        throw null;
                    }
                    s8.v(this);
                    throw null;
                }
                throw new ClassCastException();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        h5 h5Var = this.b;
        if (h5Var != null) {
            r5 r5Var = h5Var.i;
            if (!l80.b && r5Var.f()) {
                r5Var.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (l80.b) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.i(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (l80.b) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.j(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (l80.b) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.k(i);
        }
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

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Context context = getContext();
        Drawable drawable4 = null;
        if (i != 0) {
            drawable = gn.p(context, i);
        } else {
            drawable = null;
        }
        if (i2 != 0) {
            drawable2 = gn.p(context, i2);
        } else {
            drawable2 = null;
        }
        if (i3 != 0) {
            drawable3 = gn.p(context, i3);
        } else {
            drawable3 = null;
        }
        if (i4 != 0) {
            drawable4 = gn.p(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Context context = getContext();
        Drawable drawable4 = null;
        if (i != 0) {
            drawable = gn.p(context, i);
        } else {
            drawable = null;
        }
        if (i2 != 0) {
            drawable2 = gn.p(context, i2);
        } else {
            drawable2 = null;
        }
        if (i3 != 0) {
            drawable3 = gn.p(context, i3);
        } else {
            drawable3 = null;
        }
        if (i4 != 0) {
            drawable4 = gn.p(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(s8.F(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().n(i);
        } else {
            s8.A(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().d(i);
        } else {
            s8.B(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        if (i >= 0) {
            int fontMetricsInt = getPaint().getFontMetricsInt(null);
            if (i != fontMetricsInt) {
                setLineSpacing(i - fontMetricsInt, 1.0f);
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public void setPrecomputedText(yt ytVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        s8.v(this);
        throw null;
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
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.g(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        ko koVar;
        if (Build.VERSION.SDK_INT < 28 && (koVar = this.c) != null) {
            koVar.c = textClassifier;
        } else {
            super.setTextClassifier(textClassifier);
        }
    }

    public void setTextFuture(Future<yt> future) {
        this.g = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(xt xtVar) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = xtVar.b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i = 7;
            }
        }
        g40.h(this, i);
        getPaint().set(xtVar.a);
        h40.e(this, xtVar.c);
        h40.h(this, xtVar.d);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        boolean z = l80.b;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        h5 h5Var = this.b;
        if (h5Var != null) {
            r5 r5Var = h5Var.i;
            if (!z && !r5Var.f()) {
                r5Var.g(i, f);
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i) {
        Typeface typeface2;
        if (this.e) {
            return;
        }
        if (typeface != null && i > 0) {
            Context context = getContext();
            k60 k60Var = v50.a;
            if (context != null) {
                typeface2 = Typeface.create(typeface, i);
            } else {
                c2.n("Context cannot be null");
                return;
            }
        } else {
            typeface2 = null;
        }
        this.e = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.e = false;
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.b;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    public k5(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }
}
