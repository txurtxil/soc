package defpackage;

import java.util.HashMap;
/* renamed from: ve  reason: default package */
/* loaded from: classes.dex */
public final class ve extends pz {
    public final HashMap e = new HashMap();

    @Override // defpackage.pz
    public final mz a(Object obj) {
        return (mz) this.e.get(obj);
    }

    @Override // defpackage.pz
    public final Object b(Object obj) {
        Object b = super.b(obj);
        this.e.remove(obj);
        return b;
    }
}
