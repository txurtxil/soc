package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
/* renamed from: t60  reason: default package */
/* loaded from: classes.dex */
public final class t60 extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public t60(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        u60 u60Var = new u60();
        u60Var.a = (VectorDrawable) this.a.newDrawable();
        return u60Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        u60 u60Var = new u60();
        u60Var.a = (VectorDrawable) this.a.newDrawable(resources);
        return u60Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        u60 u60Var = new u60();
        u60Var.a = (VectorDrawable) this.a.newDrawable(resources, theme);
        return u60Var;
    }
}
