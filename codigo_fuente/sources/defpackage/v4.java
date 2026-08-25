package defpackage;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
/* renamed from: v4  reason: default package */
/* loaded from: classes.dex */
public final class v4 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ o4 a;
    public final /* synthetic */ w4 b;

    public v4(w4 w4Var, o4 o4Var) {
        this.b = w4Var;
        this.a = o4Var;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.b.H.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.a);
        }
    }
}
