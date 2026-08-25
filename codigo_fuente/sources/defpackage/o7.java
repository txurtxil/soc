package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.WeakHashMap;
/* renamed from: o7 */
/* loaded from: classes.dex */
public abstract class o7 extends FrameLayout {
    public static final n7 l = new Object();
    public p7 a;
    public final z00 b;
    public int c;
    public final float d;
    public final float e;
    public final int f;
    public final int g;
    public ColorStateList h;
    public PorterDuff.Mode i;
    public Rect j;
    public boolean k;

    /* JADX WARN: Multi-variable type inference failed */
    public o7(Context context, AttributeSet attributeSet) {
        super(s8.E(context, attributeSet, 0, 0), attributeSet);
        GradientDrawable gradientDrawable;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, uv.p);
        if (obtainStyledAttributes.hasValue(6)) {
            WeakHashMap weakHashMap = u70.a;
            j70.s(this, obtainStyledAttributes.getDimensionPixelSize(6, 0));
        }
        this.c = obtainStyledAttributes.getInt(2, 0);
        if (obtainStyledAttributes.hasValue(8) || obtainStyledAttributes.hasValue(9)) {
            this.b = z00.a(context2, attributeSet, 0, 0).a();
        }
        this.d = obtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(qj.j(context2, obtainStyledAttributes, 4));
        int i = obtainStyledAttributes.getInt(5, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        setBackgroundTintMode(qj.t(i));
        this.e = obtainStyledAttributes.getFloat(1, 1.0f);
        this.f = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.g = obtainStyledAttributes.getDimensionPixelSize(7, -1);
        obtainStyledAttributes.recycle();
        setOnTouchListener(l);
        setFocusable(true);
        if (getBackground() == null) {
            int w = s8.w(s8.p(this, R.attr.colorSurface), s8.p(this, R.attr.colorOnSurface), getBackgroundOverlayColorAlpha());
            z00 z00Var = this.b;
            if (z00Var != null) {
                ue ueVar = p7.s;
                en enVar = new en(z00Var);
                enVar.h(ColorStateList.valueOf(w));
                gradientDrawable = enVar;
            } else {
                Resources resources = getResources();
                ue ueVar2 = p7.s;
                float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(dimension);
                gradientDrawable2.setColor(w);
                gradientDrawable = gradientDrawable2;
            }
            ColorStateList colorStateList = this.h;
            if (colorStateList != null) {
                tc.h(gradientDrawable, colorStateList);
            }
            WeakHashMap weakHashMap2 = u70.a;
            e70.q(this, gradientDrawable);
        }
    }

    public static /* synthetic */ void a(o7 o7Var, p7 p7Var) {
        o7Var.setBaseTransientBottomBar(p7Var);
    }

    public void setBaseTransientBottomBar(p7 p7Var) {
        this.a = p7Var;
    }

    public float getActionTextColorAlpha() {
        return this.e;
    }

    public int getAnimationMode() {
        return this.c;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.d;
    }

    public int getMaxInlineActionWidth() {
        return this.g;
    }

    public int getMaxWidth() {
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        WindowInsets rootWindowInsets;
        Insets mandatorySystemGestureInsets;
        int i;
        super.onAttachedToWindow();
        p7 p7Var = this.a;
        if (p7Var != null && Build.VERSION.SDK_INT >= 29 && (rootWindowInsets = p7Var.i.getRootWindowInsets()) != null) {
            mandatorySystemGestureInsets = rootWindowInsets.getMandatorySystemGestureInsets();
            i = mandatorySystemGestureInsets.bottom;
            p7Var.n = i;
            p7Var.d();
        }
        WeakHashMap weakHashMap = u70.a;
        h70.c(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0029, code lost:
        if (r0 != false) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDetachedFromWindow() {
        /*
            r5 = this;
            super.onDetachedFromWindow()
            p7 r5 = r5.a
            if (r5 == 0) goto L3d
            vp r0 = defpackage.vp.c()
            m7 r1 = r5.r
            java.lang.Object r2 = r0.a
            monitor-enter(r2)
            boolean r3 = r0.d(r1)     // Catch: java.lang.Throwable -> L3a
            r4 = 1
            if (r3 != 0) goto L2b
            java.lang.Object r0 = r0.d     // Catch: java.lang.Throwable -> L3a
            n20 r0 = (defpackage.n20) r0     // Catch: java.lang.Throwable -> L3a
            r3 = 0
            if (r0 == 0) goto L28
            java.lang.ref.WeakReference r0 = r0.a     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L3a
            if (r0 != r1) goto L28
            r0 = r4
            goto L29
        L28:
            r0 = r3
        L29:
            if (r0 == 0) goto L2c
        L2b:
            r3 = r4
        L2c:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
            if (r3 == 0) goto L3d
            android.os.Handler r0 = defpackage.p7.v
            k7 r1 = new k7
            r1.<init>(r5, r4)
            r0.post(r1)
            return
        L3a:
            r5 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
            throw r5
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o7.onDetachedFromWindow():void");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        p7 p7Var = this.a;
        if (p7Var != null && p7Var.p) {
            p7Var.c();
            p7Var.p = false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.f;
        if (i3 > 0 && getMeasuredWidth() > i3) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }
    }

    public void setAnimationMode(int i) {
        this.c = i;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.h != null) {
            drawable = drawable.mutate();
            tc.h(drawable, this.h);
            tc.i(drawable, this.i);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.h = colorStateList;
        if (getBackground() != null) {
            Drawable mutate = getBackground().mutate();
            tc.h(mutate, colorStateList);
            tc.i(mutate, this.i);
            if (mutate != getBackground()) {
                super.setBackgroundDrawable(mutate);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.i = mode;
        if (getBackground() != null) {
            Drawable mutate = getBackground().mutate();
            tc.i(mutate, mode);
            if (mutate != getBackground()) {
                super.setBackgroundDrawable(mutate);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (!this.k && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.j = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            p7 p7Var = this.a;
            if (p7Var != null) {
                ue ueVar = p7.s;
                p7Var.d();
            }
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        n7 n7Var;
        if (onClickListener != null) {
            n7Var = null;
        } else {
            n7Var = l;
        }
        setOnTouchListener(n7Var);
        super.setOnClickListener(onClickListener);
    }
}
