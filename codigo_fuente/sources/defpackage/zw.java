package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: zw  reason: default package */
/* loaded from: classes.dex */
public class zw extends w {
    public final RecyclerView d;
    public final yw e;

    public zw(RecyclerView recyclerView) {
        this.d = recyclerView;
        w j = j();
        if (j != null && (j instanceof yw)) {
            this.e = (yw) j;
        } else {
            this.e = new yw(this);
        }
    }

    @Override // defpackage.w
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !this.d.I()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().O(accessibilityEvent);
            }
        }
    }

    @Override // defpackage.w
    public final void d(View view, g0 g0Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = g0Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        RecyclerView recyclerView = this.d;
        if (!recyclerView.I() && recyclerView.getLayoutManager() != null) {
            lw layoutManager = recyclerView.getLayoutManager();
            RecyclerView recyclerView2 = layoutManager.b;
            rw rwVar = recyclerView2.b;
            vw vwVar = recyclerView2.e0;
            if (recyclerView2.canScrollVertically(-1) || layoutManager.b.canScrollHorizontally(-1)) {
                accessibilityNodeInfo.addAction(8192);
                accessibilityNodeInfo.setScrollable(true);
            }
            if (layoutManager.b.canScrollVertically(1) || layoutManager.b.canScrollHorizontally(1)) {
                accessibilityNodeInfo.addAction(4096);
                accessibilityNodeInfo.setScrollable(true);
            }
            accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(layoutManager.F(rwVar, vwVar), layoutManager.w(rwVar, vwVar), false, 0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0082 A[ADDED_TO_REGION] */
    @Override // defpackage.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(android.view.View r3, int r4, android.os.Bundle r5) {
        /*
            r2 = this;
            boolean r3 = super.g(r3, r4, r5)
            r5 = 1
            if (r3 == 0) goto L8
            return r5
        L8:
            androidx.recyclerview.widget.RecyclerView r2 = r2.d
            boolean r3 = r2.I()
            r0 = 0
            if (r3 != 0) goto L8b
            lw r3 = r2.getLayoutManager()
            if (r3 == 0) goto L8b
            lw r2 = r2.getLayoutManager()
            androidx.recyclerview.widget.RecyclerView r3 = r2.b
            rw r1 = r3.b
            r1 = 4096(0x1000, float:5.74E-42)
            if (r4 == r1) goto L58
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r4 == r1) goto L2a
            r3 = r0
            r4 = r3
            goto L80
        L2a:
            r4 = -1
            boolean r3 = r3.canScrollVertically(r4)
            if (r3 == 0) goto L3f
            int r3 = r2.n
            int r1 = r2.C()
            int r3 = r3 - r1
            int r1 = r2.z()
            int r3 = r3 - r1
            int r3 = -r3
            goto L40
        L3f:
            r3 = r0
        L40:
            androidx.recyclerview.widget.RecyclerView r1 = r2.b
            boolean r4 = r1.canScrollHorizontally(r4)
            if (r4 == 0) goto L56
            int r4 = r2.m
            int r1 = r2.A()
            int r4 = r4 - r1
            int r1 = r2.B()
            int r4 = r4 - r1
            int r4 = -r4
            goto L80
        L56:
            r4 = r0
            goto L80
        L58:
            boolean r3 = r3.canScrollVertically(r5)
            if (r3 == 0) goto L6b
            int r3 = r2.n
            int r4 = r2.C()
            int r3 = r3 - r4
            int r4 = r2.z()
            int r3 = r3 - r4
            goto L6c
        L6b:
            r3 = r0
        L6c:
            androidx.recyclerview.widget.RecyclerView r4 = r2.b
            boolean r4 = r4.canScrollHorizontally(r5)
            if (r4 == 0) goto L56
            int r4 = r2.m
            int r1 = r2.A()
            int r4 = r4 - r1
            int r1 = r2.B()
            int r4 = r4 - r1
        L80:
            if (r3 != 0) goto L85
            if (r4 != 0) goto L85
            goto L8b
        L85:
            androidx.recyclerview.widget.RecyclerView r2 = r2.b
            r2.X(r4, r3, r5)
            return r5
        L8b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zw.g(android.view.View, int, android.os.Bundle):boolean");
    }

    public w j() {
        return this.e;
    }
}
