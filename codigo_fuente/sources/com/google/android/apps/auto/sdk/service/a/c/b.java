package com.google.android.apps.auto.sdk.service.a.c;

import com.google.android.apps.auto.sdk.service.a.c.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public final class b<L, P extends a<L>> {
    public final Map<L, P> a = new HashMap();
    public final Map<Object, c<L, P>> b = Collections.synchronizedMap(new HashMap());
    private final d<L, P> c;

    public b(d<L, P> dVar) {
        this.c = dVar;
    }

    public final P a(Object obj, L l) {
        P p;
        synchronized (this.b) {
            try {
                c<L, P> cVar = this.b.get(obj);
                if (cVar == null) {
                    cVar = new c<>(this.c);
                    this.b.put(obj, cVar);
                }
                p = this.a.get(l);
                if (p == null) {
                    p = this.c.a(l);
                    this.a.put(l, p);
                }
                cVar.a.add(p);
            } catch (Throwable th) {
                throw th;
            }
        }
        return p;
    }

    public final P b(Object obj, L l) {
        P p;
        synchronized (this.b) {
            try {
                c<L, P> cVar = this.b.get(obj);
                P p2 = null;
                if (cVar != null) {
                    p = cVar.a(l);
                    if (cVar.a()) {
                        this.b.remove(obj);
                    }
                } else {
                    p = null;
                }
                synchronized (this.b) {
                    Iterator<c<L, P>> it = this.b.values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        P b = it.next().b(l);
                        if (b != null) {
                            p2 = b;
                            break;
                        }
                    }
                    if (p2 == null) {
                        this.a.remove(l);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return p;
    }

    public final P a(L l) {
        P p;
        synchronized (this.b) {
            try {
                Iterator<c<L, P>> it = this.b.values().iterator();
                p = null;
                while (it.hasNext()) {
                    c<L, P> next = it.next();
                    P a = next.a(l);
                    if (next.a()) {
                        it.remove();
                    }
                    p = a;
                }
                this.a.remove(l);
            } catch (Throwable th) {
                throw th;
            }
        }
        return p;
    }
}
