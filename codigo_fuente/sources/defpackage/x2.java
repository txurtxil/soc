package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;
/* renamed from: x2  reason: default package */
/* loaded from: classes.dex */
public final class x2 implements uz {
    public final /* synthetic */ int a;
    public final Object b;

    public x2(f3 f3Var) {
        this.a = 2;
        this.b = new LinkedHashSet();
        f3Var.e("androidx.savedstate.Restarter", this);
    }

    @Override // defpackage.uz
    public final Bundle a() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Bundle bundle = new Bundle();
                ((z2) obj).k().getClass();
                return bundle;
            case 1:
                Bundle bundle2 = new Bundle();
                z2 z2Var = (z2) obj;
                c9 c9Var = z2Var.t;
                do {
                } while (z2.n(((wf) c9Var.b).m));
                z2Var.u.e(lk.ON_STOP);
                jg P = ((wf) c9Var.b).m.P();
                if (P != null) {
                    bundle2.putParcelable("android:support:fragments", P);
                }
                return bundle2;
            default:
                Bundle bundle3 = new Bundle();
                bundle3.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) obj));
                return bundle3;
        }
    }

    public /* synthetic */ x2(z2 z2Var, int i) {
        this.a = i;
        this.b = z2Var;
    }
}
