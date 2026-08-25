package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;
/* renamed from: wq  reason: default package */
/* loaded from: classes.dex */
public final class wq extends w {
    @Override // defpackage.w
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        boolean z;
        super.c(view, accessibilityEvent);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityEvent.setClassName(ScrollView.class.getName());
        if (nestedScrollView.getScrollRange() > 0) {
            z = true;
        } else {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
        h0.c(accessibilityEvent, nestedScrollView.getScrollX());
        h0.d(accessibilityEvent, nestedScrollView.getScrollRange());
    }

    @Override // defpackage.w
    public final void d(View view, g0 g0Var) {
        int scrollRange;
        AccessibilityNodeInfo accessibilityNodeInfo = g0Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityNodeInfo.setClassName(ScrollView.class.getName());
        if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
            accessibilityNodeInfo.setScrollable(true);
            if (nestedScrollView.getScrollY() > 0) {
                accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) e0.e.a);
                accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) e0.f.a);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) e0.d.a);
                accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) e0.g.a);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
        if (r5 != 16908346) goto L28;
     */
    @Override // defpackage.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(android.view.View r4, int r5, android.os.Bundle r6) {
        /*
            r3 = this;
            boolean r3 = super.g(r4, r5, r6)
            r6 = 1
            if (r3 == 0) goto L8
            return r6
        L8:
            androidx.core.widget.NestedScrollView r4 = (androidx.core.widget.NestedScrollView) r4
            boolean r3 = r4.isEnabled()
            r0 = 0
            if (r3 != 0) goto L13
            goto L95
        L13:
            int r3 = r4.getHeight()
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            android.graphics.Matrix r2 = r4.getMatrix()
            boolean r2 = r2.isIdentity()
            if (r2 == 0) goto L30
            boolean r2 = r4.getGlobalVisibleRect(r1)
            if (r2 == 0) goto L30
            int r3 = r1.height()
        L30:
            r1 = 4096(0x1000, float:5.74E-42)
            if (r5 == r1) goto L6a
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r5 == r1) goto L43
            r1 = 16908344(0x1020038, float:2.3877386E-38)
            if (r5 == r1) goto L43
            r1 = 16908346(0x102003a, float:2.3877392E-38)
            if (r5 == r1) goto L6a
            goto L95
        L43:
            int r5 = r4.getPaddingBottom()
            int r3 = r3 - r5
            int r5 = r4.getPaddingTop()
            int r3 = r3 - r5
            int r5 = r4.getScrollY()
            int r5 = r5 - r3
            int r3 = java.lang.Math.max(r5, r0)
            int r5 = r4.getScrollY()
            if (r3 == r5) goto L95
            int r5 = r4.getScrollX()
            int r0 = r0 - r5
            int r5 = r4.getScrollY()
            int r3 = r3 - r5
            r4.t(r0, r3, r6)
            return r6
        L6a:
            int r5 = r4.getPaddingBottom()
            int r3 = r3 - r5
            int r5 = r4.getPaddingTop()
            int r3 = r3 - r5
            int r5 = r4.getScrollY()
            int r5 = r5 + r3
            int r3 = r4.getScrollRange()
            int r3 = java.lang.Math.min(r5, r3)
            int r5 = r4.getScrollY()
            if (r3 == r5) goto L95
            int r5 = r4.getScrollX()
            int r0 = r0 - r5
            int r5 = r4.getScrollY()
            int r3 = r3 - r5
            r4.t(r0, r3, r6)
            return r6
        L95:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wq.g(android.view.View, int, android.os.Bundle):boolean");
    }
}
