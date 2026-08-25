package defpackage;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.WindowManager;
import idv.lzn.screenonauto.ScreenCaptureService;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
/* renamed from: a7  reason: default package */
/* loaded from: classes.dex */
public final class a7 {
    public final ScreenCaptureService a;
    public final SharedPreferences b;
    public final Handler c;
    public final WindowManager d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public View i;
    public final WindowManager.LayoutParams j;
    public final m1 k;
    public final x6 l;
    public final y6 m;

    public a7(ScreenCaptureService screenCaptureService, SharedPreferences sharedPreferences) {
        sharedPreferences.getClass();
        this.a = screenCaptureService;
        this.b = sharedPreferences;
        this.c = new Handler(Looper.getMainLooper());
        this.d = (WindowManager) screenCaptureService.getSystemService(WindowManager.class);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(1, 1, 2038, 262184, -2);
        layoutParams.gravity = 8388659;
        layoutParams.screenBrightness = -1.0f;
        this.j = layoutParams;
        this.k = new m1(1, this);
        x6 x6Var = new x6(0, this);
        this.l = x6Var;
        y6 y6Var = new y6(0, this);
        this.m = y6Var;
        PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
        privilegedManager.addOnStateChangedListener(x6Var);
        privilegedManager.addOnBeforeDisconnectListener(y6Var);
    }

    public final void a() {
        if (this.f) {
            boolean z = this.g;
            boolean z2 = false;
            if (this.b.getBoolean("root_screen_off", false)) {
                PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
                if (privilegedManager.isConnected() && privilegedManager.getDisplayPowerModeSupported()) {
                    z2 = true;
                }
            }
            if (z != z2) {
                c();
            }
        }
        b();
    }

    public final void b() {
        long j;
        Long x;
        Handler handler = this.c;
        m1 m1Var = this.k;
        handler.removeCallbacks(m1Var);
        boolean d = d();
        WindowManager.LayoutParams layoutParams = this.j;
        WindowManager windowManager = this.d;
        if (d) {
            ScreenCaptureService screenCaptureService = this.a;
            if (Settings.canDrawOverlays(screenCaptureService) && this.i == null) {
                View view = new View(screenCaptureService);
                view.setOnTouchListener(new z6(0, this));
                windowManager.addView(view, layoutParams);
                this.i = view;
            }
            if (!this.f) {
                String string = this.b.getString("auto_dim_delay", "30");
                if (string != null && (x = i30.x(string)) != null) {
                    j = x.longValue();
                } else {
                    j = 30;
                }
                handler.postDelayed(m1Var, j * 1000);
                return;
            }
            return;
        }
        if (this.f) {
            c();
        }
        View view2 = this.i;
        if (view2 != null) {
            try {
                windowManager.removeView(view2);
            } catch (Throwable unused) {
            }
        }
        this.i = null;
        layoutParams.screenBrightness = -1.0f;
    }

    public final void c() {
        if (this.f) {
            if (this.g) {
                if (!PrivilegedManager.INSTANCE.setDisplayPowerMode(2)) {
                    return;
                }
                this.g = false;
            } else {
                WindowManager.LayoutParams layoutParams = this.j;
                layoutParams.screenBrightness = -1.0f;
                View view = this.i;
                if (view != null) {
                    try {
                        this.d.updateViewLayout(view, layoutParams);
                    } catch (Throwable unused) {
                    }
                }
            }
            this.f = false;
        }
    }

    public final boolean d() {
        if (!this.e || !this.b.getBoolean("auto_dim", false) || !Settings.canDrawOverlays(this.a)) {
            return false;
        }
        return true;
    }
}
