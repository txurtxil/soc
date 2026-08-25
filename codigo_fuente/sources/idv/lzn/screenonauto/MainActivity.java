package idv.lzn.screenonauto;

import android.app.KeyguardManager;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.MainActivity;
import idv.lzn.screenonauto.ScreenCaptureService;
import idv.lzn.screenonauto.SettingsFragment;
/* loaded from: classes.dex */
public final class MainActivity extends z2 {
    public static final /* synthetic */ int E = 0;
    public boolean A;
    public boolean B;
    public final u1 C = j(new s1(this) { // from class: dm
        public final /* synthetic */ MainActivity b;

        {
            this.b = this;
        }

        @Override // defpackage.s1
        public final void a(Object obj) {
            Intent intent;
            int i = r2;
            MainActivity mainActivity = this.b;
            switch (i) {
                case 0:
                    r1 r1Var = (r1) obj;
                    int i2 = MainActivity.E;
                    int i3 = r1Var.a;
                    if (i3 == -1 && (intent = r1Var.b) != null) {
                        b00.f = true;
                        b00.a = i3;
                        b00.b = intent;
                        Intent intent2 = new Intent(mainActivity, ScreenCaptureService.class);
                        if (Build.VERSION.SDK_INT >= 26) {
                            ab.b(mainActivity, intent2);
                        } else {
                            mainActivity.startService(intent2);
                        }
                        SettingsFragment y = mainActivity.y();
                        if (y != null) {
                            y.S(true);
                            return;
                        }
                        return;
                    }
                    SettingsFragment y2 = mainActivity.y();
                    if (y2 != null) {
                        y2.S(false);
                        return;
                    }
                    return;
                default:
                    Boolean bool = (Boolean) obj;
                    int i4 = MainActivity.E;
                    u1 u1Var = mainActivity.C;
                    MediaProjectionManager mediaProjectionManager = mainActivity.z;
                    if (mediaProjectionManager != null) {
                        u1Var.G(mediaProjectionManager.createScreenCaptureIntent());
                        return;
                    } else {
                        qj.v("projectionManager");
                        throw null;
                    }
            }
        }
    }, new t1(2));
    public final u1 D = j(new s1(this) { // from class: dm
        public final /* synthetic */ MainActivity b;

        {
            this.b = this;
        }

        @Override // defpackage.s1
        public final void a(Object obj) {
            Intent intent;
            int i = r2;
            MainActivity mainActivity = this.b;
            switch (i) {
                case 0:
                    r1 r1Var = (r1) obj;
                    int i2 = MainActivity.E;
                    int i3 = r1Var.a;
                    if (i3 == -1 && (intent = r1Var.b) != null) {
                        b00.f = true;
                        b00.a = i3;
                        b00.b = intent;
                        Intent intent2 = new Intent(mainActivity, ScreenCaptureService.class);
                        if (Build.VERSION.SDK_INT >= 26) {
                            ab.b(mainActivity, intent2);
                        } else {
                            mainActivity.startService(intent2);
                        }
                        SettingsFragment y = mainActivity.y();
                        if (y != null) {
                            y.S(true);
                            return;
                        }
                        return;
                    }
                    SettingsFragment y2 = mainActivity.y();
                    if (y2 != null) {
                        y2.S(false);
                        return;
                    }
                    return;
                default:
                    Boolean bool = (Boolean) obj;
                    int i4 = MainActivity.E;
                    u1 u1Var = mainActivity.C;
                    MediaProjectionManager mediaProjectionManager = mainActivity.z;
                    if (mediaProjectionManager != null) {
                        u1Var.G(mediaProjectionManager.createScreenCaptureIntent());
                        return;
                    } else {
                        qj.v("projectionManager");
                        throw null;
                    }
            }
        }
    }, new t1(1));
    public MediaProjectionManager z;

    @Override // defpackage.z2, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        context.getClass();
        j3.l();
        super.attachBaseContext(context);
    }

    @Override // defpackage.z2, androidx.activity.a, defpackage.ka, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x();
        setContentView(R.layout.activity_main);
        w((Toolbar) findViewById(R.id.toolbar));
        Object systemService = getSystemService(MediaProjectionManager.class);
        systemService.getClass();
        this.z = (MediaProjectionManager) systemService;
        boolean z = false;
        if (bundle != null) {
            z = bundle.getBoolean("auto_start_consumed", false);
        }
        this.A = z;
    }

    @Override // defpackage.z2, androidx.activity.a, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        this.A = false;
        x();
    }

    @Override // defpackage.z2, android.app.Activity
    public final void onPause() {
        super.onPause();
        b00.g = null;
    }

    @Override // defpackage.z2, android.app.Activity
    public final void onResume() {
        boolean z;
        super.onResume();
        if (this.B) {
            this.B = false;
            if (Build.VERSION.SDK_INT >= 26) {
                KeyguardManager keyguardManager = (KeyguardManager) getSystemService(KeyguardManager.class);
                if (keyguardManager != null) {
                    keyguardManager.requestDismissKeyguard(this, null);
                }
            } else {
                getWindow().addFlags(4194304);
            }
        }
        SettingsFragment y = y();
        if (y != null) {
            if (!b00.f && b00.j == null) {
                z = false;
            } else {
                z = true;
            }
            y.S(z);
        }
        b00.g = new cm(y, 0);
        if (!this.A && !b00.f && b00.j == null && getIntent().getBooleanExtra("extra_auto_start", false)) {
            this.A = true;
            getIntent().removeExtra("extra_auto_start");
            if (getSharedPreferences(lu.b(this), 0).getBoolean("auto_start_mirror", false)) {
                if (Build.VERSION.SDK_INT >= 33 && gn.g(this, "android.permission.POST_NOTIFICATIONS") != 0) {
                    this.D.G("android.permission.POST_NOTIFICATIONS");
                    return;
                }
                MediaProjectionManager mediaProjectionManager = this.z;
                if (mediaProjectionManager != null) {
                    this.C.G(mediaProjectionManager.createScreenCaptureIntent());
                    return;
                }
                qj.v("projectionManager");
                throw null;
            }
        }
    }

    @Override // androidx.activity.a, defpackage.ka, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("auto_start_consumed", this.A);
    }

    @Override // defpackage.z2, android.app.Activity
    public final void onStart() {
        Object systemService = getSystemService("uimode");
        systemService.getClass();
        int nightMode = ((UiModeManager) systemService).getNightMode();
        j3 k = k();
        int i = 2;
        if (nightMode != 2) {
            i = 1;
        }
        k.n(i);
        super.onStart();
    }

    public final void x() {
        if (!getIntent().getBooleanExtra("extra_auto_start", false)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 27) {
            setShowWhenLocked(true);
            setTurnScreenOn(true);
        } else {
            getWindow().addFlags(2621440);
        }
        this.B = true;
    }

    public final SettingsFragment y() {
        vf y = ((wf) this.t.b).m.y(R.id.settings_container);
        if (y instanceof SettingsFragment) {
            return (SettingsFragment) y;
        }
        return null;
    }
}
