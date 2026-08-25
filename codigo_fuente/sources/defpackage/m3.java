package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;
/* renamed from: m3  reason: default package */
/* loaded from: classes.dex */
public final class m3 extends s8 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ m3(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // defpackage.j80
    public final void b() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                w3 w3Var = ((k3) obj).b;
                w3Var.v.setAlpha(1.0f);
                w3Var.y.d(null);
                w3Var.y = null;
                return;
            case 1:
                w3 w3Var2 = (w3) obj;
                w3Var2.v.setAlpha(1.0f);
                w3Var2.y.d(null);
                w3Var2.y = null;
                return;
            default:
                w3 w3Var3 = (w3) ((ko) obj).c;
                w3Var3.v.setVisibility(8);
                PopupWindow popupWindow = w3Var3.w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (w3Var3.v.getParent() instanceof View) {
                    WeakHashMap weakHashMap = u70.a;
                    h70.c((View) w3Var3.v.getParent());
                }
                w3Var3.v.e();
                w3Var3.y.d(null);
                w3Var3.y = null;
                ViewGroup viewGroup = w3Var3.A;
                WeakHashMap weakHashMap2 = u70.a;
                h70.c(viewGroup);
                return;
        }
    }

    @Override // defpackage.s8, defpackage.j80
    public void g() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                ((k3) obj).b.v.setVisibility(0);
                return;
            case 1:
                w3 w3Var = (w3) obj;
                w3Var.v.setVisibility(0);
                if (w3Var.v.getParent() instanceof View) {
                    WeakHashMap weakHashMap = u70.a;
                    h70.c((View) w3Var.v.getParent());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
