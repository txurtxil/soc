package defpackage;

import android.content.Intent;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: b00  reason: default package */
/* loaded from: classes.dex */
public abstract class b00 {
    public static int a;
    public static Intent b;
    public static int c;
    public static int d;
    public static int e;
    public static boolean f;
    public static cm g;
    public static x6 h;
    public static x6 i;
    public static MediaProjection j;
    public static final Handler k = new Handler(Looper.getMainLooper());
    public static final zz l;
    public static final zz m;
    public static final List n;
    public static final boolean o;
    public static boolean p;
    public static final a00 q;

    /* JADX WARN: Type inference failed for: r0v1, types: [zz, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [a00, android.media.projection.MediaProjection$Callback] */
    /* JADX WARN: Type inference failed for: r1v1, types: [zz, java.lang.Object] */
    static {
        boolean z;
        ?? obj = new Object();
        l = obj;
        ?? obj2 = new Object();
        m = obj2;
        n = w9.y(obj, obj2);
        if (Build.VERSION.SDK_INT < 34) {
            z = true;
        } else {
            z = false;
        }
        o = z;
        q = new MediaProjection.Callback();
    }

    public static void a(zz zzVar, final Surface surface, final int i2, final int i3, int i4) {
        MediaProjection mediaProjection;
        boolean z;
        final int i5;
        final int i6;
        eq eqVar;
        Surface surface2;
        eq eqVar2;
        int i7;
        if (!surface.isValid() || (mediaProjection = j) == null) {
            return;
        }
        if (zzVar.a != null) {
            z = zzVar.i;
        } else if (p && c > 0 && d > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            int i8 = c;
            int i9 = d;
            int i10 = e;
            if (i10 <= 0) {
                i10 = zzVar.f;
            }
            int i11 = i10;
            eq eqVar3 = zzVar.j;
            if (eqVar3 == null) {
                eqVar3 = new eq();
                zzVar.j = eqVar3;
            }
            if (eqVar3.C != null) {
                eqVar3.b.post(new cq(eqVar3, i8, i9, 1));
                surface2 = eqVar3.C;
                i5 = i8;
                i6 = i9;
                eqVar = eqVar3;
            } else {
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                i5 = i8;
                i6 = i9;
                final eq eqVar4 = eqVar3;
                eqVar = eqVar4;
                eqVar3.b.post(new Runnable() { // from class: bq
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i12 = r5;
                        Object obj = countDownLatch;
                        int i13 = i6;
                        int i14 = i5;
                        eq eqVar5 = eqVar4;
                        switch (i12) {
                            case 0:
                                Surface surface3 = (Surface) obj;
                                if (!eqVar5.w) {
                                    eqVar5.u = i14;
                                    eqVar5.v = i13;
                                    eqVar5.a(surface3);
                                    eqVar5.e(true);
                                    return;
                                }
                                return;
                            default:
                                CountDownLatch countDownLatch2 = (CountDownLatch) obj;
                                try {
                                    if (!eqVar5.w && eqVar5.f()) {
                                        eqVar5.c(i14, i13);
                                    }
                                } catch (Throwable th) {
                                    try {
                                        Log.w("MirrorCompositor", "start: GL init failed", th);
                                    } finally {
                                        countDownLatch2.countDown();
                                    }
                                }
                                return;
                        }
                    }
                });
                if (!countDownLatch.await(750L, TimeUnit.MILLISECONDS)) {
                    Log.w("MirrorCompositor", "start: GL init timed out after 750ms, falling back");
                }
                surface2 = eqVar.C;
            }
            Surface surface3 = surface2;
            if (surface3 == null) {
                Log.w("ScreenMirrorManager", "applySelfDrawn: compositor unavailable, using AUTO_MIRROR");
            } else {
                VirtualDisplay virtualDisplay = zzVar.a;
                if (virtualDisplay != null) {
                    if (!zzVar.k) {
                        virtualDisplay.setSurface(surface3);
                    }
                    eqVar2 = eqVar;
                    i7 = i11;
                } else if (!zzVar.b) {
                    int i12 = eqVar.B;
                    eqVar2 = eqVar;
                    i7 = i11;
                    zzVar.a = mediaProjection.createVirtualDisplay("ScreenOnAuto", i12, i12, i11, 16, surface3, null, k);
                    zzVar.g = i12;
                    zzVar.h = i12;
                    zzVar.i = true;
                    zzVar.b = true;
                } else {
                    Log.w("ScreenMirrorManager", "applySelfDrawn: slot's create already consumed; need a fresh MediaProjection");
                    return;
                }
                eqVar2.b.post(new cq(eqVar2, zzVar.g, zzVar.h, 0));
                final eq eqVar5 = eqVar2;
                eqVar2.b.post(new Runnable() { // from class: bq
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i122 = r5;
                        Object obj = surface;
                        int i13 = i3;
                        int i14 = i2;
                        eq eqVar52 = eqVar5;
                        switch (i122) {
                            case 0:
                                Surface surface32 = (Surface) obj;
                                if (!eqVar52.w) {
                                    eqVar52.u = i14;
                                    eqVar52.v = i13;
                                    eqVar52.a(surface32);
                                    eqVar52.e(true);
                                    return;
                                }
                                return;
                            default:
                                CountDownLatch countDownLatch2 = (CountDownLatch) obj;
                                try {
                                    if (!eqVar52.w && eqVar52.f()) {
                                        eqVar52.c(i14, i13);
                                    }
                                } catch (Throwable th) {
                                    try {
                                        Log.w("MirrorCompositor", "start: GL init failed", th);
                                    } finally {
                                        countDownLatch2.countDown();
                                    }
                                }
                                return;
                        }
                    }
                });
                zzVar.k = true;
                int i13 = zzVar.g;
                int i14 = zzVar.h;
                StringBuilder g2 = t20.g("applySelfDrawn: phone ", i5, "x", i6, " in VD ");
                g2.append(i13);
                g2.append("x");
                g2.append(i14);
                g2.append(" box ");
                g2.append(i2);
                g2.append("x");
                g2.append(i3);
                g2.append(" dpi=");
                g2.append(i7);
                Log.d("ScreenMirrorManager", g2.toString());
                return;
            }
        }
        eq eqVar6 = zzVar.j;
        if (eqVar6 != null) {
            eqVar6.d();
        }
        VirtualDisplay virtualDisplay2 = zzVar.a;
        if (virtualDisplay2 != null) {
            virtualDisplay2.resize(i2, i3, i4);
            zzVar.g = i2;
            zzVar.h = i3;
            virtualDisplay2.setSurface(surface);
            Log.d("ScreenMirrorManager", "applySurface: reused VD, swapped surface " + i2 + "x" + i3 + " dpi=" + i4);
        } else if (!zzVar.b) {
            VirtualDisplay createVirtualDisplay = mediaProjection.createVirtualDisplay("ScreenOnAuto", i2, i3, i4, 16, surface, null, k);
            zzVar.a = createVirtualDisplay;
            zzVar.g = i2;
            zzVar.h = i3;
            zzVar.i = false;
            zzVar.b = true;
            Log.d("ScreenMirrorManager", "applySurface: created VD " + createVirtualDisplay);
        } else {
            Log.w("ScreenMirrorManager", "applySurface: slot's create already consumed; need a fresh MediaProjection");
        }
        eq eqVar7 = zzVar.j;
        if (eqVar7 != null) {
            eqVar7.b.post(new m1(8, eqVar7));
        }
        zzVar.j = null;
        zzVar.k = false;
    }

    public static void b() {
        for (zz zzVar : n) {
            Surface surface = zzVar.c;
            if (surface != null) {
                a(zzVar, surface, zzVar.d, zzVar.e, zzVar.f);
            }
        }
    }

    public static void c() {
        for (zz zzVar : n) {
            VirtualDisplay virtualDisplay = zzVar.a;
            if (virtualDisplay != null) {
                virtualDisplay.release();
            }
            zzVar.a = null;
            zzVar.g = 0;
            zzVar.h = 0;
            zzVar.i = false;
            zzVar.b = false;
            eq eqVar = zzVar.j;
            if (eqVar != null) {
                eqVar.b.post(new m1(8, eqVar));
            }
            zzVar.j = null;
            zzVar.k = false;
        }
    }

    public static void d(final int i2, final int i3, final int i4, final yz yzVar, final Surface surface) {
        surface.getClass();
        k.post(new Runnable() { // from class: xz
            @Override // java.lang.Runnable
            public final void run() {
                MediaProjection mediaProjection = b00.j;
                StringBuilder sb = new StringBuilder("startMirroring(");
                yz yzVar2 = yzVar;
                sb.append(yzVar2);
                sb.append("): mediaProjection=");
                sb.append(mediaProjection);
                sb.append(" w=");
                int i5 = i2;
                sb.append(i5);
                sb.append(" h=");
                int i6 = i3;
                sb.append(i6);
                sb.append(" dpi=");
                int i7 = i4;
                sb.append(i7);
                Log.d("ScreenMirrorManager", sb.toString());
                zz zzVar = b00.l;
                if (b00.o && yzVar2 == yz.b) {
                    zzVar = b00.m;
                }
                Surface surface2 = surface;
                zzVar.c = surface2;
                zzVar.d = i5;
                zzVar.e = i6;
                zzVar.f = i7;
                if (b00.j != null) {
                    b00.a(zzVar, surface2, i5, i6, i7);
                }
            }
        });
    }
}
