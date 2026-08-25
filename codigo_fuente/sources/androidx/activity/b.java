package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Iterator;
import java.util.ListIterator;
/* loaded from: classes.dex */
public final class b {
    public final Runnable a;
    public final s6 b = new s6();
    public bg c;
    public final OnBackInvokedCallback d;
    public OnBackInvokedDispatcher e;
    public boolean f;
    public boolean g;

    public b(Runnable runnable) {
        OnBackInvokedCallback a;
        this.a = runnable;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            if (i >= 34) {
                a = bs.a.a(new xr(this, 0), new xr(this, 1), new yr(0, this), new yr(1, this));
            } else {
                a = zr.a.a(new yr(2, this));
            }
            this.d = a;
        }
    }

    public final void a(sk skVar, bg bgVar) {
        bgVar.getClass();
        androidx.lifecycle.a f = skVar.f();
        if (f.c == mk.a) {
            return;
        }
        bgVar.b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, f, bgVar));
        d();
        bgVar.c = new ds(0, this);
    }

    public final void b() {
        Object obj;
        s6 s6Var = this.b;
        ListIterator listIterator = s6Var.listIterator(s6Var.c);
        while (true) {
            if (listIterator.hasPrevious()) {
                obj = listIterator.previous();
                if (((bg) obj).a) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        bg bgVar = (bg) obj;
        this.c = null;
        if (bgVar != null) {
            androidx.fragment.app.a aVar = bgVar.d;
            aVar.w(true);
            if (aVar.h.a) {
                aVar.K();
                return;
            } else {
                aVar.g.b();
                return;
            }
        }
        this.a.run();
    }

    public final void c(boolean z) {
        OnBackInvokedCallback onBackInvokedCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.e;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.d) != null) {
            zr zrVar = zr.a;
            if (z && !this.f) {
                zrVar.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
                this.f = true;
            } else if (!z && this.f) {
                zrVar.c(onBackInvokedDispatcher, onBackInvokedCallback);
                this.f = false;
            }
        }
    }

    public final void d() {
        boolean z = this.g;
        boolean z2 = false;
        s6 s6Var = this.b;
        if (s6Var == null || !s6Var.isEmpty()) {
            Iterator it = s6Var.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((bg) it.next()).a) {
                    z2 = true;
                    break;
                }
            }
        }
        this.g = z2;
        if (z2 != z && Build.VERSION.SDK_INT >= 33) {
            c(z2);
        }
    }
}
