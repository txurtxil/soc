package defpackage;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;
/* renamed from: r80  reason: default package */
/* loaded from: classes.dex */
public final class r80 extends s8 {
    public final /* synthetic */ int j;
    public final /* synthetic */ t80 k;

    public /* synthetic */ r80(t80 t80Var, int i) {
        this.j = i;
        this.k = t80Var;
    }

    @Override // defpackage.j80
    public final void b() {
        View view;
        int i = this.j;
        t80 t80Var = this.k;
        switch (i) {
            case 0:
                if (t80Var.G && (view = t80Var.y) != null) {
                    view.setTranslationY(0.0f);
                    t80Var.v.setTranslationY(0.0f);
                }
                t80Var.v.setVisibility(8);
                t80Var.v.setTransitioning(false);
                t80Var.K = null;
                ko koVar = t80Var.C;
                if (koVar != null) {
                    koVar.D(t80Var.B);
                    t80Var.B = null;
                    t80Var.C = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = t80Var.u;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = u70.a;
                    h70.c(actionBarOverlayLayout);
                    return;
                }
                return;
            default:
                t80Var.K = null;
                t80Var.v.requestLayout();
                return;
        }
    }
}
