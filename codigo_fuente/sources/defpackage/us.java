package defpackage;

import android.content.SharedPreferences;
import android.provider.Settings;
import android.view.View;
import android.view.WindowManager;
import idv.lzn.screenonauto.ScreenCaptureService;
/* renamed from: us  reason: default package */
/* loaded from: classes.dex */
public final class us {
    public final ScreenCaptureService a;
    public final SharedPreferences b;
    public final WindowManager c;
    public boolean d;
    public View e;
    public final WindowManager.LayoutParams f;

    public us(ScreenCaptureService screenCaptureService, SharedPreferences sharedPreferences) {
        sharedPreferences.getClass();
        this.a = screenCaptureService;
        this.b = sharedPreferences;
        this.c = (WindowManager) screenCaptureService.getSystemService(WindowManager.class);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(1, 1, 2038, 56, -3);
        layoutParams.gravity = 8388659;
        layoutParams.screenOrientation = 0;
        this.f = layoutParams;
    }

    public final void a() {
        Object cyVar;
        if (this.d && this.b.getBoolean("force_landscape_active", false)) {
            ScreenCaptureService screenCaptureService = this.a;
            if (Settings.canDrawOverlays(screenCaptureService)) {
                if (Settings.canDrawOverlays(screenCaptureService) && this.e == null) {
                    View view = new View(screenCaptureService);
                    try {
                        this.c.addView(view, this.f);
                        cyVar = f60.a;
                    } catch (Throwable th) {
                        cyVar = new cy(th);
                    }
                    if (!(cyVar instanceof cy)) {
                        f60 f60Var = (f60) cyVar;
                        this.e = view;
                        return;
                    }
                    return;
                }
                return;
            }
        }
        c();
    }

    public final void b(boolean z) {
        this.d = z;
        boolean z2 = false;
        SharedPreferences sharedPreferences = this.b;
        if (z && sharedPreferences.getBoolean("force_landscape", false)) {
            z2 = true;
        }
        sharedPreferences.edit().putBoolean("force_landscape_active", z2).apply();
        a();
    }

    public final void c() {
        View view = this.e;
        if (view != null) {
            try {
                this.c.removeView(view);
            } catch (Throwable unused) {
            }
        }
        this.e = null;
    }
}
