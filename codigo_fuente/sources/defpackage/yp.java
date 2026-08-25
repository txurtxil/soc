package defpackage;

import android.accessibilityservice.GestureDescription;
import android.graphics.Path;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import idv.lzn.screenonauto.MirrorAccessibilityService;
/* renamed from: yp  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class yp implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ MirrorAccessibilityService b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;

    public /* synthetic */ yp(MirrorAccessibilityService mirrorAccessibilityService, float f, float f2, int i) {
        this.a = i;
        this.b = mirrorAccessibilityService;
        this.c = f;
        this.d = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                MirrorAccessibilityService mirrorAccessibilityService = this.b;
                float f = this.c;
                float f2 = this.d;
                if (!mirrorAccessibilityService.m) {
                    mirrorAccessibilityService.a.removeCallbacks(mirrorAccessibilityService.l);
                    mirrorAccessibilityService.f = 0.0f;
                    mirrorAccessibilityService.g = 0.0f;
                    if (mirrorAccessibilityService.e) {
                        mirrorAccessibilityService.h = true;
                        mirrorAccessibilityService.i = f;
                        mirrorAccessibilityService.j = f2;
                        return;
                    }
                    mirrorAccessibilityService.a(f, f2);
                    return;
                }
                return;
            case 1:
                MirrorAccessibilityService mirrorAccessibilityService2 = this.b;
                float f3 = this.c;
                float f4 = this.d;
                MirrorAccessibilityService mirrorAccessibilityService3 = MirrorAccessibilityService.s;
                Path path = new Path();
                path.moveTo(f3, f4);
                path.lineTo(f3 + 0.1f, f4);
                GestureDescription build = new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 0L, 50L)).build();
                build.getClass();
                s8.i = SystemClock.uptimeMillis();
                mirrorAccessibilityService2.dispatchGesture(build, null, null);
                return;
            default:
                MirrorAccessibilityService mirrorAccessibilityService4 = this.b;
                float f5 = this.c;
                float f6 = this.d;
                if (!mirrorAccessibilityService4.m) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        Handler handler = mirrorAccessibilityService4.a;
                        xp xpVar = mirrorAccessibilityService4.l;
                        handler.removeCallbacks(xpVar);
                        if (mirrorAccessibilityService4.e) {
                            mirrorAccessibilityService4.f += f5;
                            mirrorAccessibilityService4.g += f6;
                        } else {
                            mirrorAccessibilityService4.b(f5, f6);
                        }
                        handler.postDelayed(xpVar, 50L);
                        return;
                    }
                    float f7 = b00.c;
                    float f8 = b00.d;
                    if (f7 != 0.0f && f8 != 0.0f) {
                        float f9 = f7 / 2.0f;
                        float f10 = f8 / 2.0f;
                        Path path2 = new Path();
                        path2.moveTo(f9, f10);
                        path2.lineTo(f9 - f5, f10 - f6);
                        GestureDescription build2 = new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path2, 0L, 80L)).build();
                        build2.getClass();
                        s8.i = SystemClock.uptimeMillis();
                        mirrorAccessibilityService4.dispatchGesture(build2, null, null);
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
