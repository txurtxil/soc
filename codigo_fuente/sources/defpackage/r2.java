package defpackage;

import android.graphics.drawable.Drawable;
/* renamed from: r2  reason: default package */
/* loaded from: classes.dex */
public final class r2 implements Drawable.Callback {
    public final /* synthetic */ u2 a;

    public r2(u2 u2Var) {
        this.a = u2Var;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        this.a.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        this.a.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        this.a.unscheduleSelf(runnable);
    }
}
