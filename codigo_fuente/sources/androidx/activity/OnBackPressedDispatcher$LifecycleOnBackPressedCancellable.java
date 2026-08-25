package androidx.activity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements qk, p8 {
    public final nk a;
    public final bg b;
    public cs c;
    public final /* synthetic */ b d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(b bVar, nk nkVar, bg bgVar) {
        bgVar.getClass();
        this.d = bVar;
        this.a = nkVar;
        this.b = bgVar;
        nkVar.a(this);
    }

    @Override // defpackage.p8
    public final void cancel() {
        this.a.b(this);
        bg bgVar = this.b;
        bgVar.getClass();
        bgVar.b.remove(this);
        cs csVar = this.c;
        if (csVar != null) {
            csVar.cancel();
        }
        this.c = null;
    }

    @Override // defpackage.qk
    public final void g(sk skVar, lk lkVar) {
        if (lkVar == lk.ON_START) {
            b bVar = this.d;
            bVar.getClass();
            bg bgVar = this.b;
            bgVar.getClass();
            bVar.b.addLast(bgVar);
            cs csVar = new cs(bVar, bgVar);
            bgVar.b.add(csVar);
            bVar.d();
            bgVar.c = new ds(1, bVar);
            this.c = csVar;
        } else if (lkVar == lk.ON_STOP) {
            cs csVar2 = this.c;
            if (csVar2 != null) {
                csVar2.cancel();
            }
        } else if (lkVar == lk.ON_DESTROY) {
            cancel();
        }
    }
}
