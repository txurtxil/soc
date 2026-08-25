package defpackage;

import androidx.appcompat.widget.Toolbar;
/* renamed from: v40  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class v40 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Toolbar b;

    public /* synthetic */ v40(Toolbar toolbar, int i) {
        this.a = i;
        this.b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        wo woVar;
        int i = this.a;
        Toolbar toolbar = this.b;
        switch (i) {
            case 0:
                y40 y40Var = toolbar.N;
                if (y40Var == null) {
                    woVar = null;
                } else {
                    woVar = y40Var.b;
                }
                if (woVar != null) {
                    woVar.collapseActionView();
                    return;
                }
                return;
            default:
                toolbar.n();
                return;
        }
    }
}
