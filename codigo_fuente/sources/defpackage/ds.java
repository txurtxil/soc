package defpackage;

import androidx.activity.b;
import java.io.Serializable;
/* renamed from: ds  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class ds implements rg, xj, Serializable {
    public transient xj a;
    public final Object b;
    public final Class c = b.class;
    public final String d = "updateEnabledCallbacks";
    public final String e = "updateEnabledCallbacks()V";
    public final boolean f = false;
    public final int g = 0;
    public final /* synthetic */ int h;

    public ds(int i, Object obj) {
        this.h = i;
        this.b = obj;
    }

    @Override // defpackage.rg
    public final Object a() {
        int i = this.h;
        f60 f60Var = f60.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((b) obj).d();
                return f60Var;
            default:
                ((b) obj).d();
                return f60Var;
        }
    }

    public final xj b() {
        bx.a.getClass();
        return this;
    }

    public final p9 c() {
        boolean z = this.f;
        Class cls = this.c;
        if (z) {
            bx.a.getClass();
            return new xs(cls);
        }
        bx.a.getClass();
        return new q9(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [xj] */
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ds) {
                ds dsVar = (ds) obj;
                if (this.d.equals(dsVar.d) && this.e.equals(dsVar.e) && this.g == dsVar.g && qj.c(this.b, dsVar.b) && c().equals(dsVar.c())) {
                    return true;
                }
                return false;
            } else if (obj instanceof ds) {
                ?? r0 = this.a;
                if (r0 == 0) {
                    b();
                    this.a = this;
                } else {
                    this = r0;
                }
                return obj.equals(this);
            } else {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        c();
        int hashCode = this.d.hashCode();
        return this.e.hashCode() + ((hashCode + (c().hashCode() * 31)) * 31);
    }

    public final String toString() {
        xj xjVar = this.a;
        if (xjVar == null) {
            b();
            this.a = this;
            xjVar = this;
        }
        if (xjVar != this) {
            return xjVar.toString();
        }
        String str = this.d;
        if ("<init>".equals(str)) {
            return "constructor (Kotlin reflection is not available)";
        }
        return t20.f("function ", str, " (Kotlin reflection is not available)");
    }
}
