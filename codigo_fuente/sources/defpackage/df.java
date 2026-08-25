package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: df  reason: default package */
/* loaded from: classes.dex */
public final class df implements sd {
    public final Context a;
    public final cf b;
    public final hd c;
    public final Object d = new Object();
    public Handler e;
    public ThreadPoolExecutor f;
    public ThreadPoolExecutor g;
    public qj h;

    public df(cf cfVar, Context context) {
        qj.d(context, "Context cannot be null");
        this.a = context.getApplicationContext();
        this.b = cfVar;
        this.c = ef.d;
    }

    public final void a() {
        synchronized (this.d) {
            try {
                this.h = null;
                Handler handler = this.e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.e = null;
                ThreadPoolExecutor threadPoolExecutor = this.g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final pf b() {
        try {
            hd hdVar = this.c;
            Context context = this.a;
            cf cfVar = this.b;
            hdVar.getClass();
            n2 k = em.k(cfVar, context);
            int i = k.b;
            if (i == 0) {
                pf[] pfVarArr = (pf[]) k.c;
                if (pfVarArr != null && pfVarArr.length != 0) {
                    return pfVarArr[0];
                }
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            throw new RuntimeException("fetchFonts failed (" + i + ")");
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("provider not found", e);
        }
    }

    @Override // defpackage.sd
    public final void c(qj qjVar) {
        synchronized (this.d) {
            this.h = qjVar;
        }
        synchronized (this.d) {
            try {
                if (this.h == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new na("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.g = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new m1(7, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
