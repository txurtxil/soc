package defpackage;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: ye  reason: default package */
/* loaded from: classes.dex */
public final class ye extends iw {
    public static final int[] C = {16842919};
    public static final int[] D = new int[0];
    public int A;
    public final c7 B;
    public final int a;
    public final int b;
    public final StateListDrawable c;
    public final Drawable d;
    public final int e;
    public final int f;
    public final StateListDrawable g;
    public final Drawable h;
    public final int i;
    public final int j;
    public int k;
    public int l;
    public float m;
    public int n;
    public int o;
    public float p;
    public final RecyclerView s;
    public final ValueAnimator z;
    public int q = 0;
    public int r = 0;
    public boolean t = false;
    public boolean u = false;
    public int v = 0;
    public int w = 0;
    public final int[] x = new int[2];
    public final int[] y = new int[2];

    public ye(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.z = ofFloat;
        this.A = 0;
        c7 c7Var = new c7(7, this);
        this.B = c7Var;
        we weVar = new we(this);
        this.c = stateListDrawable;
        this.d = drawable;
        this.g = stateListDrawable2;
        this.h = drawable2;
        this.e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i, drawable.getIntrinsicWidth());
        this.i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i, drawable2.getIntrinsicWidth());
        this.a = i2;
        this.b = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new xe(this));
        ofFloat.addUpdateListener(new r7(1, this));
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.n;
            lw lwVar = recyclerView2.m;
            if (lwVar != null) {
                lwVar.b("Cannot remove item decoration during a scroll  or layout");
            }
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.K();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.s;
            recyclerView3.o.remove(this);
            if (recyclerView3.q == this) {
                recyclerView3.q = null;
            }
            ArrayList arrayList2 = this.s.g0;
            if (arrayList2 != null) {
                arrayList2.remove(weVar);
            }
            this.s.removeCallbacks(c7Var);
        }
        this.s = recyclerView;
        recyclerView.f(this);
        this.s.o.add(this);
        RecyclerView recyclerView4 = this.s;
        if (recyclerView4.g0 == null) {
            recyclerView4.g0 = new ArrayList();
        }
        recyclerView4.g0.add(weVar);
    }

    public static int e(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 != 0) {
            int i5 = i - i3;
            int i6 = (int) (((f2 - f) / i4) * i5);
            int i7 = i2 + i6;
            if (i7 < i5 && i7 >= 0) {
                return i6;
            }
        }
        return 0;
    }

    @Override // defpackage.iw
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        int i = this.q;
        RecyclerView recyclerView2 = this.s;
        if (i == recyclerView2.getWidth() && this.r == recyclerView2.getHeight()) {
            if (this.A != 0) {
                if (this.t) {
                    int i2 = this.q;
                    int i3 = this.e;
                    int i4 = i2 - i3;
                    int i5 = this.l;
                    int i6 = this.k;
                    int i7 = i5 - (i6 / 2);
                    StateListDrawable stateListDrawable = this.c;
                    stateListDrawable.setBounds(0, 0, i3, i6);
                    int i8 = this.f;
                    int i9 = this.r;
                    Drawable drawable = this.d;
                    drawable.setBounds(0, 0, i8, i9);
                    WeakHashMap weakHashMap = u70.a;
                    if (f70.d(recyclerView2) == 1) {
                        drawable.draw(canvas);
                        canvas.translate(i3, i7);
                        canvas.scale(-1.0f, 1.0f);
                        stateListDrawable.draw(canvas);
                        canvas.scale(1.0f, 1.0f);
                        canvas.translate(-i3, -i7);
                    } else {
                        canvas.translate(i4, 0.0f);
                        drawable.draw(canvas);
                        canvas.translate(0.0f, i7);
                        stateListDrawable.draw(canvas);
                        canvas.translate(-i4, -i7);
                    }
                }
                if (this.u) {
                    int i10 = this.r;
                    int i11 = this.i;
                    int i12 = i10 - i11;
                    int i13 = this.o;
                    int i14 = this.n;
                    int i15 = i13 - (i14 / 2);
                    StateListDrawable stateListDrawable2 = this.g;
                    stateListDrawable2.setBounds(0, 0, i14, i11);
                    int i16 = this.q;
                    int i17 = this.j;
                    Drawable drawable2 = this.h;
                    drawable2.setBounds(0, 0, i16, i17);
                    canvas.translate(0.0f, i12);
                    drawable2.draw(canvas);
                    canvas.translate(i15, 0.0f);
                    stateListDrawable2.draw(canvas);
                    canvas.translate(-i15, -i12);
                    return;
                }
                return;
            }
            return;
        }
        this.q = recyclerView2.getWidth();
        this.r = recyclerView2.getHeight();
        f(0);
    }

    public final boolean c(float f, float f2) {
        if (f2 >= this.r - this.i) {
            int i = this.o;
            int i2 = this.n;
            if (f >= i - (i2 / 2) && f <= (i2 / 2) + i) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean d(float f, float f2) {
        WeakHashMap weakHashMap = u70.a;
        int d = f70.d(this.s);
        int i = this.e;
        if (d == 1) {
            if (f > i / 2) {
                return false;
            }
        } else if (f < this.q - i) {
            return false;
        }
        int i2 = this.l;
        int i3 = this.k / 2;
        if (f2 >= i2 - i3 && f2 <= i3 + i2) {
            return true;
        }
        return false;
    }

    public final void f(int i) {
        RecyclerView recyclerView = this.s;
        c7 c7Var = this.B;
        StateListDrawable stateListDrawable = this.c;
        if (i == 2 && this.v != 2) {
            stateListDrawable.setState(C);
            recyclerView.removeCallbacks(c7Var);
        }
        if (i == 0) {
            recyclerView.invalidate();
        } else {
            g();
        }
        if (this.v == 2 && i != 2) {
            stateListDrawable.setState(D);
            recyclerView.removeCallbacks(c7Var);
            recyclerView.postDelayed(c7Var, 1200L);
        } else if (i == 1) {
            recyclerView.removeCallbacks(c7Var);
            recyclerView.postDelayed(c7Var, 1500L);
        }
        this.v = i;
    }

    public final void g() {
        int i = this.A;
        ValueAnimator valueAnimator = this.z;
        if (i != 0) {
            if (i != 3) {
                return;
            }
            valueAnimator.cancel();
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
