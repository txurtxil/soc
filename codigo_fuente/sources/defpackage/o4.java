package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: o4  reason: default package */
/* loaded from: classes.dex */
public final class o4 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ o4(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                z4 z4Var = (z4) obj;
                if (!z4Var.getInternalPopup().b()) {
                    z4Var.f.n(q4.b(z4Var), q4.a(z4Var));
                }
                ViewTreeObserver viewTreeObserver = z4Var.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    p4.a(viewTreeObserver, this);
                    return;
                }
                return;
            case 1:
                w4 w4Var = (w4) obj;
                z4 z4Var2 = w4Var.H;
                WeakHashMap weakHashMap = u70.a;
                if (g70.b(z4Var2) && z4Var2.getGlobalVisibleRect(w4Var.F)) {
                    w4Var.s();
                    w4Var.d();
                    return;
                }
                w4Var.dismiss();
                return;
            case 2:
                m9 m9Var = (m9) obj;
                ArrayList arrayList = m9Var.h;
                if (m9Var.b() && arrayList.size() > 0) {
                    int i2 = 0;
                    if (!((l9) arrayList.get(0)).a.z) {
                        View view = m9Var.o;
                        if (view != null && view.isShown()) {
                            int size = arrayList.size();
                            while (i2 < size) {
                                Object obj2 = arrayList.get(i2);
                                i2++;
                                ((l9) obj2).a.d();
                            }
                            return;
                        }
                        m9Var.dismiss();
                        return;
                    }
                    return;
                }
                return;
            default:
                b30 b30Var = (b30) obj;
                jp jpVar = b30Var.h;
                if (b30Var.b() && !jpVar.z) {
                    View view2 = b30Var.m;
                    if (view2 != null && view2.isShown()) {
                        jpVar.d();
                        return;
                    } else {
                        b30Var.dismiss();
                        return;
                    }
                }
                return;
        }
    }
}
