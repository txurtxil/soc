package defpackage;

import android.accessibilityservice.GestureDescription;
import android.content.res.Resources;
import android.graphics.Path;
import android.os.Build;
import android.os.SystemClock;
import android.util.TypedValue;
import idv.lzn.screenonauto.MirrorAccessibilityService;
/* renamed from: xp  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class xp implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ MirrorAccessibilityService b;

    public /* synthetic */ xp(MirrorAccessibilityService mirrorAccessibilityService, int i) {
        this.a = i;
        this.b = mirrorAccessibilityService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float f;
        float f2;
        int i = this.a;
        boolean z = true;
        MirrorAccessibilityService mirrorAccessibilityService = this.b;
        switch (i) {
            case 0:
                MirrorAccessibilityService mirrorAccessibilityService2 = MirrorAccessibilityService.s;
                mirrorAccessibilityService.performGlobalAction(2);
                return;
            case 1:
                MirrorAccessibilityService mirrorAccessibilityService3 = MirrorAccessibilityService.s;
                mirrorAccessibilityService.performGlobalAction(1);
                return;
            case 2:
                MirrorAccessibilityService mirrorAccessibilityService4 = MirrorAccessibilityService.s;
                mirrorAccessibilityService.performGlobalAction(3);
                return;
            case 3:
                if (!mirrorAccessibilityService.e && Build.VERSION.SDK_INT >= 26) {
                    mirrorAccessibilityService.c();
                    return;
                }
                return;
            default:
                if (mirrorAccessibilityService.m) {
                    mirrorAccessibilityService.m = false;
                    float f3 = b00.c;
                    float f4 = b00.d;
                    float f5 = 0.0f;
                    if (f3 != 0.0f && f4 != 0.0f) {
                        float max = Math.max(f3, f4);
                        float f6 = 0.8f * max;
                        float applyDimension = max - (TypedValue.applyDimension(5, 10.0f, Resources.getSystem().getDisplayMetrics()) * 2.0f);
                        if (applyDimension < 0.0f) {
                            applyDimension = 0.0f;
                        }
                        if (f6 > applyDimension) {
                            f6 = applyDimension;
                        }
                        float applyDimension2 = TypedValue.applyDimension(5, 34.0f, Resources.getSystem().getDisplayMetrics());
                        float f7 = 0.9f * f6;
                        if (applyDimension2 > f7) {
                            applyDimension2 = f7;
                        }
                        float f8 = mirrorAccessibilityService.n;
                        if (Math.abs(f8 - 1.0f) >= 0.01f) {
                            if (f8 > 1.0f) {
                                f = applyDimension2;
                            } else {
                                f = f6;
                            }
                            float i2 = gn.i(f8 * f, applyDimension2, f6);
                            if (f != i2) {
                                float f9 = f / 2.0f;
                                float f10 = i2 / 2.0f;
                                if (f4 < f3) {
                                    z = false;
                                }
                                float max2 = Math.max(f9, f10);
                                float f11 = mirrorAccessibilityService.o;
                                float f12 = f3 - 1.0f;
                                if (z) {
                                    f2 = 0.0f;
                                } else {
                                    f2 = max2;
                                }
                                float b = em.b(f11, f12, f2);
                                float f13 = mirrorAccessibilityService.q;
                                float f14 = f4 - 1.0f;
                                if (z) {
                                    f5 = max2;
                                }
                                float b2 = em.b(f13, f14, f5);
                                Path path = new Path();
                                if (z) {
                                    path.moveTo(b, b2 - f9);
                                    path.lineTo(b, b2 - f10);
                                } else {
                                    path.moveTo(b - f9, b2);
                                    path.lineTo(b - f10, b2);
                                }
                                Path path2 = new Path();
                                if (z) {
                                    path2.moveTo(b, f9 + b2);
                                    path2.lineTo(b, b2 + f10);
                                } else {
                                    path2.moveTo(f9 + b, b2);
                                    path2.lineTo(b + f10, b2);
                                }
                                try {
                                    GestureDescription build = new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 0L, 200L)).addStroke(new GestureDescription.StrokeDescription(path2, 0L, 200L)).build();
                                    build.getClass();
                                    s8.i = SystemClock.uptimeMillis();
                                    mirrorAccessibilityService.dispatchGesture(build, null, null);
                                    return;
                                } catch (Throwable unused) {
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
