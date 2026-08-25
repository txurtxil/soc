package defpackage;

import androidx.activity.b;
/* renamed from: cs  reason: default package */
/* loaded from: classes.dex */
public final class cs implements p8 {
    public final bg a;
    public final /* synthetic */ b b;

    public cs(b bVar, bg bgVar) {
        bgVar.getClass();
        this.b = bVar;
        this.a = bgVar;
    }

    @Override // defpackage.p8
    public final void cancel() {
        b bVar = this.b;
        s6 s6Var = bVar.b;
        bg bgVar = this.a;
        s6Var.remove(bgVar);
        if (qj.c(bVar.c, bgVar)) {
            bgVar.getClass();
            bVar.c = null;
        }
        bgVar.getClass();
        bgVar.b.remove(this);
        rg rgVar = bgVar.c;
        if (rgVar != null) {
            rgVar.a();
        }
        bgVar.c = null;
    }
}
