package defpackage;

import android.view.View;
import java.lang.ref.WeakReference;
/* renamed from: h80  reason: default package */
/* loaded from: classes.dex */
public final class h80 {
    public final WeakReference a;

    public h80(View view) {
        this.a = new WeakReference(view);
    }

    public final void a(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b() {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
    }

    public final void d(j80 j80Var) {
        View view = (View) this.a.get();
        if (view != null) {
            if (j80Var != null) {
                view.animate().setListener(new t0(j80Var, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f) {
        View view = (View) this.a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
