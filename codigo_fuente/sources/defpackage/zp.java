package defpackage;

import android.os.Handler;
import idv.lzn.screenonauto.MirrorAccessibilityService;
/* renamed from: zp  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class zp implements Runnable {
    public final /* synthetic */ float a;
    public final /* synthetic */ MirrorAccessibilityService b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;

    public /* synthetic */ zp(float f, MirrorAccessibilityService mirrorAccessibilityService, float f2, float f3) {
        this.a = f;
        this.b = mirrorAccessibilityService;
        this.c = f2;
        this.d = f3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MirrorAccessibilityService mirrorAccessibilityService = MirrorAccessibilityService.s;
        float f = b00.d;
        if (b00.c != 0.0f && f != 0.0f) {
            float f2 = this.a;
            if (f2 <= 0.0f) {
                return;
            }
            MirrorAccessibilityService mirrorAccessibilityService2 = this.b;
            boolean z = mirrorAccessibilityService2.m;
            xp xpVar = mirrorAccessibilityService2.r;
            Handler handler = mirrorAccessibilityService2.a;
            if (!z) {
                mirrorAccessibilityService2.m = true;
                mirrorAccessibilityService2.n = 1.0f;
            }
            mirrorAccessibilityService2.n *= f2;
            mirrorAccessibilityService2.o = this.c;
            mirrorAccessibilityService2.q = this.d;
            handler.removeCallbacks(xpVar);
            handler.postDelayed(xpVar, 100L);
        }
    }
}
