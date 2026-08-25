package defpackage;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: g8  reason: default package */
/* loaded from: classes.dex */
public final class g8 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final WeakReference a;
    public final WeakReference b;
    public final WeakReference c;
    public final CharSequence d;

    public g8(h8 h8Var, Context context, Toolbar toolbar) {
        this.a = new WeakReference(h8Var);
        this.b = new WeakReference(context);
        this.c = new WeakReference(toolbar);
        this.d = toolbar.getSubtitle();
        toolbar.setSubtitle(" ");
    }

    public final void a(Toolbar toolbar) {
        toolbar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        Toolbar toolbar = (Toolbar) this.c.get();
        Context context = (Context) this.b.get();
        h8 h8Var = (h8) this.a.get();
        if (toolbar == null) {
            return;
        }
        if (h8Var != null && context != null) {
            int childCount = toolbar.getChildCount();
            if (childCount != 0) {
                for (int i = 0; i < childCount; i++) {
                    h8Var.d(toolbar.getChildAt(i), context, null);
                }
            }
            a(toolbar);
            toolbar.setSubtitle(this.d);
            return;
        }
        a(toolbar);
    }
}
