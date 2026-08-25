package defpackage;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: jj  reason: default package */
/* loaded from: classes.dex */
public final class jj implements View.OnTouchListener {
    public final o2 a;
    public final int b;
    public final int c;
    public final int d;

    public jj(o2 o2Var, Rect rect) {
        this.a = o2Var;
        this.b = rect.left;
        this.c = rect.top;
        this.d = ViewConfiguration.get(o2Var.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int top;
        View findViewById = view.findViewById(16908290);
        int left = findViewById.getLeft() + this.b;
        int width = findViewById.getWidth() + left;
        if (new RectF(left, findViewById.getTop() + this.c, width, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            float f = (-this.d) - 1;
            obtain.setLocation(f, f);
        }
        view.performClick();
        return this.a.onTouchEvent(obtain);
    }
}
