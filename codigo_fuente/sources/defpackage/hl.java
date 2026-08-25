package defpackage;

import android.widget.AbsListView;
/* renamed from: hl  reason: default package */
/* loaded from: classes.dex */
public final class hl implements AbsListView.OnScrollListener {
    public final /* synthetic */ jl a;

    public hl(jl jlVar) {
        this.a = jlVar;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        jl jlVar = this.a;
        gl glVar = jlVar.s;
        h4 h4Var = jlVar.A;
        if (i == 1 && h4Var.getInputMethodMode() != 2 && h4Var.getContentView() != null) {
            jlVar.w.removeCallbacks(glVar);
            glVar.run();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }
}
