package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.WeakHashMap;
/* renamed from: j9  reason: default package */
/* loaded from: classes.dex */
public final class j9 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ j9(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.a) {
            case 0:
                return;
            case 1:
                View view2 = (View) this.b;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = u70.a;
                h70.c(view2);
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                m9 m9Var = (m9) obj;
                ViewTreeObserver viewTreeObserver = m9Var.y;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        m9Var.y = view.getViewTreeObserver();
                    }
                    m9Var.y.removeGlobalOnLayoutListener(m9Var.i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
            case 1:
                return;
            default:
                b30 b30Var = (b30) obj;
                ViewTreeObserver viewTreeObserver2 = b30Var.o;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        b30Var.o = view.getViewTreeObserver();
                    }
                    b30Var.o.removeGlobalOnLayoutListener(b30Var.i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    private final void c(View view) {
    }
}
