package com.google.android.material.carousel;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes.dex */
public class CarouselLayoutManager extends lw {
    public int o;
    public i9 p;

    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new h9();
        w0(lw.E(context, attributeSet, i, i2).a);
        g0();
    }

    public static hd s0(List list, float f, boolean z) {
        float f2 = Float.MAX_VALUE;
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        float f3 = -3.4028235E38f;
        float f4 = Float.MAX_VALUE;
        float f5 = Float.MAX_VALUE;
        for (int i5 = 0; i5 < list.size(); i5++) {
            ((ak) list.get(i5)).getClass();
            float abs = Math.abs(0.0f - f);
            if (0.0f <= f && abs <= f2) {
                i = i5;
                f2 = abs;
            }
            if (0.0f > f && abs <= f4) {
                i3 = i5;
                f4 = abs;
            }
            if (0.0f <= f5) {
                i2 = i5;
                f5 = 0.0f;
            }
            if (0.0f > f3) {
                i4 = i5;
                f3 = 0.0f;
            }
        }
        if (i == -1) {
            i = i2;
        }
        if (i3 == -1) {
            i3 = i4;
        }
        return new hd((ak) list.get(i), (ak) list.get(i3));
    }

    @Override // defpackage.lw
    public final void O(AccessibilityEvent accessibilityEvent) {
        super.O(accessibilityEvent);
        if (u() > 0) {
            accessibilityEvent.setFromIndex(lw.D(t(0)));
            accessibilityEvent.setToIndex(lw.D(t(u() - 1)));
        }
    }

    @Override // defpackage.lw
    public final void W(rw rwVar, vw vwVar) {
        if (vwVar.b() <= 0) {
            b0(rwVar);
            return;
        }
        u0();
        View view = rwVar.i(0, Long.MAX_VALUE).a;
        c2.g("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // defpackage.lw
    public final void X(vw vwVar) {
        if (u() == 0) {
            return;
        }
        lw.D(t(0));
    }

    @Override // defpackage.lw
    public final boolean c() {
        return t0();
    }

    @Override // defpackage.lw
    public final boolean d() {
        return !t0();
    }

    @Override // defpackage.lw
    public final boolean f0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    @Override // defpackage.lw
    public final int h0(int i, rw rwVar, vw vwVar) {
        if (t0()) {
            v0(i, rwVar, vwVar);
        }
        return 0;
    }

    @Override // defpackage.lw
    public final int i(vw vwVar) {
        throw null;
    }

    @Override // defpackage.lw
    public final int i0(int i, rw rwVar, vw vwVar) {
        if (d()) {
            v0(i, rwVar, vwVar);
        }
        return 0;
    }

    @Override // defpackage.lw
    public final int j(vw vwVar) {
        return this.o;
    }

    @Override // defpackage.lw
    public final int k(vw vwVar) {
        return 0 - 0;
    }

    @Override // defpackage.lw
    public final int l(vw vwVar) {
        throw null;
    }

    @Override // defpackage.lw
    public final int m(vw vwVar) {
        return this.o;
    }

    @Override // defpackage.lw
    public final int n(vw vwVar) {
        return 0 - 0;
    }

    @Override // defpackage.lw
    public final mw q() {
        return new mw(-2, -2);
    }

    public final boolean t0() {
        if (this.p.a == 0) {
            return true;
        }
        return false;
    }

    public final boolean u0() {
        if (t0() && y() == 1) {
            return true;
        }
        return false;
    }

    public final int v0(int i, rw rwVar, vw vwVar) {
        if (u() != 0 && i != 0) {
            int i2 = this.o;
            int i3 = i2 + i;
            if (i3 < 0 || i3 > 0) {
                i = 0 - i2;
            }
            this.o = i2 + i;
            u0();
            throw null;
        }
        return 0;
    }

    public final void w0(int i) {
        i9 i9Var;
        if (i != 0 && i != 1) {
            c2.n(t20.d(i, "invalid orientation:"));
            return;
        }
        b(null);
        i9 i9Var2 = this.p;
        if (i9Var2 != null && i == i9Var2.a) {
            return;
        }
        if (i != 0) {
            if (i == 1) {
                i9Var = new i9(this, 0);
            } else {
                c2.n("invalid orientation");
                return;
            }
        } else {
            i9Var = new i9(this, 1);
        }
        this.p = i9Var;
        g0();
    }

    @Override // defpackage.lw
    public final void x(View view, Rect rect) {
        super.x(view, rect);
        rect.centerX();
        throw null;
    }

    public CarouselLayoutManager() {
        new h9();
        g0();
        w0(0);
    }
}
