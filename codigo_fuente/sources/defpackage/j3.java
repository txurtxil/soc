package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: j3  reason: default package */
/* loaded from: classes.dex */
public abstract class j3 {
    public static final c6 a = new c6(new Object());
    public static int b = -100;
    public static wl c = null;
    public static wl d = null;
    public static Boolean e = null;
    public static boolean f = false;
    public static final v6 g = new v6(0);
    public static final Object h = new Object();
    public static final Object i = new Object();

    public static boolean c(Context context) {
        if (e == null) {
            try {
                int i2 = b6.a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, b6.class), a6.a() | 128).metaData;
                if (bundle != null) {
                    e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                e = Boolean.FALSE;
            }
        }
        return e.booleanValue();
    }

    public static void g(w3 w3Var) {
        synchronized (h) {
            try {
                Iterator it = g.iterator();
                while (true) {
                    hm hmVar = (hm) it;
                    if (hmVar.hasNext()) {
                        j3 j3Var = (j3) ((WeakReference) hmVar.next()).get();
                        if (j3Var == w3Var || j3Var == null) {
                            hmVar.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void l() {
        if (b != -1) {
            b = -1;
            synchronized (h) {
                try {
                    Iterator it = g.iterator();
                    while (true) {
                        hm hmVar = (hm) it;
                        if (hmVar.hasNext()) {
                            j3 j3Var = (j3) ((WeakReference) hmVar.next()).get();
                            if (j3Var != null) {
                                ((w3) j3Var).p(true, true);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public abstract void a();

    public abstract void b();

    public abstract void d();

    public abstract void f();

    public abstract boolean h(int i2);

    public abstract void i(int i2);

    public abstract void j(View view);

    public abstract void k(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void n(int i2);

    public abstract void o(CharSequence charSequence);
}
