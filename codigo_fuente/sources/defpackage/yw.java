package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;
/* renamed from: yw  reason: default package */
/* loaded from: classes.dex */
public final class yw extends w {
    public final zw d;
    public final WeakHashMap e = new WeakHashMap();

    public yw(zw zwVar) {
        this.d = zwVar;
    }

    @Override // defpackage.w
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        w wVar = (w) this.e.get(view);
        if (wVar != null) {
            return wVar.a(view, accessibilityEvent);
        }
        return this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // defpackage.w
    public final c9 b(View view) {
        w wVar = (w) this.e.get(view);
        if (wVar != null) {
            return wVar.b(view);
        }
        return super.b(view);
    }

    @Override // defpackage.w
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        w wVar = (w) this.e.get(view);
        if (wVar != null) {
            wVar.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // defpackage.w
    public final void d(View view, g0 g0Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = g0Var.a;
        zw zwVar = this.d;
        RecyclerView recyclerView = zwVar.d;
        RecyclerView recyclerView2 = zwVar.d;
        boolean I = recyclerView.I();
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        if (!I && recyclerView2.getLayoutManager() != null) {
            recyclerView2.getLayoutManager().Q(view, g0Var);
            w wVar = (w) this.e.get(view);
            if (wVar != null) {
                wVar.d(view, g0Var);
                return;
            } else {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                return;
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // defpackage.w
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        w wVar = (w) this.e.get(view);
        if (wVar != null) {
            wVar.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // defpackage.w
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        w wVar = (w) this.e.get(viewGroup);
        if (wVar != null) {
            return wVar.f(viewGroup, view, accessibilityEvent);
        }
        return this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // defpackage.w
    public final boolean g(View view, int i, Bundle bundle) {
        zw zwVar = this.d;
        RecyclerView recyclerView = zwVar.d;
        RecyclerView recyclerView2 = zwVar.d;
        if (!recyclerView.I() && recyclerView2.getLayoutManager() != null) {
            w wVar = (w) this.e.get(view);
            if (wVar != null) {
                if (wVar.g(view, i, bundle)) {
                    return true;
                }
            } else if (super.g(view, i, bundle)) {
                return true;
            }
            rw rwVar = recyclerView2.getLayoutManager().b.b;
            return false;
        }
        return super.g(view, i, bundle);
    }

    @Override // defpackage.w
    public final void h(View view, int i) {
        w wVar = (w) this.e.get(view);
        if (wVar != null) {
            wVar.h(view, i);
        } else {
            super.h(view, i);
        }
    }

    @Override // defpackage.w
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        w wVar = (w) this.e.get(view);
        if (wVar != null) {
            wVar.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
