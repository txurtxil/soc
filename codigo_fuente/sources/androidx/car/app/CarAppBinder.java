package androidx.car.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.PowerManager;
import android.util.Log;
import androidx.car.app.ICarApp;
import androidx.car.app.i;
import idv.lzn.screenonauto.MainActivity;
import idv.lzn.screenonauto.MirrorMediaService;
import idv.lzn.screenonauto.ScreenCaptureService;
import java.security.InvalidParameterException;
import java.util.ArrayDeque;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes.dex */
public final class CarAppBinder extends ICarApp.Stub {
    private l mCurrentSession;
    private final SessionInfo mCurrentSessionInfo;
    private HandshakeInfo mHandshakeInfo;
    private ei mHostValidator;
    private CarAppService mService;

    public CarAppBinder(CarAppService carAppService, SessionInfo sessionInfo) {
        this.mService = carAppService;
        this.mCurrentSessionInfo = sessionInfo;
    }

    private nk getCurrentLifecycle() {
        l lVar = this.mCurrentSession;
        if (lVar == null) {
            return null;
        }
        return lVar.b;
    }

    private ei getHostValidator() {
        if (this.mHostValidator == null) {
            CarAppService carAppService = this.mService;
            Objects.requireNonNull(carAppService);
            this.mHostValidator = carAppService.a();
        }
        return this.mHostValidator;
    }

    public void lambda$getManager$7(String str, IOnDoneCallback iOnDoneCallback) {
        l lVar = this.mCurrentSession;
        Objects.requireNonNull(lVar);
        i iVar = lVar.c;
        str.getClass();
        if (!str.equals("app")) {
            if (!str.equals("navigation")) {
                Log.e("CarApp", str.concat("%s is not a valid manager"));
                androidx.car.app.utils.e.f(iOnDoneCallback, "getManager", new InvalidParameterException(str.concat(" is not a valid manager type")));
                return;
            }
            Objects.requireNonNull(iVar);
            androidx.car.app.utils.e.g(iOnDoneCallback, "getManager", ((androidx.car.app.navigation.b) iVar.b(androidx.car.app.navigation.b.class)).a);
            return;
        }
        Objects.requireNonNull(iVar);
        androidx.car.app.utils.e.g(iOnDoneCallback, "getManager", ((b) iVar.b(b.class)).b);
    }

