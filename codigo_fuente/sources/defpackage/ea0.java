package defpackage;

import android.view.View;
import java.lang.ref.WeakReference;
/* renamed from: ea0  reason: default package */
/* loaded from: classes.dex */
public final class ea0 {
    public WeakReference a;

    public final void a(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b(long j) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    public final void c(k60 k60Var) {
        View view = (View) this.a.get();
        if (view != null) {
            if (k60Var != null) {
                view.animate().setListener(new fa0(k60Var, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void d() {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
