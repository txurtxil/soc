package defpackage;

import java.io.Serializable;
/* renamed from: q50  reason: default package */
/* loaded from: classes.dex */
public final class q50 implements Serializable {
    public final Float a;
    public final Float b;
    public final Float c;

    public q50(Float f, Float f2, Float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof q50) {
                q50 q50Var = (q50) obj;
                if (!this.a.equals(q50Var.a) || !this.b.equals(q50Var.b) || !this.c.equals(q50Var.c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = this.b.hashCode();
        return this.c.hashCode() + ((hashCode + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "(" + this.a + ", " + this.b + ", " + this.c + ')';
    }
}
