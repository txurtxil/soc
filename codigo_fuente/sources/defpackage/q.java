package defpackage;
/* renamed from: q  reason: default package */
/* loaded from: classes.dex */
public final class q extends gn {
    @Override // defpackage.gn
    public final boolean d(s sVar, o oVar) {
        o oVar2 = o.b;
        synchronized (sVar) {
            try {
                if (sVar.b == oVar) {
                    sVar.b = oVar2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.gn
    public final boolean e(s sVar, Object obj, Object obj2) {
        synchronized (sVar) {
            try {
                if (sVar.a == obj) {
                    sVar.a = obj2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.gn
    public final boolean f(s sVar, r rVar, r rVar2) {
        synchronized (sVar) {
            try {
                if (sVar.c == rVar) {
                    sVar.c = rVar2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.gn
    public final void u(r rVar, r rVar2) {
        rVar.b = rVar2;
    }

    @Override // defpackage.gn
    public final void v(r rVar, Thread thread) {
        rVar.a = thread;
    }
}
