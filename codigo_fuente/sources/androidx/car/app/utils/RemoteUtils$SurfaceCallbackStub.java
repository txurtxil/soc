package androidx.car.app.utils;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Handler;
import android.os.PowerManager;
import android.util.Log;
import android.view.Surface;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.ISurfaceCallback;
import androidx.car.app.SurfaceContainer;
import androidx.car.app.i;
import idv.lzn.screenonauto.MainActivity;
import idv.lzn.screenonauto.MirrorAccessibilityService;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
/* loaded from: classes.dex */
public class RemoteUtils$SurfaceCallbackStub extends ISurfaceCallback.Stub {
    private final nk mLifecycle;
    private t30 mSurfaceCallback;

    public RemoteUtils$SurfaceCallbackStub(nk nkVar, t30 t30Var) {
        this.mLifecycle = nkVar;
        this.mSurfaceCallback = t30Var;
        nkVar.a(new ac() { // from class: androidx.car.app.utils.RemoteUtils$SurfaceCallbackStub.1
            {
                RemoteUtils$SurfaceCallbackStub.this = this;
            }

            @Override // defpackage.ac
            public final void d(sk skVar) {
                RemoteUtils$SurfaceCallbackStub.this.mSurfaceCallback = null;
                skVar.f().b(this);
            }
        });
    }

