package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.utils.e;
import androidx.lifecycle.a;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
/* renamed from: x5  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class x5 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ x5(nk nkVar, hx hxVar, String str) {
        this.a = 4;
        this.b = nkVar;
        this.d = hxVar;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z = false;
        switch (this.a) {
            case 0:
                Context context = (Context) this.b;
                ExecutorService executorService = z5.a;
                context.getClass();
                z5.b.post(new y5((ch) this.d, 0, z5.a(context, (String) this.c, R.drawable.car_toast_horizontal_padding)));
                return;
            case 1:
                Context context2 = (Context) this.b;
                String str = (String) this.c;
                q6 q6Var = (q6) this.d;
                ExecutorService executorService2 = z5.a;
                context2.getClass();
                q6Var.k0.post(new x5(q6Var, str, z5.a(context2, str, R.drawable.car_toast_horizontal_padding), 2));
                return;
            case 2:
                q6 q6Var2 = (q6) this.b;
                String str2 = (String) this.c;
                Drawable drawable = (Drawable) this.d;
                ImageView imageView = (ImageView) q6Var2.m0.remove(str2);
                if (drawable != null) {
                    q6Var2.l0.put(str2, drawable);
                    if (imageView != null) {
                        obj = imageView.getTag();
                    } else {
                        obj = null;
                    }
                    if (qj.c(obj, str2)) {
                        imageView.setImageDrawable(drawable);
                        return;
                    }
                    return;
                }
                return;
            case 3:
                c9 c9Var = (c9) this.b;
                qj qjVar = (qj) this.c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.d;
                try {
                    ef h = em.h((Context) c9Var.b);
                    if (h != null) {
                        df dfVar = (df) ((sd) h.b);
                        synchronized (dfVar.d) {
                            dfVar.f = threadPoolExecutor;
                        }
                        ((sd) h.b).c(new ud(qjVar, threadPoolExecutor));
                        return;
                    }
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                } catch (Throwable th) {
                    qjVar.r(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 4:
                nk nkVar = (nk) this.b;
                hx hxVar = (hx) this.d;
                String str3 = (String) this.c;
                if (nkVar != null) {
                    try {
                        if (((a) nkVar).c.compareTo(mk.c) >= 0) {
                            z = true;
                        }
                        if (z) {
                            hxVar.b();
                            return;
                        }
                    } catch (b8 e) {
                        Log.e("CarApp.Dispatch", "Serialization failure in ".concat(str3), e);
                        return;
                    }
                }
                Log.w("CarApp.Dispatch", "Lifecycle is not at least created when dispatching " + hxVar);
                return;
            default:
                IOnDoneCallback iOnDoneCallback = (IOnDoneCallback) this.b;
                String str4 = (String) this.c;
                try {
                    e.g(iOnDoneCallback, str4, ((hx) this.d).b());
                    return;
                } catch (b8 e2) {
                    e.f(iOnDoneCallback, str4, e2);
                    return;
                } catch (RuntimeException e3) {
                    e.f(iOnDoneCallback, str4, e3);
                    c2.k(e3);
                    return;
                }
        }
    }

    public /* synthetic */ x5(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }
}
