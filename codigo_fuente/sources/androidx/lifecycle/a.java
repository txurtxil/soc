package androidx.lifecycle;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class a extends nk {
    public final boolean a;
    public ve b;
    public mk c;
    public final WeakReference d;
    public int e;
    public boolean f;
    public boolean g;
    public final ArrayList h;

    public a(sk skVar) {
        new AtomicReference();
        this.a = true;
        this.b = new ve();
        this.c = mk.b;
        this.h = new ArrayList();
        this.d = new WeakReference(skVar);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [tk, java.lang.Object] */
    @Override // defpackage.nk
    public final void a(rk rkVar) {
        qk reflectiveGenericLifecycleObserver;
        Object obj;
        sk skVar;
        lk lkVar;
        d("addObserver");
        mk mkVar = this.c;
        mk mkVar2 = mk.a;
        if (mkVar != mkVar2) {
            mkVar2 = mk.b;
        }
        ?? obj2 = new Object();
        HashMap hashMap = uk.a;
        boolean z = rkVar instanceof qk;
        boolean z2 = rkVar instanceof ac;
        boolean z3 = false;
        if (z && z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((ac) rkVar, (qk) rkVar);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((ac) rkVar, null);
        } else if (z) {
            reflectiveGenericLifecycleObserver = (qk) rkVar;
        } else {
            Class<?> cls = rkVar.getClass();
            if (uk.c(cls) == 2) {
                Object obj3 = uk.b.get(cls);
                obj3.getClass();
                List list = (List) obj3;
                if (list.size() != 1) {
                    int size = list.size();
                    rh[] rhVarArr = new rh[size];
                    if (size <= 0) {
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(rhVarArr);
                    } else {
                        uk.a((Constructor) list.get(0), rkVar);
                        throw null;
                    }
                } else {
                    uk.a((Constructor) list.get(0), rkVar);
                    throw null;
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(rkVar);
            }
        }
        obj2.b = reflectiveGenericLifecycleObserver;
        obj2.a = mkVar2;
        ve veVar = this.b;
        mz a = veVar.a(rkVar);
        if (a != null) {
            obj = a.b;
        } else {
            HashMap hashMap2 = veVar.e;
            mz mzVar = new mz(rkVar, obj2);
            veVar.d++;
            mz mzVar2 = veVar.b;
            if (mzVar2 == null) {
                veVar.a = mzVar;
                veVar.b = mzVar;
            } else {
                mzVar2.c = mzVar;
                mzVar.d = mzVar2;
                veVar.b = mzVar;
            }
            hashMap2.put(rkVar, mzVar);
            obj = null;
        }
        if (((tk) obj) != null || (skVar = (sk) this.d.get()) == null) {
            return;
        }
        if (this.e != 0 || this.f) {
            z3 = true;
        }
        mk c = c(rkVar);
        this.e++;
        while (obj2.a.compareTo(c) < 0 && this.b.e.containsKey(rkVar)) {
            mk mkVar3 = obj2.a;
            ArrayList arrayList = this.h;
            arrayList.add(mkVar3);
            jk jkVar = lk.Companion;
            mk mkVar4 = obj2.a;
            jkVar.getClass();
            mkVar4.getClass();
            int ordinal = mkVar4.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        lkVar = null;
                    } else {
                        lkVar = lk.ON_RESUME;
                    }
                } else {
                    lkVar = lk.ON_START;
                }
            } else {
                lkVar = lk.ON_CREATE;
            }
            if (lkVar != null) {
                obj2.a(skVar, lkVar);
                arrayList.remove(arrayList.size() - 1);
                c = c(rkVar);
            } else {
                c2.f(obj2.a, "no event up from ");
                return;
            }
        }
        if (!z3) {
            g();
        }
        this.e--;
    }

    @Override // defpackage.nk
    public final void b(rk rkVar) {
        rkVar.getClass();
        d("removeObserver");
        this.b.b(rkVar);
    }

    public final mk c(rk rkVar) {
        mz mzVar;
        mk mkVar;
        HashMap hashMap = this.b.e;
        mk mkVar2 = null;
        if (hashMap.containsKey(rkVar)) {
            mzVar = ((mz) hashMap.get(rkVar)).d;
        } else {
            mzVar = null;
        }
        if (mzVar != null) {
            mkVar = ((tk) mzVar.b).a;
        } else {
            mkVar = null;
        }
        ArrayList arrayList = this.h;
        if (!arrayList.isEmpty()) {
            mkVar2 = (mk) arrayList.get(arrayList.size() - 1);
        }
        mk mkVar3 = this.c;
        mkVar3.getClass();
        if (mkVar == null || mkVar.compareTo(mkVar3) >= 0) {
            mkVar = mkVar3;
        }
        if (mkVar2 != null && mkVar2.compareTo(mkVar) < 0) {
            return mkVar2;
        }
        return mkVar;
    }

    public final void d(String str) {
        if (this.a) {
            ((r6) r6.w().o).getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            throw new IllegalStateException(t20.f("Method ", str, " must be called on the main thread").toString());
        }
    }

    public final void e(lk lkVar) {
        lkVar.getClass();
        d("handleLifecycleEvent");
        f(lkVar.a());
    }

    public final void f(mk mkVar) {
        mk mkVar2 = this.c;
        if (mkVar2 != mkVar) {
            mk mkVar3 = mk.b;
            mk mkVar4 = mk.a;
            if (mkVar2 == mkVar3 && mkVar == mkVar4) {
                StringBuilder sb = new StringBuilder("no event down from ");
                sb.append(this.c);
                Object obj = this.d.get();
                sb.append(" in component ");
                sb.append(obj);
                throw new IllegalStateException(sb.toString().toString());
            }
            this.c = mkVar;
            if (!this.f && this.e == 0) {
                this.f = true;
                g();
                this.f = false;
                if (this.c == mkVar4) {
                    this.b = new ve();
                    return;
                }
                return;
            }
            this.g = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        r11.g = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g() {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.a.g():void");
    }
}
