package defpackage;

import java.lang.reflect.Method;
/* renamed from: s9  reason: default package */
/* loaded from: classes.dex */
public final class s9 {
    public final int a;
    public final Method b;

    public s9(int i, Method method) {
        this.a = i;
        this.b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof s9) {
                s9 s9Var = (s9) obj;
                if (this.a == s9Var.a && this.b.getName().equals(s9Var.b.getName())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.getName().hashCode() + (this.a * 31);
    }
}
