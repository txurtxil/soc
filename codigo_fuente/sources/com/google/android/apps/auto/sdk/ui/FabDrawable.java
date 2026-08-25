package com.google.android.apps.auto.sdk.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
/* loaded from: classes.dex */
public class FabDrawable extends Drawable {
    private final int a;
    private final int b;
    private final Paint c;
    private final Paint d;
    private final ValueAnimator e;
    private boolean f;
    private int g;
    private int h;
    private Outline i;

    public FabDrawable(int i, int i2, int i3) {
        this.c = new Paint(1);
        this.d = new Paint(1);
        if (i < 0) {
            c2.n("Fab growth must be >= 0.");
            throw null;
        } else if (i > i2) {
            c2.n("Fab growth must be <= strokeWidth.");
            throw null;
        } else if (i2 < 0) {
            c2.n("Stroke width must be >= 0.");
            throw null;
        } else {
            this.a = i;
            this.b = i2;
            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(i3);
            this.e = duration;
            duration.setInterpolator(new DecelerateInterpolator());
            duration.addUpdateListener(new c(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        int min = (Math.min(getBounds().width(), getBounds().height()) / 2) - this.b;
        float animatedFraction = this.e.getAnimatedFraction();
        float f = min;
        this.h = (int) ((this.b * animatedFraction) + f);
        this.g = (int) ((animatedFraction * this.a) + f);
        b();
        invalidateSelf();
    }

    private final void b() {
        int width = getBounds().width() / 2;
        int height = getBounds().height() / 2;
        Outline outline = this.i;
        if (outline != null) {
            int i = this.h;
            outline.setRoundRect(width - i, height - i, width + i, height + i, i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float width = canvas.getWidth() / 2;
        float height = canvas.getHeight() / 2;
        canvas.drawCircle(width, height, this.h, this.d);
        canvas.drawCircle(width, height, this.g, this.c);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.i = outline;
        b();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        boolean z = false;
        boolean z2 = false;
        for (int i : iArr) {
            if (i == 16842908) {
                z = true;
            }
            if (i == 16842919) {
                z2 = true;
            }
        }
        if ((z || z2) && this.f) {
            this.e.start();
            this.f = false;
        } else if (!z && !z2 && !this.f) {
            this.e.reverse();
            this.f = true;
        }
        return onStateChange || z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.c.setAlpha(i);
        this.d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.c.setColorFilter(colorFilter);
        this.d.setColorFilter(colorFilter);
    }

    public void setFabAndStrokeColor(int i, float f) {
        setFabColor(i);
        Color.colorToHSV(i, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * f};
        setStrokeColor(Color.HSVToColor(fArr));
    }

    public void setFabColor(int i) {
        this.c.setColor(i);
    }

    public void setStrokeColor(int i) {
        this.d.setColor(i);
    }

    public FabDrawable(Context context) {
        this(context.getResources().getDimensionPixelSize(R.dimen.car_fab_focused_growth), context.getResources().getDimensionPixelSize(R.dimen.car_fab_focused_stroke_width), context.getResources().getInteger(R.integer.abc_action_mode_close_item_material));
    }

    public void setFabAndStrokeColor(int i) {
        setFabAndStrokeColor(i, 0.9f);
    }
}
