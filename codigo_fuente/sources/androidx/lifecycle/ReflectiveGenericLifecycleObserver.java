package androidx.lifecycle;

import java.util.HashMap;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements qk {
    public final rk a;
    public final r9 b;

    public ReflectiveGenericLifecycleObserver(rk rkVar) {
        this.a = rkVar;
        t9 t9Var = t9.c;
        Class<?> cls = rkVar.getClass();
        r9 r9Var = (r9) t9Var.a.get(cls);
        this.b = r9Var == null ? t9Var.a(cls, null) : r9Var;
    }

    @Override // defpackage.qk
    public final void g(sk skVar, lk lkVar) {
        HashMap hashMap = this.b.a;
        rk rkVar = this.a;
        r9.a((List) hashMap.get(lkVar), skVar, lkVar, rkVar);
        r9.a((List) hashMap.get(lk.ON_ANY), skVar, lkVar, rkVar);
    }
}
