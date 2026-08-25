package defpackage;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowMetrics;
/* renamed from: k7  reason: default package */
/* loaded from: classes.dex */
public final class k7 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ p7 b;

    public /* synthetic */ k7(p7 p7Var, int i) {
        this.a = i;
        this.b = p7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Rect rect;
        WindowMetrics currentWindowMetrics;
        int i = this.a;
        p7 p7Var = this.b;
        switch (i) {
            case 0:
                o7 o7Var = p7Var.i;
                if (o7Var != null) {
                    WindowManager windowManager = (WindowManager) p7Var.h.getSystemService("window");
                    if (Build.VERSION.SDK_INT >= 30) {
                        currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                        rect = currentWindowMetrics.getBounds();
                    } else {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        Point point = new Point();
                        defaultDisplay.getRealSize(point);
                        rect = new Rect();
                        rect.right = point.x;
                        rect.bottom = point.y;
                    }
                    int height = rect.height();
                    int[] iArr = new int[2];
                    o7Var.getLocationOnScreen(iArr);
                    int height2 = (height - (o7Var.getHeight() + iArr[1])) + ((int) o7Var.getTranslationY());
                    int i2 = p7Var.n;
                    if (height2 >= i2) {
                        p7Var.o = i2;
                        return;
                    }
                    ViewGroup.LayoutParams layoutParams = o7Var.getLayoutParams();
                    if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                        Log.w(p7.x, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                        return;
                    }
                    int i3 = p7Var.n;
                    p7Var.o = i3;
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.bottomMargin = (i3 - height2) + marginLayoutParams.bottomMargin;
                    o7Var.requestLayout();
                    return;
                }
                return;
            case 1:
                p7Var.a();
                return;
            default:
                o7 o7Var2 = p7Var.i;
                if (o7Var2 != null) {
                    if (o7Var2.getParent() != null) {
                        o7Var2.setVisibility(0);
                    }
                    if (o7Var2.getAnimationMode() == 1) {
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        ofFloat.setInterpolator(p7Var.d);
                        ofFloat.addUpdateListener(new i7(p7Var, 0, (byte) 0));
                        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
                        ofFloat2.setInterpolator(p7Var.f);
                        ofFloat2.addUpdateListener(new i7(p7Var, 1, (byte) 0));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(ofFloat, ofFloat2);
                        animatorSet.setDuration(p7Var.a);
                        animatorSet.addListener(new h7(p7Var, 3));
                        animatorSet.start();
                        return;
                    }
                    int height3 = o7Var2.getHeight();
                    ViewGroup.LayoutParams layoutParams2 = o7Var2.getLayoutParams();
                    if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                        height3 += ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                    }
                    o7Var2.setTranslationY(height3);
                    ValueAnimator valueAnimator = new ValueAnimator();
                    valueAnimator.setIntValues(height3, 0);
                    valueAnimator.setInterpolator(p7Var.e);
                    valueAnimator.setDuration(p7Var.c);
                    valueAnimator.addListener(new h7(p7Var, 1));
                    valueAnimator.addUpdateListener(new i7(p7Var, height3));
                    valueAnimator.start();
                    return;
                }
                return;
        }
    }
}
