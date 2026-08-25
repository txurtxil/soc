package idv.lzn.screenonauto;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import androidx.preference.Preference;
import androidx.preference.SwitchPreferenceCompat;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class SettingsFragment extends gu {
    public final jb b0 = new jb(this, new Handler(Looper.getMainLooper()));
    public final iq c0 = new iq(3, this);
    public final cm d0 = new cm(this, 1);
    public SwitchPreferenceCompat e0;
    public Preference f0;
    public Preference g0;
    public SwitchPreferenceCompat h0;
    public Preference i0;
    public Preference j0;
    public Preference k0;

    @Override // defpackage.gu
    public final void N(String str) {
        boolean z;
        long j;
        P(R.xml.settings_preferences, str);
        this.e0 = (SwitchPreferenceCompat) M("mirror");
        if (!b00.f && b00.j == null) {
            z = false;
        } else {
            z = true;
        }
        S(z);
        SwitchPreferenceCompat switchPreferenceCompat = this.e0;
        if (switchPreferenceCompat != null) {
            switchPreferenceCompat.e = new w00(this, 0);
        }
        Preference M = M("notification_access");
        this.f0 = M;
        if (M != null) {
            M.f = new w00(this, 4);
        }
        this.g0 = M("auto_launch_package");
        R();
        Preference preference = this.g0;
        if (preference != null) {
            preference.f = new w00(this, 5);
        }
        SwitchPreferenceCompat switchPreferenceCompat2 = (SwitchPreferenceCompat) M("auto_dim");
        this.h0 = switchPreferenceCompat2;
        if (switchPreferenceCompat2 != null) {
            switchPreferenceCompat2.e = new w00(this, 6);
        }
        SwitchPreferenceCompat switchPreferenceCompat3 = (SwitchPreferenceCompat) M("force_landscape");
        if (switchPreferenceCompat3 != null) {
            switchPreferenceCompat3.e = new w00(this, 7);
        }
        Preference M2 = M("launch_shortcuts");
        if (M2 != null) {
            M2.f = new w00(this, 8);
        }
        Preference M3 = M("advanced");
        if (M3 != null) {
            M3.f = new w00(this, 9);
        }
        Preference M4 = M("root_features");
        this.k0 = M4;
        if (M4 != null) {
            M4.f = new w00(this, 10);
        }
        Preference M5 = M("overlay_access");
        this.i0 = M5;
        if (M5 != null) {
            M5.f = new w00(this, 11);
        }
        Preference M6 = M("accessibility_access");
        this.j0 = M6;
        if (M6 != null) {
            M6.f = new w00(this, 1);
        }
        Preference M7 = M("about");
        if (M7 != null) {
            PackageInfo packageInfo = G().getPackageManager().getPackageInfo(G().getPackageName(), 0);
            String str2 = packageInfo.versionName;
            if (Build.VERSION.SDK_INT >= 28) {
                j = ws.b(packageInfo);
            } else {
                j = packageInfo.versionCode;
            }
            M7.x("Version " + str2 + " (" + j + ")");
            M7.f = new w00(this, 3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.Collection, java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.ArrayList] */
    public final void Q() {
        ?? o;
        int i;
        boolean equalsIgnoreCase;
        ComponentName componentName = new ComponentName(G(), MirrorAccessibilityService.class);
        String string = Settings.Secure.getString(G().getContentResolver(), "enabled_accessibility_services");
        if (string == null) {
            string = "";
        }
        String[] strArr = {":"};
        boolean z = false;
        String str = strArr[0];
        if (str.length() == 0) {
            List asList = Arrays.asList(strArr);
            asList.getClass();
            ko koVar = new ko(string, new b2(asList), 7, false);
            o = new ArrayList(x9.z(new v00(koVar)));
            ic icVar = new ic(koVar);
            while (icVar.hasNext()) {
                nj njVar = (nj) icVar.next();
                o.add(string.subSequence(njVar.a, njVar.b + 1).toString());
            }
        } else {
            int v = i30.v(string, str, 0, false);
            if (v != -1) {
                ArrayList arrayList = new ArrayList(10);
                int i2 = 0;
                do {
                    arrayList.add(string.subSequence(i2, v).toString());
                    i2 = str.length() + v;
                    v = i30.v(string, str, i2, false);
                } while (v != -1);
                arrayList.add(string.subSequence(i2, string.length()).toString());
                o = arrayList;
            } else {
                o = qj.o(string.toString());
            }
        }
        if (!o.isEmpty()) {
            Iterator it = o.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str2 = (String) it.next();
                String flattenToString = componentName.flattenToString();
                if (str2 == null) {
                    if (flattenToString == null) {
                        equalsIgnoreCase = true;
                        continue;
                    } else {
                        equalsIgnoreCase = false;
                        continue;
                    }
                } else {
                    equalsIgnoreCase = str2.equalsIgnoreCase(flattenToString);
                    continue;
                }
                if (equalsIgnoreCase) {
                    z = true;
                    break;
                }
            }
        }
        Preference preference = this.j0;
        if (preference != null) {
            if (z) {
                i = R.string.pref_accessibility_summary_granted;
            } else {
                i = R.string.pref_accessibility_summary_denied;
            }
            preference.x(l(i));
        }
    }

    public final void R() {
        Context G = G();
        String string = G.getSharedPreferences(lu.b(G), 0).getString("auto_launch_package", null);
        Context G2 = G();
        Preference preference = this.g0;
        if (preference != null && !preference.C) {
            preference.C = true;
            preference.h();
        }
        if (string != null && string.length() != 0) {
            String b = z5.b(G2, string);
            if (b == null) {
                b = string;
            }
            Preference preference2 = this.g0;
            if (preference2 != null) {
                preference2.x(m(R.string.pref_auto_launch_summary_set, b));
            }
            Preference preference3 = this.g0;
            if (preference3 != null) {
                preference3.w(null);
            }
            cm cmVar = new cm(this, 2);
            z5.a.execute(new x5(G2.getApplicationContext(), string, cmVar, 0));
            return;
        }
        Preference preference4 = this.g0;
        if (preference4 != null) {
            preference4.w(null);
        }
        Preference preference5 = this.g0;
        if (preference5 != null) {
            preference5.x(l(R.string.pref_auto_launch_summary_none));
        }
    }

    public final void S(boolean z) {
        int i;
        SwitchPreferenceCompat switchPreferenceCompat = this.e0;
        if (switchPreferenceCompat != null) {
            switchPreferenceCompat.A(z);
        }
        SwitchPreferenceCompat switchPreferenceCompat2 = this.e0;
        if (switchPreferenceCompat2 != null) {
            if (z) {
                i = R.string.pref_mirror_summary_on;
            } else {
                i = R.string.pref_mirror_summary_off;
            }
            switchPreferenceCompat2.x(l(i));
        }
    }

    public final void T() {
        HashSet hashSet;
        int i;
        Context G = G();
        Object obj = ur.b;
        String string = Settings.Secure.getString(G.getContentResolver(), "enabled_notification_listeners");
        synchronized (ur.b) {
            if (string != null) {
                try {
                    if (!string.equals(ur.c)) {
                        String[] split = string.split(":", -1);
                        HashSet hashSet2 = new HashSet(split.length);
                        for (String str : split) {
                            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                            if (unflattenFromString != null) {
                                hashSet2.add(unflattenFromString.getPackageName());
                            }
                        }
                        ur.d = hashSet2;
                        ur.c = string;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            hashSet = ur.d;
        }
        boolean contains = hashSet.contains(G().getPackageName());
        Preference preference = this.f0;
        if (preference != null) {
            if (contains) {
                i = R.string.pref_notification_access_summary_granted;
            } else {
                i = R.string.pref_notification_access_summary_denied;
            }
            preference.x(l(i));
        }
    }

    public final void U() {
        Preference preference;
        boolean z;
        if (o() && (preference = this.k0) != null && preference.x != (!PrivilegedManager.INSTANCE.presentBackends(G()).isEmpty())) {
            preference.x = z;
            ju juVar = preference.H;
            if (juVar != null) {
                Handler handler = juVar.g;
                c7 c7Var = juVar.h;
                handler.removeCallbacks(c7Var);
                handler.post(c7Var);
            }
        }
    }

    @Override // defpackage.gu, defpackage.vf
    public final void r(Bundle bundle) {
        super.r(bundle);
        j().S(this, new w00(this, 2));
    }

    @Override // defpackage.vf
    public final void x() {
        this.D = true;
        G().getContentResolver().unregisterContentObserver(this.b0);
        SharedPreferences d = this.U.d();
        if (d != null) {
            d.unregisterOnSharedPreferenceChangeListener(this.c0);
        }
        PrivilegedManager.INSTANCE.removeOnStateChangedListener(this.d0);
    }

    @Override // defpackage.vf
    public final void y() {
        int i;
        this.D = true;
        T();
        boolean canDrawOverlays = Settings.canDrawOverlays(G());
        Preference preference = this.i0;
        if (preference != null) {
            if (canDrawOverlays) {
                i = R.string.pref_overlay_summary_granted;
            } else {
                i = R.string.pref_overlay_summary_denied;
            }
            preference.x(l(i));
        }
        Q();
        U();
        ContentResolver contentResolver = G().getContentResolver();
        Uri uriFor = Settings.Secure.getUriFor("enabled_accessibility_services");
        jb jbVar = this.b0;
        contentResolver.registerContentObserver(uriFor, false, jbVar);
        contentResolver.registerContentObserver(Settings.Secure.getUriFor("enabled_notification_listeners"), false, jbVar);
        SharedPreferences d = this.U.d();
        if (d != null) {
            SwitchPreferenceCompat switchPreferenceCompat = this.h0;
            if (switchPreferenceCompat != null) {
                switchPreferenceCompat.A(d.getBoolean("auto_dim", false));
            }
            d.registerOnSharedPreferenceChangeListener(this.c0);
        }
        PrivilegedManager.INSTANCE.addOnStateChangedListener(this.d0);
    }
}
