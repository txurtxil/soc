package defpackage;

import android.content.Context;
import android.view.View;
import androidx.preference.Preference;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.util.List;
/* renamed from: zy  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class zy implements gh, bu, au {
    public final /* synthetic */ int a;
    public final /* synthetic */ dz b;

    public /* synthetic */ zy(dz dzVar, int i) {
        this.a = i;
        this.b = dzVar;
    }

    @Override // defpackage.au
    public boolean a(Preference preference, Object obj) {
        int i = this.a;
        dz dzVar = this.b;
        switch (i) {
            case 2:
                if (!qj.c(obj, Boolean.TRUE)) {
                    return true;
                }
                if (!PrivilegedManager.INSTANCE.isConnected()) {
                    String l = dzVar.l(R.string.pref_root_requires_connection);
                    l.getClass();
                    View view = dzVar.F;
                    if (view != null) {
                        l20.e(view, l).f();
                    }
                } else {
                    Context G = dzVar.G();
                    if (G.getSharedPreferences(lu.b(G), 0).getBoolean("auto_dim", false)) {
                        return true;
                    }
                    String l2 = dzVar.l(R.string.pref_root_screen_off_requires_auto_dim);
                    l2.getClass();
                    View view2 = dzVar.F;
                    if (view2 != null) {
                        l20.e(view2, l2).f();
                    }
                }
                return false;
            default:
                if (!qj.c(obj, Boolean.TRUE) || PrivilegedManager.INSTANCE.isConnected()) {
                    return true;
                }
                String l3 = dzVar.l(R.string.pref_root_requires_connection);
                l3.getClass();
                View view3 = dzVar.F;
                if (view3 != null) {
                    l20.e(view3, l3).f();
                }
                return false;
        }
    }

    @Override // defpackage.bu
    public void b(Preference preference) {
        dz dzVar = this.b;
        Context h = dzVar.h();
        if (h == null) {
            return;
        }
        PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
        if (privilegedManager.isConnected()) {
            Context h2 = dzVar.h();
            if (h2 != null) {
                h2.getSharedPreferences(lu.b(h2), 0).edit().putBoolean("root_user_disconnected", true).apply();
            }
            privilegedManager.disconnect(h);
            dzVar.T();
            return;
        }
        Context h3 = dzVar.h();
        if (h3 != null) {
            h3.getSharedPreferences(lu.b(h3), 0).edit().putBoolean("root_user_disconnected", false).apply();
        }
        privilegedManager.clearPowerProbeFuse(h);
        dzVar.S(null, false);
    }

    @Override // defpackage.gh
    public Object c(Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        f60 f60Var = f60.a;
        if (intValue != 4801) {
            return f60Var;
        }
        dz dzVar = this.b;
        List list = dzVar.g0;
        dzVar.g0 = null;
        if (booleanValue) {
            dzVar.S(list, false);
            return f60Var;
        }
        dzVar.T();
        return f60Var;
    }
}
