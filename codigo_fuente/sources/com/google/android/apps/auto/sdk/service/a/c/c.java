package com.google.android.apps.auto.sdk.service.a.c;

import com.google.android.apps.auto.sdk.service.a.c.a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class c<L, P extends a<L>> {
    final Set<P> a = Collections.synchronizedSet(new HashSet());

    public c(d<L, P> dVar) {
    }

    public final P a(L l) {
        P b;
        synchronized (this.a) {
            try {
                b = b(l);
                if (b != null) {
                    this.a.remove(b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }

    public final P b(L l) {
        for (P p : this.a) {
            if (p.a() == l) {
                return p;
            }
        }
        return null;
    }

    public final boolean a() {
        return this.a.isEmpty();
    }
}
