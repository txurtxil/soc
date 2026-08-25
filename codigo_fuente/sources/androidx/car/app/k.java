package androidx.car.app;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class k implements fm {
    public final ArrayDeque a = new ArrayDeque();
    public final i b;
    public final androidx.lifecycle.a c;

    public k(i iVar, androidx.lifecycle.a aVar) {
        this.b = iVar;
        this.c = aVar;
        aVar.a(new ac() { // from class: androidx.car.app.ScreenManager$LifecycleObserverImpl
            @Override // defpackage.ac
            public final void a(sk skVar) {
                mq mqVar = (mq) k.this.a.peek();
                if (mqVar == null) {
                    Log.e("CarApp", "Screen stack was empty during lifecycle onPause");
                } else {
                    mqVar.c(lk.ON_PAUSE);
                }
            }

            @Override // defpackage.ac
            public final void b(sk skVar) {
                mq mqVar = (mq) k.this.a.peek();
                if (mqVar == null) {
                    Log.e("CarApp", "Screen stack was empty during lifecycle onStop");
                } else {
                    mqVar.c(lk.ON_STOP);
                }
            }

            @Override // defpackage.ac
            public final void c(sk skVar) {
                mq mqVar = (mq) k.this.a.peek();
                if (mqVar == null) {
                    Log.e("CarApp", "Screen stack was empty during lifecycle onStart");
                } else {
                    mqVar.c(lk.ON_START);
                }
            }

            @Override // defpackage.ac
            public final void d(sk skVar) {
                ArrayDeque arrayDeque = k.this.a;
                Iterator it = new ArrayDeque(arrayDeque).iterator();
                while (it.hasNext()) {
                    k.b((mq) it.next(), true);
                }
                arrayDeque.clear();
                skVar.f().b(this);
            }

            @Override // defpackage.ac
            public final void e(sk skVar) {
                mq mqVar = (mq) k.this.a.peek();
                if (mqVar == null) {
                    Log.e("CarApp", "Screen stack was empty during lifecycle onResume");
                } else {
                    mqVar.c(lk.ON_RESUME);
                }
            }

            @Override // defpackage.ac
            public final void f(sk skVar) {
            }
        });
    }

    public static void b(mq mqVar, boolean z) {
        mk mkVar = mqVar.b.c;
        if (mkVar.compareTo(mk.e) >= 0) {
            mqVar.c(lk.ON_PAUSE);
        }
        if (mkVar.compareTo(mk.d) >= 0) {
            mqVar.c(lk.ON_STOP);
        }
        if (z) {
            mqVar.c(lk.ON_DESTROY);
        }
    }

    /* JADX WARN: Type inference failed for: r4v7, types: [ai, java.lang.Object] */
    public final void a(mq mqVar, boolean z) {
        this.a.push(mqVar);
        mk mkVar = mk.c;
        androidx.lifecycle.a aVar = this.c;
        if (z && aVar.c.compareTo(mkVar) >= 0) {
            mqVar.c(lk.ON_CREATE);
        }
        if (mqVar.b.c.compareTo(mkVar) >= 0 && aVar.c.compareTo(mk.d) >= 0) {
            androidx.car.app.utils.e.d("invalidate", new bi(((b) this.b.b(b.class)).c, "invalidate", new Object()));
            mqVar.c(lk.ON_START);
        }
    }
}
