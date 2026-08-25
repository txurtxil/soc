package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: l7  reason: default package */
/* loaded from: classes.dex */
public final class l7 extends w {
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    public /* synthetic */ l7(int i, Object obj) {
        this.d = i;
        this.e = obj;
    }

    @Override // defpackage.w
    public final void d(View view, g0 g0Var) {
        RecyclerView recyclerView;
        switch (this.d) {
            case 0:
                AccessibilityNodeInfo accessibilityNodeInfo = g0Var.a;
                this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.addAction(1048576);
                accessibilityNodeInfo.setDismissable(true);
                return;
            default:
                mu muVar = (mu) this.e;
                muVar.g.d(view, g0Var);
                RecyclerView recyclerView2 = muVar.f;
                recyclerView2.getClass();
                nu G = RecyclerView.G(view);
                int i = -1;
                if (G != null && (recyclerView = G.r) != null) {
                    i = recyclerView.D(G);
                }
                dw adapter = recyclerView2.getAdapter();
                if (adapter instanceof ju) {
                    ((ju) adapter).e(i);
                    return;
                }
                return;
        }
    }

    @Override // defpackage.w
    public final boolean g(View view, int i, Bundle bundle) {
        boolean z;
        switch (this.d) {
            case 0:
                if (i == 1048576) {
                    vp c = vp.c();
                    m7 m7Var = ((l20) ((p7) this.e)).r;
                    synchronized (c.a) {
                        try {
                            if (c.d(m7Var)) {
                                c.a((n20) c.c, 3);
                            } else {
                                n20 n20Var = (n20) c.d;
                                if (n20Var != null && n20Var.a.get() == m7Var) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (z) {
                                    c.a((n20) c.d, 3);
                                }
                            }
                        } finally {
                        }
                    }
                    return true;
                }
                return super.g(view, i, bundle);
            default:
                return ((mu) this.e).g.g(view, i, bundle);
        }
    }
}
