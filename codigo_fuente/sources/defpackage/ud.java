package defpackage;

import java.util.concurrent.ThreadPoolExecutor;
/* renamed from: ud  reason: default package */
/* loaded from: classes.dex */
public final class ud extends qj {
    public final /* synthetic */ qj g;
    public final /* synthetic */ ThreadPoolExecutor h;

    public ud(qj qjVar, ThreadPoolExecutor threadPoolExecutor) {
        this.g = qjVar;
        this.h = threadPoolExecutor;
    }

    @Override // defpackage.qj
    public final void r(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.h;
        try {
            this.g.r(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // defpackage.qj
    public final void s(vp vpVar) {
        ThreadPoolExecutor threadPoolExecutor = this.h;
        try {
            this.g.s(vpVar);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