    public Object lambda$onAppCreate$0(ICarHost iCarHost, Configuration configuration, Intent intent) {
        x6 x6Var;
        CarAppService carAppService = this.mService;
        Objects.requireNonNull(carAppService);
        l lVar = this.mCurrentSession;
        mk mkVar = mk.a;
        if (lVar == null || lVar.b.c == mkVar) {
            Objects.requireNonNull(this.mCurrentSessionInfo);
            lVar = carAppService.b();
            this.mCurrentSession = lVar;
        }
        HandshakeInfo handshakeInfo = getHandshakeInfo();
        Objects.requireNonNull(handshakeInfo);
        Objects.requireNonNull(carAppService.c);
        i iVar = lVar.c;
        iVar.getClass();
        iVar.d = handshakeInfo.getHostCarAppApiLevel();
        iVar.a(carAppService, configuration);
        n40.a();
        j jVar = iVar.b;
        Objects.requireNonNull(iCarHost);
        jVar.getClass();
        n40.a();
        n40.a();
        jVar.b = null;
        jVar.a = iCarHost;
        androidx.lifecycle.a aVar = lVar.b;
        mk mkVar2 = aVar.c;
        Objects.requireNonNull(iVar);
        int size = ((k) iVar.b(k.class)).a.size();
        if (mkVar2.compareTo(mk.c) >= 0 && size >= 1) {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "onAppCreate the app was already created");
            }
            onNewIntentInternal(lVar, intent);
        } else {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "onAppCreate the app was not yet created or the screen stack was empty state: " + aVar.c + ", stack size: " + size);
            }
            lVar.b(lk.ON_CREATE);
            k kVar = (k) iVar.b(k.class);
            final nq nqVar = (nq) lVar;
            intent.getClass();
            boolean d = hd.d();
            nq.d = true;
            if (d != hd.d() && (x6Var = nq.f) != null) {
                x6Var.b(Boolean.valueOf(hd.d()));
            }
            i iVar2 = nqVar.c;
            Objects.requireNonNull(iVar2);
            Context applicationContext = iVar2.getApplicationContext();
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
            if (!b00.f && b00.j == null) {
                Context applicationContext2 = iVar2.getApplicationContext();
                Intent intent2 = new Intent(iVar2, MainActivity.class);
                intent2.addFlags(805306368);
                intent2.putExtra("extra_auto_start", true);
                applicationContext2.startActivity(intent2);
            } else {
                Context applicationContext3 = iVar2.getApplicationContext();
                applicationContext3.getClass();
                String string = applicationContext3.getSharedPreferences(lu.b(applicationContext3), 0).getString("auto_launch_package", null);
                if (string != null && string.length() != 0) {
                    z5.c(applicationContext3, string);
                }
            }
            iVar2.startService(new Intent(iVar2, MirrorMediaService.class));
            nqVar.b.a(new ac() { // from class: idv.lzn.screenonauto.car.MirrorSession$onCreateScreen$2
                @Override // defpackage.ac
                public final void d(sk skVar) {
                    x6 x6Var2;
                    b00.i = null;
                    boolean d2 = hd.d();
                    nq.d = false;
                    if (d2 != hd.d() && (x6Var2 = nq.f) != null) {
                        x6Var2.b(Boolean.valueOf(hd.d()));
                    }
                    i iVar3 = nq.this.c;
                    Objects.requireNonNull(iVar3);
                    Objects.requireNonNull(iVar3);
                    iVar3.stopService(new Intent(iVar3, MirrorMediaService.class));
                    if (!hd.d()) {
                        Objects.requireNonNull(iVar3);
                        if (iVar3.getSharedPreferences(lu.b(iVar3), 0).getBoolean("stop_on_disconnect", true)) {
                            Objects.requireNonNull(iVar3);
                            Objects.requireNonNull(iVar3);
                            iVar3.stopService(new Intent(iVar3, ScreenCaptureService.class));
                        }
                    }
                }

                @Override // defpackage.ac
                public final void a(sk skVar) {
                }

                @Override // defpackage.ac
                public final void b(sk skVar) {
                }

                @Override // defpackage.ac
                public final void c(sk skVar) {
                }

                @Override // defpackage.ac
                public final void e(sk skVar) {
                }

                @Override // defpackage.ac
                public final void f(sk skVar) {
                }
            });
            mq mqVar = new mq(iVar2);
            kVar.getClass();
            n40.a();
            androidx.lifecycle.a aVar2 = kVar.c;
            if (aVar2.c.equals(mkVar)) {
                if (Log.isLoggable("CarApp", 3)) {
                    Log.d("CarApp", "Pushing screens after the DESTROYED state is a no-op");
                }
            } else if (!mqVar.b.c.equals(mkVar)) {
                ArrayDeque arrayDeque = kVar.a;
                if (Log.isLoggable("CarApp", 3)) {
                    Log.d("CarApp", "Pushing screen " + mqVar + " to the top of the screen stack");
                }
                boolean contains = arrayDeque.contains(mqVar);
                mk mkVar3 = mk.e;
                if (contains) {
                    mq mqVar2 = (mq) arrayDeque.peek();
                    if (mqVar2 != null && mqVar2 != mqVar) {
                        arrayDeque.remove(mqVar);
                        kVar.a(mqVar, false);
                        k.b(mqVar2, false);
                        if (aVar2.c.compareTo(mkVar3) >= 0) {
                            mqVar.c(lk.ON_RESUME);
                        }
                    }
                } else {
                    mq mqVar3 = (mq) arrayDeque.peek();
                    kVar.a(mqVar, true);
                    if (arrayDeque.contains(mqVar)) {
                        if (mqVar3 != null) {
                            k.b(mqVar3, false);
                        }
                        if (aVar2.c.compareTo(mkVar3) >= 0) {
                            mqVar.c(lk.ON_RESUME);
                        }
                    }
                }
            } else {
                Locale locale = Locale.US;
                throw new IllegalStateException("Failed to push screen (" + mqVar + "), because it has already been destroyed. Please note that screens are single-use, so a fresh instance is required every time you call screenManager.push().");
            }
        }
        return null;
    }

    public /* synthetic */ Object lambda$onAppPause$3() {
        l lVar = this.mCurrentSession;
        Objects.requireNonNull(lVar);
        lVar.b(lk.ON_PAUSE);
        return null;
    }

    public /* synthetic */ Object lambda$onAppResume$2() {
        l lVar = this.mCurrentSession;
        Objects.requireNonNull(lVar);
        lVar.b(lk.ON_RESUME);
        return null;
    }

    public /* synthetic */ Object lambda$onAppStart$1() {
        l lVar = this.mCurrentSession;
        Objects.requireNonNull(lVar);
        lVar.b(lk.ON_START);
        return null;
    }

    public /* synthetic */ Object lambda$onAppStop$4() {
        l lVar = this.mCurrentSession;
        Objects.requireNonNull(lVar);
        lVar.b(lk.ON_STOP);
        return null;
    }

    public /* synthetic */ Object lambda$onConfigurationChanged$6(Configuration configuration) {
        l lVar = this.mCurrentSession;
        Objects.requireNonNull(lVar);
        onConfigurationChangedInternal(lVar, configuration);
        return null;
    }

    public /* synthetic */ Object lambda$onNewIntent$5(Intent intent) {
        l lVar = this.mCurrentSession;
        Objects.requireNonNull(lVar);
        onNewIntentInternal(lVar, intent);
        return null;
    }

    private void onConfigurationChangedInternal(l lVar, Configuration configuration) {
        n40.a();
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onCarConfigurationChanged configuration: " + configuration);
        }
        i iVar = lVar.c;
        iVar.c(configuration);
        iVar.getResources().getConfiguration();
    }

    private void onNewIntentInternal(l lVar, Intent intent) {
        n40.a();
        lVar.getClass();
    }

    public void destroy() {
        onDestroyLifecycle();
        this.mCurrentSession = null;
        this.mHostValidator = null;
        this.mHandshakeInfo = null;
        this.mService = null;
    }

    @Override // androidx.car.app.ICarApp
    public void getAppInfo(IOnDoneCallback iOnDoneCallback) {
        try {
            CarAppService carAppService = this.mService;
            Objects.requireNonNull(carAppService);
            if (carAppService.b == null) {
                carAppService.b = AppInfo.create(carAppService);
            }
            androidx.car.app.utils.e.g(iOnDoneCallback, "getAppInfo", carAppService.b);
        } catch (IllegalArgumentException e) {
            androidx.car.app.utils.e.f(iOnDoneCallback, "getAppInfo", e);
        }
    }

    public CarAppService getCarAppService() {
        return this.mService;
    }

    public l getCurrentSession() {
        return this.mCurrentSession;
    }

    public SessionInfo getCurrentSessionInfo() {
        return this.mCurrentSessionInfo;
    }

    public HandshakeInfo getHandshakeInfo() {
        return this.mHandshakeInfo;
    }

    @Override // androidx.car.app.ICarApp
    public void getManager(final String str, final IOnDoneCallback iOnDoneCallback) {
        n40.b(new Runnable() { // from class: androidx.car.app.f
            @Override // java.lang.Runnable
            public final void run() {
                CarAppBinder.this.lambda$getManager$7(str, iOnDoneCallback);
            }
        });
    }

    @Override // androidx.car.app.ICarApp
    public void onAppCreate(final ICarHost iCarHost, final Intent intent, final Configuration configuration, IOnDoneCallback iOnDoneCallback) {
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onAppCreate intent: " + intent);
        }
        androidx.car.app.utils.e.c(iOnDoneCallback, "onAppCreate", new hx() { // from class: androidx.car.app.e
            @Override // defpackage.hx
            public final Object b() {
                Object lambda$onAppCreate$0;
                lambda$onAppCreate$0 = CarAppBinder.this.lambda$onAppCreate$0(iCarHost, configuration, intent);
                return lambda$onAppCreate$0;
            }
        });
        if (Log.isLoggable("CarApp", 3)) {
            Log.d("CarApp", "onAppCreate completed");
        }
    }

    @Override // androidx.car.app.ICarApp
    public void onAppPause(IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(getCurrentLifecycle(), iOnDoneCallback, "onAppPause", new d(this, 0));
    }

    @Override // androidx.car.app.ICarApp
    public void onAppResume(IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(getCurrentLifecycle(), iOnDoneCallback, "onAppResume", new d(this, 3));
    }

    @Override // androidx.car.app.ICarApp
    public void onAppStart(IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(getCurrentLifecycle(), iOnDoneCallback, "onAppStart", new d(this, 1));
    }

    @Override // androidx.car.app.ICarApp
    public void onAppStop(IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(getCurrentLifecycle(), iOnDoneCallback, "onAppStop", new d(this, 2));
    }

    public void onAutoDriveEnabled() {
        l lVar = this.mCurrentSession;
        if (lVar != null) {
            i iVar = lVar.c;
            Objects.requireNonNull(iVar);
            ((androidx.car.app.navigation.b) iVar.b(androidx.car.app.navigation.b.class)).getClass();
            n40.a();
            if (Log.isLoggable("CarApp.Nav", 3)) {
                Log.d("CarApp.Nav", "Executing onAutoDriveEnabled");
            }
            Log.w("CarApp.Nav", "NavigationManagerCallback not set, skipping onAutoDriveEnabled");
        }
    }

    @Override // androidx.car.app.ICarApp
    public void onConfigurationChanged(Configuration configuration, IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(getCurrentLifecycle(), iOnDoneCallback, "onConfigurationChanged", new c(this, configuration, 0));
    }

    public void onDestroyLifecycle() {
        l lVar = this.mCurrentSession;
        if (lVar != null) {
            lVar.b(lk.ON_DESTROY);
        }
        this.mCurrentSession = null;
    }

    @Override // androidx.car.app.ICarApp
    public void onHandshakeCompleted(x7 x7Var, IOnDoneCallback iOnDoneCallback) {
        CarAppService carAppService = this.mService;
        Objects.requireNonNull(carAppService);
        try {
            HandshakeInfo handshakeInfo = (HandshakeInfo) x7Var.a();
            String hostPackageName = handshakeInfo.getHostPackageName();
            int callingUid = Binder.getCallingUid();
            n2 n2Var = new n2(hostPackageName, callingUid);
            if (!getHostValidator().b(n2Var)) {
                androidx.car.app.utils.e.f(iOnDoneCallback, "onHandshakeCompleted", new IllegalArgumentException("Unknown host '" + hostPackageName + "', uid:" + callingUid));
                return;
            }
            if (carAppService.b == null) {
                carAppService.b = AppInfo.create(carAppService);
            }
            AppInfo appInfo = carAppService.b;
            int minCarAppApiLevel = appInfo.getMinCarAppApiLevel();
            int latestCarAppApiLevel = appInfo.getLatestCarAppApiLevel();
            int hostCarAppApiLevel = handshakeInfo.getHostCarAppApiLevel();
            if (minCarAppApiLevel > hostCarAppApiLevel) {
                androidx.car.app.utils.e.f(iOnDoneCallback, "onHandshakeCompleted", new IllegalArgumentException("Host API level (" + hostCarAppApiLevel + ") is less than the app's min API level (" + minCarAppApiLevel + ")"));
            } else if (latestCarAppApiLevel < hostCarAppApiLevel) {
                androidx.car.app.utils.e.f(iOnDoneCallback, "onHandshakeCompleted", new IllegalArgumentException("Host API level (" + hostCarAppApiLevel + ") is greater than the app's max API level (" + latestCarAppApiLevel + ")"));
            } else {
                carAppService.c = n2Var;
                this.mHandshakeInfo = handshakeInfo;
                androidx.car.app.utils.e.g(iOnDoneCallback, "onHandshakeCompleted", null);
            }
        } catch (b8 e) {
            e = e;
            carAppService.c = null;
            androidx.car.app.utils.e.f(iOnDoneCallback, "onHandshakeCompleted", e);
        } catch (IllegalArgumentException e2) {
            e = e2;
            carAppService.c = null;
            androidx.car.app.utils.e.f(iOnDoneCallback, "onHandshakeCompleted", e);
        }
    }

    @Override // androidx.car.app.ICarApp
    public void onNewIntent(Intent intent, IOnDoneCallback iOnDoneCallback) {
        androidx.car.app.utils.e.b(getCurrentLifecycle(), iOnDoneCallback, "onNewIntent", new c(this, intent, 1));
    }

    public void setHandshakeInfo(HandshakeInfo handshakeInfo) {
        int hostCarAppApiLevel = handshakeInfo.getHostCarAppApiLevel();
        if (hostCarAppApiLevel >= 1 && hostCarAppApiLevel <= s8.r()) {
            this.mHandshakeInfo = handshakeInfo;
        } else {
            c2.n(t20.d(hostCarAppApiLevel, "Invalid Car App API level received: "));
        }
    }
}
