package defpackage;

import java.util.WeakHashMap;
/* renamed from: gl  reason: default package */
/* loaded from: classes.dex */
public final class gl implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ jl b;

    public /* synthetic */ gl(jl jlVar, int i) {
        this.a = i;
        this.b = jlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        jl jlVar = this.b;
        switch (i) {
            case 0:
                dd ddVar = jlVar.c;
                if (ddVar != null) {
                    ddVar.setListSelectionHidden(true);
                    ddVar.requestLayout();
                    return;
                }
                return;
            default:
                dd ddVar2 = jlVar.c;
                if (ddVar2 != null) {
                    WeakHashMap weakHashMap = u70.a;
                    if (g70.b(ddVar2) && jlVar.c.getCount() > jlVar.c.getChildCount() && jlVar.c.getChildCount() <= jlVar.m) {
                        jlVar.A.setInputMethodMode(2);
                        jlVar.d();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
