package idv.lzn.screenonauto.privileged;

import android.content.Context;
import android.os.Binder;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.MotionEvent;
import idv.lzn.screenonauto.privileged.IPrivilegedService;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class PrivilegedManager {
    private static final List<PrivilegedBackend> BACKENDS;
    private static final long CONNECT_TIMEOUT_MS = 15000;
    private static final String TAG = "ScreenOnAutoPriv";
    private static final CopyOnWriteArraySet<rg> backendAvailableListeners;
    private static final CopyOnWriteArraySet<rg> beforeDisconnectListeners;
    private static final Binder clientToken;
    private static final AtomicInteger connectGeneration;
    private static volatile Kind connectedKind;
    private static volatile Kind connectingKind;
    private static final CopyOnWriteArraySet<rg> connectionLostListeners;
    private static volatile int displayPowerModeStatus;
    private static final ExecutorService handshakeExecutor;
    private static boolean hooked;
    private static volatile boolean isConnected;
    private static volatile Kind lastConnectedKind;
    private static final CopyOnWriteArraySet<ch> listeners;
    private static volatile IPrivilegedService service;
    private static volatile boolean touchInjectionSupported;
    public static final PrivilegedManager INSTANCE = new PrivilegedManager();
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    public static final class Kind {
        private static final /* synthetic */ oe $ENTRIES;
        private static final /* synthetic */ Kind[] $VALUES;
        public static final Kind SHIZUKU = new Kind("SHIZUKU", 0);
        public static final Kind ROOT = new Kind("ROOT", 1);

        private static final /* synthetic */ Kind[] $values() {
            return new Kind[]{SHIZUKU, ROOT};
        }

        static {
            Kind[] $values = $values();
            $VALUES = $values;
            $values.getClass();
            $ENTRIES = new pe($values);
        }

        private Kind(String str, int i) {
            super(str, i);
        }

        public static oe getEntries() {
            return $ENTRIES;
        }

        public static Kind valueOf(String str) {
            return (Kind) Enum.valueOf(Kind.class, str);
        }

        public static Kind[] values() {
            return (Kind[]) $VALUES.clone();
        }
    }

    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Kind.values().length];
            try {
                iArr[Kind.SHIZUKU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Kind.ROOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new w5(1));
        newSingleThreadExecutor.getClass();
        handshakeExecutor = newSingleThreadExecutor;
        clientToken = new Binder();
        listeners = new CopyOnWriteArraySet<>();
        backendAvailableListeners = new CopyOnWriteArraySet<>();
        connectionLostListeners = new CopyOnWriteArraySet<>();
        beforeDisconnectListeners = new CopyOnWriteArraySet<>();
        displayPowerModeStatus = -1;
        connectGeneration = new AtomicInteger(0);
        BACKENDS = w9.y(RootBackend.INSTANCE, ShizukuBackend.INSTANCE);
    }

    private PrivilegedManager() {
    }

    private final PrivilegedBackend backendFor(Kind kind) {
        int i = WhenMappings.$EnumSwitchMapping$0[kind.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return RootBackend.INSTANCE;
            }
            throw new RuntimeException();
        }
        return ShizukuBackend.INSTANCE;
    }

    private final void clearService() {
        service = null;
        connectedKind = null;
        isConnected = false;
        touchInjectionSupported = false;
        displayPowerModeStatus = -1;
    }

    public static /* synthetic */ void connect$default(PrivilegedManager privilegedManager, Context context, Kind kind, ch chVar, int i, Object obj) {
        if ((i & 4) != 0) {
            chVar = new vu(0);
        }
        privilegedManager.connect(context, kind, chVar);
    }

    public static final f60 connect$lambda$19(final int i, final Kind kind, final ax axVar, final Runnable runnable, final ch chVar, final Context context, final IPrivilegedService iPrivilegedService) {
        f60 f60Var = f60.a;
        if (iPrivilegedService == null) {
            mainHandler.post(new Runnable() { // from class: tu
                @Override // java.lang.Runnable
                public final void run() {
                    PrivilegedManager.connect$lambda$19$lambda$10(i, kind, axVar, runnable, chVar);
                }
            });
            return f60Var;
        }
        handshakeExecutor.execute(new Runnable() { // from class: uu
            @Override // java.lang.Runnable
            public final void run() {
                PrivilegedManager.connect$lambda$19$lambda$18(context, iPrivilegedService, i, kind, runnable, axVar, chVar);
            }
        });
        return f60Var;
    }

    public static final void connect$lambda$19$lambda$10(int i, Kind kind, ax axVar, Runnable runnable, ch chVar) {
        if (i == connectGeneration.get()) {
            connectingKind = null;
            Log.d("ScreenOnAutoPriv", "connection to " + kind + " dropped");
            INSTANCE.dropConnection();
            if (!axVar.a) {
                axVar.a = true;
                mainHandler.removeCallbacks(runnable);
                chVar.b(Boolean.FALSE);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:(2:1|2)|3|(1:5)|(2:6|7)|8|(1:10)|11|(1:13)(3:43|44|45)|(3:(1:16)|17|(11:19|20|(1:41)(3:23|(1:25)|26)|27|(1:29)|30|31|32|(1:34)|35|36))|42|20|(0)|41|27|(0)|30|31|32|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00a5, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00a6, code lost:
        r0 = new defpackage.cy(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void connect$lambda$19$lambda$18(final android.content.Context r13, final idv.lzn.screenonauto.privileged.IPrivilegedService r14, final int r15, final idv.lzn.screenonauto.privileged.PrivilegedManager.Kind r16, final java.lang.Runnable r17, final defpackage.ax r18, final defpackage.ch r19) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: idv.lzn.screenonauto.privileged.PrivilegedManager.connect$lambda$19$lambda$18(android.content.Context, idv.lzn.screenonauto.privileged.IPrivilegedService, int, idv.lzn.screenonauto.privileged.PrivilegedManager$Kind, java.lang.Runnable, ax, ch):void");
    }

    public static final void connect$lambda$19$lambda$18$lambda$17(int i, boolean z, Kind kind, boolean z2, Runnable runnable, ax axVar, Context context, ch chVar, IPrivilegedService iPrivilegedService, boolean z3, int i2) {
        if (i != connectGeneration.get()) {
            return;
        }
        connectingKind = null;
        if (!z) {
            Log.w("ScreenOnAutoPriv", "handshake finished but the " + kind + " process is gone");
            PrivilegedManager privilegedManager = INSTANCE;
            privilegedManager.dropConnection();
            if (z2) {
                mainHandler.removeCallbacks(runnable);
                if (axVar.a) {
                    return;
                }
                context.getClass();
                privilegedManager.connect(context, kind, chVar);
                return;
            } else if (axVar.a) {
                return;
            } else {
                axVar.a = true;
                mainHandler.removeCallbacks(runnable);
                chVar.b(Boolean.FALSE);
                return;
            }
        }
        service = iPrivilegedService;
        connectedKind = kind;
        lastConnectedKind = kind;
        isConnected = true;
        touchInjectionSupported = z3;
        displayPowerModeStatus = i2;
        Log.d("ScreenOnAutoPriv", "connected via " + kind + " (touch=" + z3 + " screenOffStatus=" + i2 + ")");
        INSTANCE.notifyListeners();
        if (axVar.a) {
            return;
        }
        axVar.a = true;
        mainHandler.removeCallbacks(runnable);
        chVar.b(Boolean.TRUE);
    }

    public static final f60 connect$lambda$8(boolean z) {
        return f60.a;
    }

    public static final void connect$lambda$9(ax axVar, int i, Kind kind, ch chVar) {
        if (axVar.a) {
            return;
        }
        axVar.a = true;
        if (i == connectGeneration.get()) {
            connectingKind = null;
        }
        Log.w("ScreenOnAutoPriv", "connect via " + kind + " timed out");
        chVar.b(Boolean.FALSE);
    }

    private final void dropConnection() {
        connectGeneration.incrementAndGet();
        connectingKind = null;
        boolean z = isConnected;
        clearService();
        notifyListeners();
        if (z) {
            for (rg rgVar : connectionLostListeners) {
                rgVar.a();
            }
        }
    }

    private final void ensureBackendHooks() {
        if (hooked) {
            return;
        }
        hooked = true;
        ShizukuBackend.INSTANCE.setPresenceCallback(new vu(1));
    }

    public static final f60 ensureBackendHooks$lambda$5(boolean z) {
        mainHandler.post(new su(0, z));
        return f60.a;
    }

    public static final void ensureBackendHooks$lambda$5$lambda$4(boolean z) {
        INSTANCE.onBackendPresence(z);
    }

    public static final Thread handshakeExecutor$lambda$1(Runnable runnable) {
        Thread thread = new Thread(runnable, "Privileged-handshake");
        thread.setDaemon(true);
        return thread;
    }

    private final void markPowerProbeUnsafe(Context context) {
        Log.w("ScreenOnAutoPriv", "the screen-off probe took the privileged process with it; not asking again");
        lu.a(context).edit().putBoolean("root_power_probe_unsafe", true).apply();
    }

    private final void notifyListeners() {
        boolean z = isConnected;
        for (ch chVar : listeners) {
            chVar.b(Boolean.valueOf(z));
        }
    }

    private final void onBackendPresence(boolean z) {
        if (!z) {
            if (isConnected && connectedKind == Kind.SHIZUKU) {
                dropConnection();
                return;
            } else {
                notifyListeners();
                return;
            }
        }
        notifyListeners();
        for (rg rgVar : backendAvailableListeners) {
            rgVar.a();
        }
    }

    private final boolean powerProbeUnsafe(Context context) {
        return lu.a(context).getBoolean("root_power_probe_unsafe", false);
    }

    public final void addOnBackendAvailableListener(rg rgVar) {
        rgVar.getClass();
        backendAvailableListeners.add(rgVar);
    }

    public final void addOnBeforeDisconnectListener(rg rgVar) {
        rgVar.getClass();
        beforeDisconnectListeners.add(rgVar);
    }

    public final void addOnConnectionLostListener(rg rgVar) {
        rgVar.getClass();
        connectionLostListeners.add(rgVar);
    }

    public final void addOnStateChangedListener(ch chVar) {
        chVar.getClass();
        listeners.add(chVar);
    }

    public final void clearPowerProbeFuse(Context context) {
        context.getClass();
        context.getSharedPreferences(lu.b(context), 0).edit().putBoolean("root_power_probe_unsafe", false).apply();
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [ax, java.lang.Object] */
    public final void connect(Context context, final Kind kind, final ch chVar) {
        context.getClass();
        kind.getClass();
        chVar.getClass();
        if (isConnected && connectedKind == kind) {
            chVar.b(Boolean.TRUE);
        } else if (connectingKind == kind) {
            chVar.b(Boolean.FALSE);
        } else {
            final Context applicationContext = context.getApplicationContext();
            final int incrementAndGet = connectGeneration.incrementAndGet();
            connectingKind = kind;
            final ?? obj = new Object();
            final qu quVar = new qu((ax) obj, incrementAndGet, kind, chVar);
            mainHandler.postDelayed(quVar, CONNECT_TIMEOUT_MS);
            PrivilegedBackend backendFor = backendFor(kind);
            applicationContext.getClass();
            backendFor.bind(applicationContext, new ch() { // from class: ru
                @Override // defpackage.ch
                public final Object b(Object obj2) {
                    f60 connect$lambda$19;
                    connect$lambda$19 = PrivilegedManager.connect$lambda$19(incrementAndGet, kind, obj, quVar, chVar, applicationContext, (IPrivilegedService) obj2);
                    return connect$lambda$19;
                }
            });
        }
    }

    public final void disconnect(Context context) {
        Object obj;
        context.getClass();
        if (isConnected) {
            obj = connectedKind;
        } else {
            obj = "not connected";
        }
        Log.d("ScreenOnAutoPriv", "disconnect requested (was " + obj + ")");
        Kind kind = connectedKind;
        if (kind == null) {
            kind = connectingKind;
        }
        for (rg rgVar : beforeDisconnectListeners) {
            rgVar.a();
        }
        connectGeneration.incrementAndGet();
        connectingKind = null;
        clearService();
        notifyListeners();
        if (kind != null) {
            PrivilegedBackend backendFor = backendFor(kind);
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            backendFor.unbind(applicationContext);
        }
    }

    public final Kind getConnectedKind() {
        return connectedKind;
    }

    public final int getDisplayPowerModeStatus() {
        return displayPowerModeStatus;
    }

    public final boolean getDisplayPowerModeSupported() {
        if (displayPowerModeStatus == 0) {
            return true;
        }
        return false;
    }

    public final Kind getLastConnectedKind() {
        return lastConnectedKind;
    }

    public final IPrivilegedService getService() {
        return service;
    }

    public final boolean getTouchInjectionSupported() {
        return touchInjectionSupported;
    }

    public final boolean injectKeyCode(int i) {
        Object cyVar;
        IPrivilegedService iPrivilegedService = service;
        if (iPrivilegedService == null) {
            return false;
        }
        try {
            iPrivilegedService.injectKeyCode(i);
            cyVar = Boolean.TRUE;
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            if (a instanceof DeadObjectException) {
                Log.w("ScreenOnAutoPriv", "injectKeyCode: binder died; dropping connection", a);
                INSTANCE.dropConnection();
            } else {
                Log.w("ScreenOnAutoPriv", "injectKeyCode failed; keeping connection", a);
            }
            cyVar = Boolean.FALSE;
        }
        return ((Boolean) cyVar).booleanValue();
    }

    public final boolean injectMotionEvent(MotionEvent motionEvent) {
        Object cyVar;
        motionEvent.getClass();
        IPrivilegedService iPrivilegedService = service;
        if (iPrivilegedService == null) {
            return false;
        }
        try {
            iPrivilegedService.injectMotionEvent(motionEvent);
            cyVar = Boolean.TRUE;
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            if (a instanceof DeadObjectException) {
                Log.w("ScreenOnAutoPriv", "injectMotionEvent: binder died; dropping connection", a);
                INSTANCE.dropConnection();
            } else {
                Log.w("ScreenOnAutoPriv", "injectMotionEvent failed; keeping connection", a);
            }
            cyVar = Boolean.FALSE;
        }
        return ((Boolean) cyVar).booleanValue();
    }

    public final boolean isAuthorised(Context context, Kind kind) {
        context.getClass();
        kind.getClass();
        return backendFor(kind).isAuthorised(context);
    }

    public final boolean isConnected() {
        return isConnected;
    }

    public final List<Kind> presentBackends(Context context) {
        context.getClass();
        ensureBackendHooks();
        List<PrivilegedBackend> list = BACKENDS;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((PrivilegedBackend) obj).isPresent(context)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(x9.z(arrayList));
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            arrayList2.add(((PrivilegedBackend) obj2).getKind());
        }
        return arrayList2;
    }

    public final void removeOnBackendAvailableListener(rg rgVar) {
        rgVar.getClass();
        backendAvailableListeners.remove(rgVar);
    }

    public final void removeOnBeforeDisconnectListener(rg rgVar) {
        rgVar.getClass();
        beforeDisconnectListeners.remove(rgVar);
    }

    public final void removeOnConnectionLostListener(rg rgVar) {
        rgVar.getClass();
        connectionLostListeners.remove(rgVar);
    }

    public final void removeOnStateChangedListener(ch chVar) {
        chVar.getClass();
        listeners.remove(chVar);
    }

    public final void requestAuthorisation(Kind kind, int i) {
        kind.getClass();
        if (kind == Kind.SHIZUKU) {
            ShizukuBackend.INSTANCE.requestPermission(i);
        }
    }

    public final void setAuthorisationResultCallback(gh ghVar) {
        ShizukuBackend.INSTANCE.setPermissionResultCallback(ghVar);
    }

    public final boolean setDisplayPowerMode(int i) {
        Object cyVar;
        IPrivilegedService iPrivilegedService = service;
        if (iPrivilegedService == null) {
            return false;
        }
        try {
            cyVar = Boolean.valueOf(iPrivilegedService.setDisplayPowerMode(i));
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w("ScreenOnAutoPriv", "setDisplayPowerMode(" + i + ") failed; dropping connection", a);
            INSTANCE.dropConnection();
            cyVar = Boolean.FALSE;
        }
        return ((Boolean) cyVar).booleanValue();
    }
}
