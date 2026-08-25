package defpackage;

import android.content.Context;
/* renamed from: ec  reason: default package */
/* loaded from: classes.dex */
public final class ec extends t3 {
    public boolean c;
    public boolean d;
    public ko e;

    public final ko j(Context context) {
        boolean z;
        if (this.d) {
            return this.e;
        }
        s20 s20Var = (s20) this.a;
        vf vfVar = s20Var.c;
        if (s20Var.a == 2) {
            z = true;
        } else {
            z = false;
        }
        ko p = em.p(context, vfVar, z, this.c);
        this.e = p;
        this.d = true;
        return p;
    }
}
