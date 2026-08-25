package defpackage;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: we  reason: default package */
/* loaded from: classes.dex */
public final class we extends ow {
    public final /* synthetic */ ye a;

    public we(ye yeVar) {
        this.a = yeVar;
    }

    @Override // defpackage.ow
    public final void a(RecyclerView recyclerView) {
        boolean z;
        boolean z2;
        int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        ye yeVar = this.a;
        int i = yeVar.a;
        int computeVerticalScrollRange = yeVar.s.computeVerticalScrollRange();
        int i2 = yeVar.r;
        if (computeVerticalScrollRange - i2 > 0 && i2 >= i) {
            z = true;
        } else {
            z = false;
        }
        yeVar.t = z;
        int computeHorizontalScrollRange = yeVar.s.computeHorizontalScrollRange();
        int i3 = yeVar.q;
        if (computeHorizontalScrollRange - i3 > 0 && i3 >= i) {
            z2 = true;
        } else {
            z2 = false;
        }
        yeVar.u = z2;
        boolean z3 = yeVar.t;
        if (!z3 && !z2) {
            if (yeVar.v != 0) {
                yeVar.f(0);
                return;
            }
            return;
        }
        if (z3) {
            float f = i2;
            yeVar.l = (int) ((((f / 2.0f) + computeVerticalScrollOffset) * f) / computeVerticalScrollRange);
            yeVar.k = Math.min(i2, (i2 * i2) / computeVerticalScrollRange);
        }
        if (yeVar.u) {
            float f2 = computeHorizontalScrollOffset;
            float f3 = i3;
            yeVar.o = (int) ((((f3 / 2.0f) + f2) * f3) / computeHorizontalScrollRange);
            yeVar.n = Math.min(i3, (i3 * i3) / computeHorizontalScrollRange);
        }
        int i4 = yeVar.v;
        if (i4 != 0 && i4 != 1) {
            return;
        }
        yeVar.f(1);
    }
}
