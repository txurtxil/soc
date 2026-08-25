package defpackage;

import androidx.appcompat.widget.ActionBarContextView;
/* renamed from: c  reason: default package */
/* loaded from: classes.dex */
public final class c implements j80 {
    public boolean a = false;
    public int b;
    public final /* synthetic */ ActionBarContextView c;

    public c(ActionBarContextView actionBarContextView) {
        this.c = actionBarContextView;
    }

    @Override // defpackage.j80
    public final void b() {
        if (this.a) {
            return;
        }
        ActionBarContextView actionBarContextView = this.c;
        actionBarContextView.f = null;
        super/*android.view.View*/.setVisibility(this.b);
    }

    @Override // defpackage.j80
    public final void c() {
        this.a = true;
    }

    @Override // defpackage.j80
    public final void g() {
        super/*android.view.View*/.setVisibility(0);
        this.a = false;
    }
}
