package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* renamed from: p  reason: default package */
/* loaded from: classes.dex */
public final class p extends gn {
    public final AtomicReferenceFieldUpdater k;
    public final AtomicReferenceFieldUpdater l;
    public final AtomicReferenceFieldUpdater m;
    public final AtomicReferenceFieldUpdater n;
    public final AtomicReferenceFieldUpdater o;

    public p(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.k = atomicReferenceFieldUpdater;
        this.l = atomicReferenceFieldUpdater2;
        this.m = atomicReferenceFieldUpdater3;
        this.n = atomicReferenceFieldUpdater4;
        this.o = atomicReferenceFieldUpdater5;
    }

    @Override // defpackage.gn
    public final boolean d(s sVar, o oVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.n;
            if (atomicReferenceFieldUpdater.compareAndSet(sVar, oVar, o.b)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(sVar) == oVar);
        return false;
    }

    @Override // defpackage.gn
    public final boolean e(s sVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.o;
            if (atomicReferenceFieldUpdater.compareAndSet(sVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(sVar) == obj);
        return false;
    }

    @Override // defpackage.gn
    public final boolean f(s sVar, r rVar, r rVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.m;
            if (atomicReferenceFieldUpdater.compareAndSet(sVar, rVar, rVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(sVar) == rVar);
        return false;
    }

    @Override // defpackage.gn
    public final void u(r rVar, r rVar2) {
        this.l.lazySet(rVar, rVar2);
    }

    @Override // defpackage.gn
    public final void v(r rVar, Thread thread) {
        this.k.lazySet(rVar, thread);
    }
}
