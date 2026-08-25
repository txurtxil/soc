package defpackage;

import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.WeakHashMap;
/* renamed from: xw  reason: default package */
/* loaded from: classes.dex */
public final class xw implements Runnable {
    public int a;
    public int b;
    public OverScroller c;
    public Interpolator d;
    public boolean e;
    public boolean f;
    public final /* synthetic */ RecyclerView g;

    public xw(RecyclerView recyclerView) {
        this.g = recyclerView;
        bw bwVar = RecyclerView.w0;
        this.d = bwVar;
        this.e = false;
        this.f = false;
        this.c = new OverScroller(recyclerView.getContext(), bwVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        boolean awakenScrollBars;
        boolean z;
        boolean z2;
        boolean z3;
        int i5;
        RecyclerView recyclerView = this.g;
        int[] iArr = recyclerView.q0;
        if (recyclerView.m == null) {
            recyclerView.removeCallbacks(this);
            this.c.abortAnimation();
            return;
        }
        this.f = false;
        this.e = true;
        recyclerView.k();
        OverScroller overScroller = this.c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i6 = currX - this.a;
            int i7 = currY - this.b;
            this.a = currX;
            this.b = currY;
            int[] iArr2 = recyclerView.q0;
            iArr2[0] = 0;
            iArr2[1] = 0;
            if (recyclerView.p(i6, i7, iArr2, null, 1)) {
                i = i6 - iArr[0];
                i2 = i7 - iArr[1];
            } else {
                i = i6;
                i2 = i7;
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.j(i, i2);
            }
            if (recyclerView.l != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                recyclerView.W(i, i2, iArr);
                i3 = iArr[0];
                i4 = iArr[1];
                i -= i3;
                i2 -= i4;
                recyclerView.m.getClass();
            } else {
                i3 = 0;
                i4 = 0;
            }
            if (!recyclerView.n.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.q0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            recyclerView.q(i3, i4, i, i2, null, 1, iArr3);
            int i8 = i - iArr[0];
            int i9 = i2 - iArr[1];
            if (i3 != 0 || i4 != 0) {
                recyclerView.r(i3, i4);
            }
            awakenScrollBars = recyclerView.awakenScrollBars();
            if (!awakenScrollBars) {
                recyclerView.invalidate();
            }
            if (overScroller.getCurrX() == overScroller.getFinalX()) {
                z = true;
            } else {
                z = false;
            }
            if (overScroller.getCurrY() == overScroller.getFinalY()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!overScroller.isFinished() && ((!z && i8 == 0) || (!z2 && i9 == 0))) {
                z3 = false;
            } else {
                z3 = true;
            }
            recyclerView.m.getClass();
            if (z3) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i8 < 0) {
                        i5 = -currVelocity;
                    } else if (i8 > 0) {
                        i5 = currVelocity;
                    } else {
                        i5 = 0;
                    }
                    if (i9 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i9 <= 0) {
                        currVelocity = 0;
                    }
                    if (i5 < 0) {
                        recyclerView.t();
                        if (recyclerView.G.isFinished()) {
                            recyclerView.G.onAbsorb(-i5);
                        }
                    } else if (i5 > 0) {
                        recyclerView.u();
                        if (recyclerView.I.isFinished()) {
                            recyclerView.I.onAbsorb(i5);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.v();
                        if (recyclerView.H.isFinished()) {
                            recyclerView.H.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.s();
                        if (recyclerView.J.isFinished()) {
                            recyclerView.J.onAbsorb(currVelocity);
                        }
                    }
                    if (i5 != 0 || currVelocity != 0) {
                        WeakHashMap weakHashMap = u70.a;
                        e70.k(recyclerView);
                    }
                }
                oh ohVar = recyclerView.d0;
                int[] iArr4 = ohVar.c;
                if (iArr4 != null) {
                    Arrays.fill(iArr4, -1);
                }
                ohVar.d = 0;
            } else {
                if (this.e) {
                    this.f = true;
                } else {
                    recyclerView.removeCallbacks(this);
                    WeakHashMap weakHashMap2 = u70.a;
                    e70.m(recyclerView, this);
                }
                qh qhVar = recyclerView.c0;
                if (qhVar != null) {
                    qhVar.a(recyclerView, i3, i4);
                }
            }
        }
        recyclerView.m.getClass();
        this.e = false;
        if (this.f) {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap3 = u70.a;
            e70.m(recyclerView, this);
            return;
        }
        recyclerView.setScrollState(0);
        recyclerView.a0(1);
    }
}
