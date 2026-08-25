package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import java.util.HashSet;
/* renamed from: t3  reason: default package */
/* loaded from: classes.dex */
public abstract class t3 {
    public Object a;
    public Object b;

    public t3(s20 s20Var, r8 r8Var) {
        this.a = s20Var;
        this.b = r8Var;
    }

    public void c() {
        s3 s3Var = (s3) this.a;
        if (s3Var != null) {
            try {
                ((w3) this.b).k.unregisterReceiver(s3Var);
            } catch (IllegalArgumentException unused) {
            }
            this.a = null;
        }
    }

    public void d() {
        s20 s20Var = (s20) this.a;
        HashSet hashSet = s20Var.e;
        if (hashSet.remove((r8) this.b) && hashSet.isEmpty()) {
            s20Var.b();
        }
    }

    public abstract IntentFilter e();

    public abstract int f();

    public MenuItem g(MenuItem menuItem) {
        if (menuItem instanceof s30) {
            s30 s30Var = (s30) menuItem;
            if (((j20) this.b) == null) {
                this.b = new j20();
            }
            MenuItem menuItem2 = (MenuItem) ((j20) this.b).getOrDefault(s30Var, null);
            if (menuItem2 == null) {
                ap apVar = new ap((Context) this.a, s30Var);
                ((j20) this.b).put(s30Var, apVar);
                return apVar;
            }
            return menuItem2;
        }
        return menuItem;
    }

    public abstract void h();

    public void i() {
        c();
        IntentFilter e = e();
        if (e.countActions() == 0) {
            return;
        }
        if (((s3) this.a) == null) {
            this.a = new s3(this);
        }
        ((w3) this.b).k.registerReceiver((s3) this.a, e);
    }

    public t3(Context context) {
        this.a = context;
    }

    public t3(w3 w3Var) {
        this.b = w3Var;
    }
}
