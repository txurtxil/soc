package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
/* renamed from: y40  reason: default package */
/* loaded from: classes.dex */
public final class y40 implements lp {
    public so a;
    public wo b;
    public final /* synthetic */ Toolbar c;

    public y40(Toolbar toolbar) {
        this.c = toolbar;
    }

    @Override // defpackage.lp
    public final boolean c(wo woVar) {
        Toolbar toolbar = this.c;
        View view = toolbar.i;
        if (view instanceof u9) {
            ((u9) view).onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.i);
        toolbar.removeView(toolbar.h);
        toolbar.i = null;
        ArrayList arrayList = toolbar.F;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.b = null;
        toolbar.requestLayout();
        woVar.C = false;
        woVar.n.p(false);
        toolbar.w();
        return true;
    }

    @Override // defpackage.lp
    public final boolean f(wo woVar) {
        Toolbar toolbar = this.c;
        toolbar.c();
        ViewParent parent = toolbar.h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.h);
            }
            toolbar.addView(toolbar.h);
        }
        View actionView = woVar.getActionView();
        toolbar.i = actionView;
        this.b = woVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.i);
            }
            z40 h = Toolbar.h();
            h.a = (toolbar.n & 112) | 8388611;
            h.b = 2;
            toolbar.i.setLayoutParams(h);
            toolbar.addView(toolbar.i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((z40) childAt.getLayoutParams()).b != 2 && childAt != toolbar.a) {
                toolbar.removeViewAt(childCount);
                toolbar.F.add(childAt);
            }
        }
        toolbar.requestLayout();
        woVar.C = true;
        woVar.n.p(false);
        View view = toolbar.i;
        if (view instanceof u9) {
            ((u9) view).onActionViewExpanded();
        }
        toolbar.w();
        return true;
    }

    @Override // defpackage.lp
    public final void g() {
        if (this.b != null) {
            so soVar = this.a;
            if (soVar != null) {
                int size = soVar.f.size();
                for (int i = 0; i < size; i++) {
                    if (this.a.getItem(i) == this.b) {
                        return;
                    }
                }
            }
            c(this.b);
        }
    }

    @Override // defpackage.lp
    public final void i(Context context, so soVar) {
        wo woVar;
        so soVar2 = this.a;
        if (soVar2 != null && (woVar = this.b) != null) {
            soVar2.d(woVar);
        }
        this.a = soVar;
    }

    @Override // defpackage.lp
    public final boolean j(j30 j30Var) {
        return false;
    }

    @Override // defpackage.lp
    public final boolean k() {
        return false;
    }

    @Override // defpackage.lp
    public final void a(so soVar, boolean z) {
    }
}
