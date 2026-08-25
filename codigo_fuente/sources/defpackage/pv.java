package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import idv.lzn.screenonauto.MainActivity;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
/* renamed from: pv  reason: default package */
/* loaded from: classes.dex */
public final class pv implements SurfaceHolder.Callback {
    public final /* synthetic */ ProjectionCarActivity a;

    public pv(ProjectionCarActivity projectionCarActivity) {
        this.a = projectionCarActivity;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        surfaceHolder.getClass();
        ProjectionCarActivity projectionCarActivity = this.a;
        projectionCarActivity.v = i2;
        projectionCarActivity.w = i3;
        projectionCarActivity.z = surfaceHolder.getSurface();
        SharedPreferences m = projectionCarActivity.m();
        m.getClass();
        String m2 = k60.m(m);
        StringBuilder g = t20.g("surfaceChanged: ", i2, "x", i3, " gap=");
        g.append(m2);
        Log.d("ProjectionCarActivity", g.toString());
        Surface surface = surfaceHolder.getSurface();
        surface.getClass();
        b00.h = new x6(2, projectionCarActivity);
        if (b00.j == null) {
            Log.w("ProjectionCarActivity", "No MediaProjection yet — bringing app to foreground (auto-start gated by pref)");
            Context applicationContext = projectionCarActivity.getApplicationContext();
            Intent intent = new Intent(projectionCarActivity.getApplicationContext(), MainActivity.class);
            intent.addFlags(805306368);
            intent.putExtra("extra_auto_start", true);
            applicationContext.startActivity(intent);
            return;
        }
        SharedPreferences m3 = projectionCarActivity.m();
        m3.getClass();
        projectionCarActivity.x = k60.e(m3, i2);
        SharedPreferences m4 = projectionCarActivity.m();
        m4.getClass();
        int d = k60.d(m4, i3);
        projectionCarActivity.y = d;
        b00.d(projectionCarActivity.x, d, projectionCarActivity.getResources().getDisplayMetrics().densityDpi, yz.b, surface);
        Context applicationContext2 = projectionCarActivity.getApplicationContext();
        applicationContext2.getClass();
        String string = applicationContext2.getSharedPreferences(lu.b(applicationContext2), 0).getString("auto_launch_package", null);
        if (string != null && string.length() != 0) {
            z5.c(applicationContext2, string);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        surfaceHolder.getClass();
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        surfaceHolder.getClass();
        Log.d("ProjectionCarActivity", "surfaceDestroyed");
        int i = ProjectionCarActivity.G;
        ProjectionCarActivity projectionCarActivity = this.a;
        projectionCarActivity.k = false;
        PrivilegedInputInjector.INSTANCE.cancelForwardedStream();
        projectionCarActivity.z = null;
        int i2 = b00.a;
        b00.k.post(new m1(13, yz.b));
    }
}
