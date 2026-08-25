package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.projection.MediaProjectionManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import androidx.preference.Preference;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.AdvancedSettingsActivity;
import idv.lzn.screenonauto.LaunchShortcutsActivity;
import idv.lzn.screenonauto.MainActivity;
import idv.lzn.screenonauto.MirrorNotificationListenerService;
import idv.lzn.screenonauto.RootSettingsActivity;
import idv.lzn.screenonauto.ScreenCaptureService;
import idv.lzn.screenonauto.SettingsFragment;
/* renamed from: w00  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class w00 implements au, bu, mg {
    public final /* synthetic */ int a;
    public final /* synthetic */ SettingsFragment b;

    public /* synthetic */ w00(SettingsFragment settingsFragment, int i) {
        this.a = i;
        this.b = settingsFragment;
    }

    @Override // defpackage.au
    public boolean a(Preference preference, Object obj) {
        z2 z2Var;
        MainActivity mainActivity;
        int i = this.a;
        SettingsFragment settingsFragment = this.b;
        switch (i) {
            case 0:
                wf wfVar = settingsFragment.t;
                if (wfVar == null) {
                    z2Var = null;
                } else {
                    z2Var = wfVar.j;
                }
                if (z2Var instanceof MainActivity) {
                    mainActivity = (MainActivity) z2Var;
                } else {
                    mainActivity = null;
                }
                if (mainActivity != null) {
                    obj.getClass();
                    if (((Boolean) obj).booleanValue()) {
                        if (Build.VERSION.SDK_INT >= 33 && gn.g(mainActivity, "android.permission.POST_NOTIFICATIONS") != 0) {
                            mainActivity.D.G("android.permission.POST_NOTIFICATIONS");
                        } else {
                            u1 u1Var = mainActivity.C;
                            MediaProjectionManager mediaProjectionManager = mainActivity.z;
                            if (mediaProjectionManager != null) {
                                u1Var.G(mediaProjectionManager.createScreenCaptureIntent());
                            } else {
                                qj.v("projectionManager");
                                throw null;
                            }
                        }
                    } else {
                        mainActivity.stopService(new Intent(mainActivity, ScreenCaptureService.class));
                        b00.f = false;
                        b00.k.post(new ou(4));
                        SettingsFragment y = mainActivity.y();
                        if (y != null) {
                            y.S(false);
                        }
                    }
                }
                return false;
            case 6:
                obj.getClass();
                if (!((Boolean) obj).booleanValue() || Settings.canDrawOverlays(settingsFragment.G())) {
                    return true;
                }
                View view = settingsFragment.F;
                if (view != null) {
                    int[] iArr = l20.z;
                    l20.e(view, view.getResources().getText(R.string.auto_dim_permission_required)).f();
                }
                return false;
            default:
                obj.getClass();
                if (!((Boolean) obj).booleanValue() || Settings.canDrawOverlays(settingsFragment.G())) {
                    return true;
                }
                View view2 = settingsFragment.F;
                if (view2 != null) {
                    int[] iArr2 = l20.z;
                    l20.e(view2, view2.getResources().getText(R.string.auto_dim_permission_required)).f();
                }
                return false;
        }
    }

    @Override // defpackage.bu
    public void b(Preference preference) {
        int i = this.a;
        SettingsFragment settingsFragment = this.b;
        switch (i) {
            case 1:
                settingsFragment.L(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
                return;
            case 2:
            case 6:
            case 7:
            default:
                String packageName = settingsFragment.G().getPackageName();
                settingsFragment.L(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + packageName)));
                return;
            case 3:
                new b().O(settingsFragment.j(), "AboutDialog");
                return;
            case 4:
                Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
                intent.putExtra("android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME", new ComponentName(settingsFragment.G(), MirrorNotificationListenerService.class).flattenToString());
                settingsFragment.L(intent);
                return;
            case 5:
                Context G = settingsFragment.G();
                String string = G.getSharedPreferences(lu.b(G), 0).getString("auto_launch_package", null);
                q6 q6Var = new q6();
                Bundle bundle = new Bundle();
                if (string == null) {
                    string = "";
                }
                bundle.putString("current_package", string);
                q6Var.J(bundle);
                q6Var.O(settingsFragment.j(), "AppPickerDialog");
                return;
            case 8:
                settingsFragment.L(new Intent(settingsFragment.G(), LaunchShortcutsActivity.class));
                return;
            case 9:
                settingsFragment.L(new Intent(settingsFragment.G(), AdvancedSettingsActivity.class));
                return;
            case 10:
                settingsFragment.L(new Intent(settingsFragment.G(), RootSettingsActivity.class));
                return;
        }
    }

    @Override // defpackage.mg
    public void d(Bundle bundle) {
        String string = bundle.getString("package");
        if (string == null) {
            string = "";
        }
        SettingsFragment settingsFragment = this.b;
        Context G = settingsFragment.G();
        G.getSharedPreferences(lu.b(G), 0).edit().putString("auto_launch_package", string).apply();
        settingsFragment.R();
    }
}
