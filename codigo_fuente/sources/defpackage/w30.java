package defpackage;

import java.io.Serializable;
/* renamed from: w30  reason: default package */
/* loaded from: classes.dex */
public final class w30 implements hk, Serializable {
    public rg a;
    public volatile Object b = hd.b;
    public final Object c = this;

    public w30(rg rgVar) {
        this.a = rgVar;
    }

    public final Object a() {
        Object obj;
        Object obj2 = this.b;
        hd hdVar = hd.b;
        if (obj2 != hdVar) {
            return obj2;
        }
        synchronized (this.c) {
            obj = this.b;
            if (obj == hdVar) {
                rg rgVar = this.a;
                rgVar.getClass();
                obj = rgVar.a();
                this.b = obj;
                this.a = null;
            }
        }
        return obj;
    }

    public final String toString() {
        if (this.b != hd.b) {
            return String.valueOf(a());
        }
        return "Lazy value not initialized yet.";
    }
}
