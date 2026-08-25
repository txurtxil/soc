package defpackage;

import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import java.util.HashMap;
/* renamed from: kn  reason: default package */
/* loaded from: classes.dex */
public final class kn implements IBinder.DeathRecipient {
    public final String a;
    public final int b;
    public final int c;
    public final c9 d;
    public final HashMap e = new HashMap();
    public jn f;
    public final /* synthetic */ vn g;

    public kn(vn vnVar, String str, int i, int i2, c9 c9Var) {
        this.g = vnVar;
        this.a = str;
        this.b = i;
        this.c = i2;
        if (str != null) {
            if (!TextUtils.isEmpty(str)) {
                if (Build.VERSION.SDK_INT >= 28) {
                    y.o(i, i2, str);
                }
                this.d = c9Var;
                return;
            }
            c2.n("packageName should be nonempty");
            throw null;
        }
        throw new NullPointerException("package shouldn't be null");
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.g.e.post(new c7(9, this));
    }
}
