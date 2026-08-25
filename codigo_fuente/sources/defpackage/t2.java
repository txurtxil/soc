package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
/* renamed from: t2  reason: default package */
/* loaded from: classes.dex */
public final class t2 extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public t2(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        u2 u2Var = new u2(null);
        Drawable newDrawable = this.a.newDrawable();
        u2Var.a = newDrawable;
        newDrawable.setCallback(u2Var.f);
        return u2Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        u2 u2Var = new u2(null);
        Drawable newDrawable = this.a.newDrawable(resources);
        u2Var.a = newDrawable;
        newDrawable.setCallback(u2Var.f);
        return u2Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        u2 u2Var = new u2(null);
        Drawable newDrawable = this.a.newDrawable(resources, theme);
        u2Var.a = newDrawable;
        newDrawable.setCallback(u2Var.f);
        return u2Var;
    }
}
