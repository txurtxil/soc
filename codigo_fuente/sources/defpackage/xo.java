package defpackage;

import android.view.ActionProvider;
/* renamed from: xo  reason: default package */
/* loaded from: classes.dex */
public final class xo implements ActionProvider.VisibilityListener {
    public final ActionProvider a;
    public c9 b;

    public xo(ap apVar, ActionProvider actionProvider) {
        this.a = actionProvider;
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        c9 c9Var = this.b;
        if (c9Var != null) {
            so soVar = ((wo) c9Var.b).n;
            soVar.h = true;
            soVar.p(true);
        }
    }
}