    public Object lambda$onClick$7(float f, float f2) {
        mq mqVar;
        q50 b;
        MirrorAccessibilityService mirrorAccessibilityService;
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null && (b = mq.b((mqVar = (mq) ((ko) t30Var).b))) != null) {
            float floatValue = b.a.floatValue();
            float floatValue2 = b.b.floatValue();
            float floatValue3 = b.c.floatValue();
            float i = gn.i((f - floatValue2) / floatValue, 0.0f, b00.c);
            float i2 = gn.i((f2 - floatValue3) / floatValue, 0.0f, b00.d);
            PrivilegedInputInjector privilegedInputInjector = PrivilegedInputInjector.INSTANCE;
            SharedPreferences sharedPreferences = mqVar.o;
            sharedPreferences.getClass();
            if (!privilegedInputInjector.handleTap(sharedPreferences, i, i2) && (mirrorAccessibilityService = MirrorAccessibilityService.s) != null) {
                mirrorAccessibilityService.a.post(new yp(mirrorAccessibilityService, i, i2, 1));
                return null;
            }
            return null;
        }
        return null;
    }

    public Object lambda$onFling$5(float f, float f2) {
        mq mqVar;
        q50 b;
        MirrorAccessibilityService mirrorAccessibilityService;
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null && (b = mq.b((mqVar = (mq) ((ko) t30Var).b))) != null) {
            float floatValue = b.a.floatValue();
            PrivilegedInputInjector privilegedInputInjector = PrivilegedInputInjector.INSTANCE;
            SharedPreferences sharedPreferences = mqVar.o;
            sharedPreferences.getClass();
            float f3 = f / floatValue;
            float f4 = f2 / floatValue;
            if (!privilegedInputInjector.handleFling(sharedPreferences, f3, f4) && (mirrorAccessibilityService = MirrorAccessibilityService.s) != null) {
                mirrorAccessibilityService.a.post(new yp(mirrorAccessibilityService, f3, f4, 0));
                return null;
            }
            return null;
        }
        return null;
    }

    public Object lambda$onScale$6(float f, float f2, float f3) {
        mq mqVar;
        q50 b;
        MirrorAccessibilityService mirrorAccessibilityService;
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null && (b = mq.b((mqVar = (mq) ((ko) t30Var).b))) != null) {
            float floatValue = b.a.floatValue();
            float floatValue2 = b.b.floatValue();
            float floatValue3 = b.c.floatValue();
            float i = gn.i((f - floatValue2) / floatValue, 0.0f, b00.c);
            float i2 = gn.i((f2 - floatValue3) / floatValue, 0.0f, b00.d);
            PrivilegedInputInjector privilegedInputInjector = PrivilegedInputInjector.INSTANCE;
            SharedPreferences sharedPreferences = mqVar.o;
            sharedPreferences.getClass();
            if (!privilegedInputInjector.handleScale(sharedPreferences, i, i2, f3) && (mirrorAccessibilityService = MirrorAccessibilityService.s) != null) {
                mirrorAccessibilityService.a.post(new zp(f3, mirrorAccessibilityService, i, i2));
                return null;
            }
            return null;
        }
        return null;
    }

    public Object lambda$onScroll$4(float f, float f2) {
        mq mqVar;
        q50 b;
        MirrorAccessibilityService mirrorAccessibilityService;
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null && (b = mq.b((mqVar = (mq) ((ko) t30Var).b))) != null) {
            float floatValue = b.a.floatValue();
            PrivilegedInputInjector privilegedInputInjector = PrivilegedInputInjector.INSTANCE;
            SharedPreferences sharedPreferences = mqVar.o;
            sharedPreferences.getClass();
            float f3 = f / floatValue;
            float f4 = f2 / floatValue;
            if (!privilegedInputInjector.handleScroll(sharedPreferences, f3, f4) && (mirrorAccessibilityService = MirrorAccessibilityService.s) != null) {
                mirrorAccessibilityService.a.post(new yp(mirrorAccessibilityService, f3, f4, 2));
                return null;
            }
            return null;
        }
        return null;
    }

    public Object lambda$onStableAreaChanged$2(Rect rect) {
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null) {
            ((ko) t30Var).getClass();
            rect.getClass();
            StringBuilder g = t20.g("onStableAreaChanged: ", rect.width(), "x", rect.height(), " rect=");
            g.append(rect);
            Log.d("MirrorScreen", g.toString());
            return null;
        }
        return null;
    }

    public Object lambda$onSurfaceAvailable$0(x7 x7Var) {
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null) {
            SurfaceContainer surfaceContainer = (SurfaceContainer) x7Var.a();
            ko koVar = (ko) t30Var;
            surfaceContainer.getClass();
            Surface surface = surfaceContainer.getSurface();
            int width = surfaceContainer.getWidth();
            int height = surfaceContainer.getHeight();
            int dpi = surfaceContainer.getDpi();
            mq mqVar = (mq) koVar.b;
            SharedPreferences sharedPreferences = mqVar.o;
            sharedPreferences.getClass();
            Log.d("MirrorScreen", "onSurfaceAvailable: surface=" + surface + " w=" + width + " h=" + height + " dpi=" + dpi + " gap=" + k60.m(sharedPreferences));
            i iVar = (i) koVar.c;
            Context applicationContext = iVar.getApplicationContext();
            applicationContext.getClass();
            PowerManager powerManager = (PowerManager) applicationContext.getApplicationContext().getSystemService(PowerManager.class);
            if (powerManager != null && !powerManager.isInteractive()) {
                PowerManager.WakeLock wakeLock = k60.i;
                if (wakeLock == null) {
                    wakeLock = powerManager.newWakeLock(268435466, "ScreenOnAuto:wake");
                    wakeLock.setReferenceCounted(false);
                    k60.i = wakeLock;
                }
                wakeLock.acquire(20000L);
            }
            Surface surface2 = surfaceContainer.getSurface();
            if (surface2 == null) {
                Log.w("MirrorScreen", "onSurfaceAvailable: surface is null, skipping");
                return null;
            }
            int width2 = surfaceContainer.getWidth();
            if (width2 < 1) {
                width2 = 1;
            }
            mqVar.i = width2;
            mqVar.j = width2;
            int height2 = surfaceContainer.getHeight();
            if (height2 < 1) {
                height2 = 1;
            }
            mqVar.k = height2;
            sharedPreferences.getClass();
            mqVar.f = k60.e(sharedPreferences, mqVar.h());
            mqVar.g = k60.d(sharedPreferences, mqVar.k);
            mqVar.h = surfaceContainer.getDpi();
            int i = b00.a;
            b00.d(mqVar.f, mqVar.g, surfaceContainer.getDpi(), yz.a, surface2);
            if (mqVar.n && b00.j == null) {
                Context applicationContext2 = iVar.getApplicationContext();
                Intent intent = new Intent(iVar, MainActivity.class);
                intent.addFlags(805306368);
                intent.putExtra("extra_auto_start", true);
                applicationContext2.startActivity(intent);
                return null;
            }
            return null;
        }
        return null;
    }

    public Object lambda$onSurfaceDestroyed$3(x7 x7Var) {
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null) {
            ((SurfaceContainer) x7Var.a()).getClass();
            Log.d("MirrorScreen", "onSurfaceDestroyed");
            ((mq) ((ko) t30Var).b).l.removeCallbacksAndMessages(null);
            int i = b00.a;
            b00.k.post(new m1(13, yz.a));
        }
        return null;
    }

    public Object lambda$onVisibleAreaChanged$1(Rect rect) {
        t30 t30Var = this.mSurfaceCallback;
        if (t30Var != null) {
            final mq mqVar = (mq) ((ko) t30Var).b;
            rect.getClass();
            if (rect.isEmpty()) {
                Log.w("MirrorScreen", "onVisibleAreaChanged: empty rect, skipping");
                return null;
            }
            int i = mqVar.h;
            Handler handler = mqVar.l;
            SharedPreferences sharedPreferences = mqVar.o;
            if (i == 0) {
                Log.w("MirrorScreen", "onVisibleAreaChanged: dpi not yet known, skipping");
                return null;
            }
            int i2 = rect.right;
            if (i2 < 1) {
                i2 = 1;
            }
            mqVar.j = i2;
            sharedPreferences.getClass();
            final int e = k60.e(sharedPreferences, mqVar.h());
            handler.removeCallbacksAndMessages(null);
            int i3 = mqVar.f;
            if (e == i3) {
                Log.d("MirrorScreen", "onVisibleAreaChanged: settled back to " + e + ", cancelled pending resize");
                return null;
            }
            int i4 = mqVar.g;
            String m = k60.m(sharedPreferences);
            StringBuilder g = t20.g("onVisibleAreaChanged: resize ", e, "x", i4, " (was ");
            g.append(i3);
            g.append("x");
            g.append(i4);
            g.append(") rect=");
            g.append(rect);
            g.append(" gap=");
            g.append(m);
            Log.d("MirrorScreen", g.toString());
            handler.postDelayed(new Runnable() { // from class: lq
                @Override // java.lang.Runnable
                public final void run() {
                    mq mqVar2 = mq.this;
                    int i5 = e;
                    mqVar2.f = i5;
                    int i6 = b00.a;
                    b00.k.post(new wz(yz.a, i5, mqVar2.g, mqVar2.h));
                }
            }, mqVar.m);
        }
        return null;
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onClick(float f, float f2) {
        n40.b(new x5(this.mLifecycle, new b(this, f, f2, 0), "onClick"));
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onFling(float f, float f2) {
        n40.b(new x5(this.mLifecycle, new b(this, f, f2, 2), "onFling"));
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onScale(final float f, final float f2, final float f3) {
        n40.b(new x5(this.mLifecycle, new hx() { // from class: androidx.car.app.utils.d
            @Override // defpackage.hx
            public final Object b() {
                Object lambda$onScale$6;
                lambda$onScale$6 = RemoteUtils$SurfaceCallbackStub.this.lambda$onScale$6(f, f2, f3);
                return lambda$onScale$6;
            }
        }, "onScale"));
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onScroll(float f, float f2) {
        n40.b(new x5(this.mLifecycle, new b(this, f, f2, 1), "onScroll"));
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onStableAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback) {
        e.b(this.mLifecycle, iOnDoneCallback, "onStableAreaChanged", new c(this, rect, 1));
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onSurfaceAvailable(x7 x7Var, IOnDoneCallback iOnDoneCallback) {
        e.b(this.mLifecycle, iOnDoneCallback, "onSurfaceAvailable", new a(this, x7Var, 1));
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onSurfaceDestroyed(x7 x7Var, IOnDoneCallback iOnDoneCallback) {
        e.b(this.mLifecycle, iOnDoneCallback, "onSurfaceDestroyed", new a(this, x7Var, 0));
    }

    @Override // androidx.car.app.ISurfaceCallback
    public void onVisibleAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback) {
        e.b(this.mLifecycle, iOnDoneCallback, "onVisibleAreaChanged", new c(this, rect, 0));
    }
}
