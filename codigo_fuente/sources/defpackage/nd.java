package defpackage;

import java.util.ArrayList;
/* renamed from: nd  reason: default package */
/* loaded from: classes.dex */
public final class nd extends qj {
    public final /* synthetic */ od g;

    public nd(od odVar) {
        this.g = odVar;
    }

    @Override // defpackage.qj
    public final void r(Throwable th) {
        this.g.a.d(th);
    }

    @Override // defpackage.qj
    public final void s(vp vpVar) {
        od odVar = this.g;
        odVar.c = vpVar;
        odVar.b = new ko(odVar.c, new hd(9), odVar.a.h);
        td tdVar = odVar.a;
        ArrayList arrayList = new ArrayList();
        tdVar.a.writeLock().lock();
        try {
            tdVar.c = 1;
            arrayList.addAll(tdVar.b);
            tdVar.b.clear();
            tdVar.a.writeLock().unlock();
            tdVar.d.post(new rd(arrayList, tdVar.c, null));
        } catch (Throwable th) {
            tdVar.a.writeLock().unlock();
            throw th;
        }
    }
}
