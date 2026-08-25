package androidx.lifecycle;

import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.util.Map;
/* loaded from: classes.dex */
public class b {
    public static final Object j = new Object();
    public final Object a = new Object();
    public final pz b = new pz();
    public int c = 0;
    public boolean d;
    public volatile Object e;
    public volatile Object f;
    public int g;
    public boolean h;
    public boolean i;

    public b() {
        Object obj = j;
        this.f = obj;
        this.e = obj;
        this.g = -1;
    }

    public static void a(String str) {
        ((r6) r6.w().o).getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        c2.g(t20.f("Cannot invoke ", str, " on a background thread"));
    }

    public final void b(sl slVar) {
        if (slVar.b) {
            if (!slVar.j()) {
                slVar.h(false);
                return;
            }
            int i = slVar.c;
            int i2 = this.g;
            if (i < i2) {
                slVar.c = i2;
                c9 c9Var = slVar.a;
                Object obj = this.e;
                c9Var.getClass();
                sk skVar = (sk) obj;
                qc qcVar = (qc) c9Var.b;
                if (skVar != null && qcVar.a0) {
                    View H = qcVar.H();
                    if (H.getParent() == null) {
                        if (qcVar.e0 != null) {
                            if (androidx.fragment.app.a.E(3)) {
                                Log.d("FragmentManager", "DialogFragment " + c9Var + " setting the content view on " + qcVar.e0);
                            }
                            qcVar.e0.setContentView(H);
                            return;
                        }
                        return;
                    }
                    c2.g("DialogFragment can not be attached to a container view");
                }
            }
        }
    }

    public final void c(sl slVar) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (slVar != null) {
                b(slVar);
                slVar = null;
            } else {
                pz pzVar = this.b;
                pzVar.getClass();
                nz nzVar = new nz(pzVar);
                pzVar.c.put(nzVar, Boolean.FALSE);
                while (nzVar.hasNext()) {
                    b((sl) ((Map.Entry) nzVar.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public final void d(c9 c9Var) {
        Object obj;
        a("observeForever");
        sl slVar = new sl(this, c9Var);
        pz pzVar = this.b;
        mz a = pzVar.a(c9Var);
        if (a != null) {
            obj = a.b;
        } else {
            mz mzVar = new mz(c9Var, slVar);
            pzVar.d++;
            mz mzVar2 = pzVar.b;
            if (mzVar2 == null) {
                pzVar.a = mzVar;
                pzVar.b = mzVar;
            } else {
                mzVar2.c = mzVar;
                mzVar.d = mzVar2;
                pzVar.b = mzVar;
            }
            obj = null;
        }
        sl slVar2 = (sl) obj;
        if (!(slVar2 instanceof LiveData$LifecycleBoundObserver)) {
            if (slVar2 != null) {
                return;
            }
            slVar.h(true);
            return;
        }
        c2.n("Cannot add the same observer with different lifecycles");
    }

    public final void e(Object obj) {
        a("setValue");
        this.g++;
        this.e = obj;
        c(null);
    }
}
