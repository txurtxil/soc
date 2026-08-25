package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;
import androidx.preference.SwitchPreferenceCompat;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
/* renamed from: dz  reason: default package */
/* loaded from: classes.dex */
public final class dz extends gu {
    public Preference b0;
    public SwitchPreferenceCompat c0;
    public SwitchPreferenceCompat d0;
    public final x6 e0 = new x6(3, this);
    public final y6 f0 = new y6(3, this);
    public List g0;

    @Override // defpackage.gu
    public final void N(String str) {
        P(R.xml.root_preferences, str);
        Preference M = M("root_status");
        this.b0 = M;
        if (M != null) {
            M.f = new zy(this, 1);
        }
        SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) M("root_screen_off");
        this.c0 = switchPreferenceCompat;
        if (switchPreferenceCompat != null) {
            switchPreferenceCompat.e = new zy(this, 2);
        }
        SwitchPreferenceCompat switchPreferenceCompat2 = (SwitchPreferenceCompat) M("root_touch_injection");
        this.d0 = switchPreferenceCompat2;
        if (switchPreferenceCompat2 != null) {
            switchPreferenceCompat2.e = new zy(this, 3);
        }
    }

    public final void Q() {
        PrivilegedManager.Kind lastConnectedKind;
        Context h = h();
        if (h != null) {
            PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
            if (!privilegedManager.isConnected() && !h.getSharedPreferences(lu.b(h), 0).getBoolean("root_user_disconnected", false) && (lastConnectedKind = privilegedManager.getLastConnectedKind()) != null && privilegedManager.presentBackends(h).contains(lastConnectedKind)) {
                if (lastConnectedKind == PrivilegedManager.Kind.SHIZUKU && !privilegedManager.isAuthorised(h, lastConnectedKind)) {
                    return;
                }
                S(qj.o(lastConnectedKind), true);
            }
        }
    }

    public final String R(PrivilegedManager.Kind kind) {
        int i;
        int i2;
        if (kind == null) {
            i = -1;
        } else {
            i = cz.a[kind.ordinal()];
        }
        if (i == 1) {
            i2 = R.string.root_backend_root;
        } else {
            i2 = R.string.root_backend_shizuku;
        }
        String l = l(i2);
        l.getClass();
        return l;
    }

    public final void S(final List list, final boolean z) {
        Context h = h();
        if (h != null) {
            if (list == null) {
                list = PrivilegedManager.INSTANCE.presentBackends(h);
            }
            final PrivilegedManager.Kind kind = (PrivilegedManager.Kind) v9.A(list);
            if (kind == null) {
                return;
            }
            if (kind == PrivilegedManager.Kind.SHIZUKU) {
                PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
                if (!privilegedManager.isAuthorised(h, kind)) {
                    this.g0 = list;
                    privilegedManager.requestAuthorisation(kind, 4801);
                    return;
                }
            }
            PrivilegedManager.INSTANCE.connect(h, kind, new ch() { // from class: bz
                @Override // defpackage.ch
                public final Object b(Object obj) {
                    List list2;
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    dz dzVar = dz.this;
                    if (dzVar.o()) {
                        List list3 = list;
                        int size = list3.size() - 1;
                        if (size <= 0) {
                            list2 = je.a;
                        } else if (size == 1) {
                            if (!list3.isEmpty()) {
                                list2 = qj.o(list3.get(list3.size() - 1));
                            } else {
                                throw new NoSuchElementException("List is empty.");
                            }
                        } else {
                            ArrayList arrayList = new ArrayList(size);
                            if (list3 instanceof RandomAccess) {
                                int size2 = list3.size();
                                for (int i = 1; i < size2; i++) {
                                    arrayList.add(list3.get(i));
                                }
                            } else {
                                ListIterator listIterator = list3.listIterator(1);
                                while (listIterator.hasNext()) {
                                    arrayList.add(listIterator.next());
                                }
                            }
                            list2 = arrayList;
                        }
                        if (!booleanValue) {
                            boolean isEmpty = list2.isEmpty();
                            boolean z2 = z;
                            if (!isEmpty) {
                                dzVar.S(list2, z2);
                            } else if (!z2) {
                                String m = dzVar.m(R.string.pref_root_connect_failed, dzVar.R(kind));
                                m.getClass();
                                View view = dzVar.F;
                                if (view != null) {
                                    l20.e(view, m).f();
                                }
                            }
                        }
                        dzVar.T();
                    }
                    return f60.a;
                }
            });
        }
    }

    public final void T() {
        boolean z;
        boolean z2;
        boolean z3;
        String l;
        int i;
        boolean z4;
        boolean z5;
        String m;
        if (o()) {
            Context G = G();
            PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
            PrivilegedManager.Kind kind = (PrivilegedManager.Kind) v9.A(privilegedManager.presentBackends(G));
            Preference preference = this.b0;
            if (preference != null) {
                if (privilegedManager.isConnected()) {
                    PrivilegedManager.Kind connectedKind = privilegedManager.getConnectedKind();
                    if (connectedKind == null) {
                        connectedKind = kind;
                    }
                    m = m(R.string.pref_root_status_connected, R(connectedKind));
                } else if (kind == null) {
                    m = l(R.string.pref_root_status_none);
                } else if (kind == PrivilegedManager.Kind.SHIZUKU && !privilegedManager.isAuthorised(G, kind)) {
                    m = m(R.string.pref_root_status_unauthorised, R(kind));
                } else {
                    m = m(R.string.pref_root_status_disconnected, R(kind));
                }
                preference.x(m);
            }
            Preference preference2 = this.b0;
            boolean z6 = true;
            if (preference2 != null) {
                if (kind != null) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                preference2.u(z5);
            }
            boolean z7 = G.getSharedPreferences(lu.b(G), 0).getBoolean("auto_dim", false);
            int displayPowerModeStatus = privilegedManager.getDisplayPowerModeStatus();
            if (privilegedManager.isConnected() && displayPowerModeStatus == 7) {
                z = true;
            } else {
                z = false;
            }
            if (privilegedManager.isConnected() && (displayPowerModeStatus == 6 || displayPowerModeStatus == -1)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (privilegedManager.isConnected() && !privilegedManager.getDisplayPowerModeSupported() && !z2 && !z) {
                z3 = true;
            } else {
                z3 = false;
            }
            SwitchPreferenceCompat switchPreferenceCompat = this.c0;
            if (switchPreferenceCompat != null) {
                if (privilegedManager.isConnected() && z7 && !z3 && !z2 && !z) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                switchPreferenceCompat.u(z4);
            }
            SwitchPreferenceCompat switchPreferenceCompat2 = this.c0;
            if (switchPreferenceCompat2 != null) {
                if (z) {
                    l = l(R.string.pref_root_screen_off_probe_crashed);
                } else if (z2) {
                    l = l(R.string.pref_root_screen_off_stale_helper);
                } else if (z3) {
                    if (displayPowerModeStatus != 1) {
                        if (displayPowerModeStatus != 2) {
                            if (displayPowerModeStatus != 3) {
                                if (displayPowerModeStatus != 4) {
                                    if (displayPowerModeStatus != 5) {
                                        i = R.string.root_screen_off_reason_unknown;
                                    } else {
                                        i = R.string.root_screen_off_reason_no_display_library;
                                    }
                                } else {
                                    i = R.string.root_screen_off_reason_no_display_control;
                                }
                            } else {
                                i = R.string.root_screen_off_reason_no_method;
                            }
                        } else {
                            i = R.string.root_screen_off_reason_no_display_token;
                        }
                    } else {
                        i = R.string.root_screen_off_reason_no_surface_control;
                    }
                    l = m(R.string.pref_root_screen_off_unsupported, l(i));
                } else {
                    l = l(R.string.pref_root_screen_off_summary);
                }
                switchPreferenceCompat2.x(l);
            }
            SwitchPreferenceCompat switchPreferenceCompat3 = this.d0;
            if (switchPreferenceCompat3 != null) {
                if (!privilegedManager.isConnected() || !privilegedManager.getTouchInjectionSupported()) {
                    z6 = false;
                }
                switchPreferenceCompat3.u(z6);
            }
        }
    }

    @Override // defpackage.gu, defpackage.vf
    public final void r(Bundle bundle) {
        super.r(bundle);
        PrivilegedManager.INSTANCE.setAuthorisationResultCallback(new zy(this, 0));
    }

    @Override // defpackage.vf
    public final void t() {
        this.D = true;
        PrivilegedManager.INSTANCE.setAuthorisationResultCallback(null);
    }

    @Override // defpackage.vf
    public final void x() {
        this.D = true;
        PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
        privilegedManager.removeOnStateChangedListener(this.e0);
        y6 y6Var = this.f0;
        privilegedManager.removeOnBackendAvailableListener(y6Var);
        privilegedManager.removeOnConnectionLostListener(y6Var);
    }

    @Override // defpackage.vf
    public final void y() {
        this.D = true;
        PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
        privilegedManager.addOnStateChangedListener(this.e0);
        y6 y6Var = this.f0;
        privilegedManager.addOnBackendAvailableListener(y6Var);
        privilegedManager.addOnConnectionLostListener(y6Var);
        T();
        Q();
    }
}
