package defpackage;

import android.os.Bundle;
import androidx.activity.a;
import java.util.Iterator;
import java.util.Map;
/* renamed from: qz  reason: default package */
/* loaded from: classes.dex */
public final class qz implements uz {
    public final f3 a;
    public boolean b;
    public Bundle c;
    public final w30 d;

    public qz(f3 f3Var, a aVar) {
        f3Var.getClass();
        this.a = f3Var;
        this.d = new w30(new yr(3, aVar));
    }

    @Override // defpackage.uz
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        Iterator it = ((rz) this.d.a()).c.entrySet().iterator();
        if (!it.hasNext()) {
            this.b = false;
            return bundle;
        }
        Map.Entry entry = (Map.Entry) it.next();
        String str = (String) entry.getKey();
        entry.getValue().getClass();
        c2.l();
        return null;
    }
}
