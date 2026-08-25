package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: l4  reason: default package */
/* loaded from: classes.dex */
public final class l4 extends SeekBar {
    public final m4 a;

    public l4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        m40.a(this, getContext());
        m4 m4Var = new m4(this);
        this.a = m4Var;
        m4Var.z(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        m4 m4Var = this.a;
        l4 l4Var = m4Var.f;
        Drawable drawable = m4Var.g;
        if (drawable != null && drawable.isStateful() && drawable.setState(l4Var.getDrawableState())) {
            l4Var.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.a.g;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.a.R(canvas);
    }
}
