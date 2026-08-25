package idv.lzn.screenonauto.privileged;

import android.content.Context;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import idv.lzn.screenonauto.privileged.IPrivilegedService;
import idv.lzn.screenonauto.privileged.PrivilegedServiceImpl;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class PrivilegedServiceImpl extends IPrivilegedService.Stub {
    @Deprecated
    public static final String ANDROID_SERVERS_LIB = "android_servers";
    @Deprecated
    public static final int DEFAULT_DISPLAY = 0;
    @Deprecated
    public static final int INJECT_MODE_ASYNC = 0;
    @Deprecated
    public static final String SERVICES_JAR = "/system/framework/services.jar";
    @Deprecated
    public static final String SYSTEM_SERVER_CLASSPATH_ENV = "SYSTEMSERVERCLASSPATH";
    @Deprecated
    public static final String TAG = "ScreenOnAutoPriv";
    private volatile int appliedMode;
    private IBinder client;
    private IBinder.DeathRecipient clientDeath;
    private final hk displayControl$delegate;
    private final hk inputInjector$delegate;
    private volatile PointerState pending;
    private volatile PendingKey pendingKey;
    private final hk setDisplayId$delegate;
    private final Class<?> surfaceControl;
    private static final Companion Companion = new Companion(null);
    private static final List<String> DISPLAY_CONTROL_CLASSES = w9.y("com.android.server.display.DisplayControl", "android.hardware.display.DisplayControl");
    private static final List<String> INPUT_MANAGER_CLASSES = w9.y("android.hardware.input.InputManagerGlobal", "android.hardware.input.InputManager");

    /* loaded from: classes.dex */
    public static final class DisplayControlHandle {
        private final Class<?> clazz;
        private final boolean libraryLoaded;

        public DisplayControlHandle(Class<?> cls, boolean z) {
            cls.getClass();
            this.clazz = cls;
            this.libraryLoaded = z;
        }

        public final Class<?> getClazz() {
            return this.clazz;
        }

        public final boolean getLibraryLoaded() {
            return this.libraryLoaded;
        }
    }

    /* loaded from: classes.dex */
    public static final class DisplayPowerEntry {
        private final Method method;
        private final IBinder token;

        public DisplayPowerEntry(Method method, IBinder iBinder) {
            method.getClass();
            iBinder.getClass();
            this.method = method;
            this.token = iBinder;
        }

        public final Method getMethod() {
            return this.method;
        }

        public final IBinder getToken() {
            return this.token;
        }
    }

    /* loaded from: classes.dex */
    public static final class DisplayPowerResolution {
        private final DisplayPowerEntry entry;
        private final int status;

        public DisplayPowerResolution(DisplayPowerEntry displayPowerEntry, int i) {
            this.entry = displayPowerEntry;
            this.status = i;
        }

        public final DisplayPowerEntry getEntry() {
            return this.entry;
        }

        public final int getStatus() {
            return this.status;
        }
    }

    /* loaded from: classes.dex */
    public static final class InputInjector {
        private final Method method;
        private final Object target;

        public InputInjector(Object obj, Method method) {
            obj.getClass();
            method.getClass();
            this.target = obj;
            this.method = method;
        }

        public final Method getMethod() {
            return this.method;
        }

        public final Object getTarget() {
            return this.target;
        }
    }

    /* loaded from: classes.dex */
    public static final class PendingKey {
        private final long downTime;
        private final int keyCode;

        public PendingKey(int i, long j) {
            this.keyCode = i;
            this.downTime = j;
        }

        public final long getDownTime() {
            return this.downTime;
        }

        public final int getKeyCode() {
            return this.keyCode;
        }
    }

    /* loaded from: classes.dex */
    public static final class PointerState {
        private final MotionEvent.PointerCoords[] coords;
        private final long downTime;
        private final int[] ids;

        public PointerState(long j, int[] iArr, MotionEvent.PointerCoords[] pointerCoordsArr) {
            iArr.getClass();
            pointerCoordsArr.getClass();
            this.downTime = j;
            this.ids = iArr;
            this.coords = pointerCoordsArr;
        }

        public final MotionEvent.PointerCoords[] getCoords() {
            return this.coords;
        }

        public final long getDownTime() {
            return this.downTime;
        }

        public final int[] getIds() {
            return this.ids;
        }
    }

    /* loaded from: classes.dex */
    public static final class TokenLookup {
        private final int status;
        private final IBinder token;

        public TokenLookup(IBinder iBinder, int i) {
            this.token = iBinder;
            this.status = i;
        }

        public final int getStatus() {
            return this.status;
        }

        public final IBinder getToken() {
            return this.token;
        }
    }

    public PrivilegedServiceImpl() {
        Object cyVar;
        try {
            cyVar = Class.forName("android.view.SurfaceControl");
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        this.surfaceControl = (Class) (cyVar instanceof cy ? null : cyVar);
        this.displayControl$delegate = new w30(new rg(this) { // from class: xu
            public final /* synthetic */ PrivilegedServiceImpl b;

            {
                this.b = this;
            }

            @Override // defpackage.rg
            public final Object a() {
                PrivilegedServiceImpl.DisplayControlHandle displayControl_delegate$lambda$6;
                PrivilegedServiceImpl.InputInjector resolveInputInjector;
                Method displayId_delegate$lambda$48;
                int i = r2;
                PrivilegedServiceImpl privilegedServiceImpl = this.b;
                switch (i) {
                    case 0:
                        displayControl_delegate$lambda$6 = PrivilegedServiceImpl.displayControl_delegate$lambda$6(privilegedServiceImpl);
                        return displayControl_delegate$lambda$6;
                    case 1:
                        resolveInputInjector = privilegedServiceImpl.resolveInputInjector();
                        return resolveInputInjector;
                    default:
                        displayId_delegate$lambda$48 = PrivilegedServiceImpl.setDisplayId_delegate$lambda$48(privilegedServiceImpl);
                        return displayId_delegate$lambda$48;
                }
            }
        });
        this.appliedMode = 2;
        this.inputInjector$delegate = new w30(new rg(this) { // from class: xu
            public final /* synthetic */ PrivilegedServiceImpl b;

            {
                this.b = this;
            }

            @Override // defpackage.rg
            public final Object a() {
                PrivilegedServiceImpl.DisplayControlHandle displayControl_delegate$lambda$6;
                PrivilegedServiceImpl.InputInjector resolveInputInjector;
                Method displayId_delegate$lambda$48;
                int i = r2;
                PrivilegedServiceImpl privilegedServiceImpl = this.b;
                switch (i) {
                    case 0:
                        displayControl_delegate$lambda$6 = PrivilegedServiceImpl.displayControl_delegate$lambda$6(privilegedServiceImpl);
                        return displayControl_delegate$lambda$6;
                    case 1:
                        resolveInputInjector = privilegedServiceImpl.resolveInputInjector();
                        return resolveInputInjector;
                    default:
                        displayId_delegate$lambda$48 = PrivilegedServiceImpl.setDisplayId_delegate$lambda$48(privilegedServiceImpl);
                        return displayId_delegate$lambda$48;
                }
            }
        });
        this.setDisplayId$delegate = new w30(new rg(this) { // from class: xu
            public final /* synthetic */ PrivilegedServiceImpl b;

            {
                this.b = this;
            }

            @Override // defpackage.rg
            public final Object a() {
                PrivilegedServiceImpl.DisplayControlHandle displayControl_delegate$lambda$6;
                PrivilegedServiceImpl.InputInjector resolveInputInjector;
                Method displayId_delegate$lambda$48;
                int i = r2;
                PrivilegedServiceImpl privilegedServiceImpl = this.b;
                switch (i) {
                    case 0:
                        displayControl_delegate$lambda$6 = PrivilegedServiceImpl.displayControl_delegate$lambda$6(privilegedServiceImpl);
                        return displayControl_delegate$lambda$6;
                    case 1:
                        resolveInputInjector = privilegedServiceImpl.resolveInputInjector();
                        return resolveInputInjector;
                    default:
                        displayId_delegate$lambda$48 = PrivilegedServiceImpl.setDisplayId_delegate$lambda$48(privilegedServiceImpl);
                        return displayId_delegate$lambda$48;
                }
            }
        });
    }

    public static final void attachClient$lambda$14(PrivilegedServiceImpl privilegedServiceImpl) {
        int i = privilegedServiceImpl.appliedMode;
        Log.w(TAG, "client died with mode=" + i + "; restoring display");
        privilegedServiceImpl.cancelPendingPointers();
        privilegedServiceImpl.cancelPendingKey();
        if (privilegedServiceImpl.appliedMode != 2) {
            privilegedServiceImpl.setDisplayPowerMode(2);
        }
        privilegedServiceImpl.releaseClient();
    }

    private final TokenLookup builtInDisplayToken() {
        Object cyVar;
        Object cyVar2;
        Object cyVar3;
        int i;
        long[] jArr;
        Method method;
        Object cyVar4;
        long[] jArr2;
        Method method2;
        Class cls = Long.TYPE;
        Class<?> cls2 = this.surfaceControl;
        if (cls2 == null) {
            return new TokenLookup(null, 1);
        }
        try {
            Object invoke = cls2.getMethod("getInternalDisplayToken", null).invoke(null, null);
            if (invoke instanceof IBinder) {
                cyVar = (IBinder) invoke;
            } else {
                cyVar = null;
            }
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        if (cyVar instanceof cy) {
            cyVar = null;
        }
        IBinder iBinder = (IBinder) cyVar;
        if (iBinder != null) {
            return new TokenLookup(iBinder, 0);
        }
        try {
            Object invoke2 = cls2.getMethod("getPhysicalDisplayIds", null).invoke(null, null);
            invoke2.getClass();
            jArr2 = (long[]) invoke2;
            method2 = cls2.getMethod("getPhysicalDisplayToken", cls);
        } catch (Throwable th2) {
            cyVar2 = new cy(th2);
        }
        if (jArr2.length != 0) {
            Object invoke3 = method2.invoke(null, Long.valueOf(jArr2[0]));
            if (invoke3 instanceof IBinder) {
                cyVar2 = (IBinder) invoke3;
            } else {
                cyVar2 = null;
            }
            if (cyVar2 instanceof cy) {
                cyVar2 = null;
            }
            IBinder iBinder2 = (IBinder) cyVar2;
            if (iBinder2 != null) {
                return new TokenLookup(iBinder2, 0);
            }
            DisplayControlHandle displayControl = getDisplayControl();
            if (displayControl == null) {
                i = 4;
            } else if (!displayControl.getLibraryLoaded()) {
                i = 5;
            } else {
                try {
                    Object invoke4 = displayControl.getClazz().getMethod("getPhysicalDisplayIds", null).invoke(null, null);
                    invoke4.getClass();
                    jArr = (long[]) invoke4;
                    method = displayControl.getClazz().getMethod("getPhysicalDisplayToken", cls);
                } catch (Throwable th3) {
                    cyVar3 = new cy(th3);
                }
                if (jArr.length != 0) {
                    Object invoke5 = method.invoke(null, Long.valueOf(jArr[0]));
                    if (invoke5 instanceof IBinder) {
                        cyVar3 = (IBinder) invoke5;
                    } else {
                        cyVar3 = null;
                    }
                    if (cyVar3 instanceof cy) {
                        cyVar3 = null;
                    }
                    IBinder iBinder3 = (IBinder) cyVar3;
                    if (iBinder3 != null) {
                        return new TokenLookup(iBinder3, 0);
                    }
                    i = 2;
                } else {
                    throw new NoSuchElementException("Array is empty.");
                }
            }
            try {
                Object invoke6 = cls2.getMethod("getBuiltInDisplay", Integer.TYPE).invoke(null, 0);
                if (invoke6 instanceof IBinder) {
                    cyVar4 = (IBinder) invoke6;
                } else {
                    cyVar4 = null;
                }
            } catch (Throwable th4) {
                cyVar4 = new cy(th4);
            }
            if (cyVar4 instanceof cy) {
                cyVar4 = null;
            }
            IBinder iBinder4 = (IBinder) cyVar4;
            if (iBinder4 != null) {
                return new TokenLookup(iBinder4, 0);
            }
            return new TokenLookup(null, i);
        }
        throw new NoSuchElementException("Array is empty.");
    }

    private final void cancelPendingKey() {
        Method setDisplayId;
        PendingKey pendingKey = this.pendingKey;
        if (pendingKey != null) {
            this.pendingKey = null;
            InputInjector inputInjector = getInputInjector();
            if (inputInjector != null && (setDisplayId = getSetDisplayId()) != null && sendKey(inputInjector, setDisplayId, pendingKey.getKeyCode(), 1, pendingKey.getDownTime(), 32, SystemClock.uptimeMillis())) {
                int keyCode = pendingKey.getKeyCode();
                Log.w(TAG, "released stuck key " + keyCode);
            }
        }
    }

    private final void cancelPendingPointers() {
        Method setDisplayId;
        Object cyVar;
        PointerState pointerState = this.pending;
        if (pointerState != null) {
            this.pending = null;
            int[] ids = pointerState.getIds();
            InputInjector inputInjector = getInputInjector();
            if (inputInjector != null && (setDisplayId = getSetDisplayId()) != null) {
                int length = ids.length;
                MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[length];
                for (int i = 0; i < length; i++) {
                    MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                    pointerProperties.id = ids[i];
                    pointerProperties.toolType = 1;
                    pointerPropertiesArr[i] = pointerProperties;
                }
                try {
                    MotionEvent obtain = MotionEvent.obtain(pointerState.getDownTime(), SystemClock.uptimeMillis(), 3, ids.length, pointerPropertiesArr, pointerState.getCoords(), 0, 0, 1.0f, 1.0f, 0, 0, 4098, 0);
                    setDisplayId.invoke(obtain, 0);
                    inputInjector.getMethod().invoke(inputInjector.getTarget(), obtain, 0);
                    obtain.recycle();
                    int length2 = ids.length;
                    cyVar = Integer.valueOf(Log.w(TAG, "cancelled " + length2 + " stuck pointer(s) on client death"));
                } catch (Throwable th) {
                    cyVar = new cy(th);
                }
                Throwable a = dy.a(cyVar);
                if (a != null) {
                    Log.w(TAG, "cancelPendingPointers failed", a);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [cy] */
    public static final DisplayControlHandle displayControl_delegate$lambda$6(PrivilegedServiceImpl privilegedServiceImpl) {
        Class<?> cls;
        Class<?> cyVar;
        ClassLoader servicesJarLoader = privilegedServiceImpl.servicesJarLoader();
        if (servicesJarLoader == null) {
            return null;
        }
        Iterator it = DISPLAY_CONTROL_CLASSES.iterator();
        while (true) {
            if (it.hasNext()) {
                String str = (String) it.next();
                try {
                    cyVar = servicesJarLoader.loadClass(str);
                } catch (Throwable th) {
                    cyVar = new cy(th);
                }
                boolean z = cyVar instanceof cy;
                if (!z) {
                    Log.d(TAG, "DisplayControl found as " + str);
                }
                if (dy.a(cyVar) != null) {
                    Log.d(TAG, "no " + str + " on the system server classpath");
                }
                if (z) {
                    cyVar = null;
                }
                cls = cyVar;
                if (cls != null) {
                    break;
                }
            } else {
                cls = null;
                break;
            }
        }
        if (cls == null) {
            Log.w(TAG, "DisplayControl not found under any known name");
            return null;
        }
        return new DisplayControlHandle(cls, privilegedServiceImpl.loadServicesLibrary(cls));
    }

    private final DisplayControlHandle getDisplayControl() {
        return (DisplayControlHandle) ((w30) this.displayControl$delegate).a();
    }

    private final InputInjector getInputInjector() {
        return (InputInjector) ((w30) this.inputInjector$delegate).a();
    }

    private final Method getSetDisplayId() {
        return (Method) ((w30) this.setDisplayId$delegate).a();
    }

    public static /* synthetic */ void j(PrivilegedServiceImpl privilegedServiceImpl) {
        attachClient$lambda$14(privilegedServiceImpl);
    }

    private final boolean loadServicesLibrary(Class<?> cls) {
        Object cyVar;
        try {
            Method declaredMethod = Runtime.class.getDeclaredMethod("loadLibrary0", Class.class, String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(Runtime.getRuntime(), cls, ANDROID_SERVERS_LIB);
            cyVar = Boolean.TRUE;
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w(TAG, "Runtime.loadLibrary0(android_servers) failed", a);
            cyVar = Boolean.FALSE;
        }
        return ((Boolean) cyVar).booleanValue();
    }

    private final void releaseClient() {
        IBinder iBinder = this.client;
        IBinder.DeathRecipient deathRecipient = this.clientDeath;
        if (iBinder != null && deathRecipient != null) {
            try {
                iBinder.unlinkToDeath(deathRecipient, 0);
            } catch (Throwable unused) {
            }
        }
        this.client = null;
        this.clientDeath = null;
    }

    private final void rememberPointerState(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 3) {
            if (motionEvent.getActionMasked() == 6) {
                i = motionEvent.getActionIndex();
            } else {
                i = -1;
            }
            nj I = gn.I(0, motionEvent.getPointerCount());
            ArrayList arrayList = new ArrayList();
            for (Object obj : I) {
                if (((Number) obj).intValue() != i) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                this.pending = null;
                return;
            }
            long downTime = motionEvent.getDownTime();
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = motionEvent.getPointerId(((Number) arrayList.get(i2)).intValue());
            }
            int size2 = arrayList.size();
            MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[size2];
            for (int i3 = 0; i3 < size2; i3++) {
                MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
                motionEvent.getPointerCoords(((Number) arrayList.get(i3)).intValue(), pointerCoords);
                pointerCoordsArr[i3] = pointerCoords;
            }
            this.pending = new PointerState(downTime, iArr, pointerCoordsArr);
            return;
        }
        this.pending = null;
    }

    private final DisplayPowerResolution resolveDisplayPower() {
        Object cyVar;
        Class<?> cls = this.surfaceControl;
        if (cls == null) {
            Log.w(TAG, "no android.view.SurfaceControl; display power mode unsupported");
            return new DisplayPowerResolution(null, 1);
        }
        TokenLookup builtInDisplayToken = builtInDisplayToken();
        IBinder token = builtInDisplayToken.getToken();
        if (token == null) {
            int status = builtInDisplayToken.getStatus();
            Log.w(TAG, "no built-in display token (status=" + status + "); unsupported");
            return new DisplayPowerResolution(null, builtInDisplayToken.getStatus());
        }
        try {
            cyVar = cls.getMethod("setDisplayPowerMode", IBinder.class, Integer.TYPE);
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a == null) {
            Method method = (Method) cyVar;
            method.getClass();
            return new DisplayPowerResolution(new DisplayPowerEntry(method, token), 0);
        }
        Log.w(TAG, "no SurfaceControl.setDisplayPowerMode on this platform", a);
        return new DisplayPowerResolution(null, 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [cy] */
    public final InputInjector resolveInputInjector() {
        InputInjector inputInjector;
        InputInjector inputInjector2;
        Iterator<String> it = INPUT_MANAGER_CLASSES.iterator();
        while (true) {
            inputInjector = null;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            try {
                Class<?> cls = Class.forName(next);
                Object invoke = cls.getMethod("getInstance", null).invoke(null, null);
                if (invoke == null) {
                    inputInjector2 = null;
                } else {
                    Method method = cls.getMethod("injectInputEvent", InputEvent.class, Integer.TYPE);
                    method.getClass();
                    inputInjector2 = new InputInjector(invoke, method);
                }
            } catch (Throwable th) {
                inputInjector2 = new cy(th);
            }
            if (!(inputInjector2 instanceof cy)) {
                inputInjector = inputInjector2;
            }
            inputInjector = inputInjector;
            if (inputInjector != null) {
                Log.d(TAG, "input injection via " + next);
                break;
            }
        }
        return inputInjector;
    }

    private final boolean sendKey(InputInjector inputInjector, Method method, int i, int i2, long j, int i3, long j2) {
        Object cyVar;
        try {
            KeyEvent keyEvent = new KeyEvent(j, j2, i2, i, 0, 0, -1, 0, i3, 257);
            method.invoke(keyEvent, 0);
            cyVar = inputInjector.getMethod().invoke(inputInjector.getTarget(), keyEvent, 0);
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w(TAG, "injectKey(code=" + i + ", action=" + i2 + ") failed", a);
        }
        return !(cyVar instanceof cy);
    }

    public static /* synthetic */ boolean sendKey$default(PrivilegedServiceImpl privilegedServiceImpl, InputInjector inputInjector, Method method, int i, int i2, long j, int i3, long j2, int i4, Object obj) {
        int i5;
        long j3;
        if ((i4 & 32) != 0) {
            i5 = 0;
        } else {
            i5 = i3;
        }
        if ((i4 & 64) != 0) {
            j3 = j;
        } else {
            j3 = j2;
        }
        return privilegedServiceImpl.sendKey(inputInjector, method, i, i2, j, i5, j3);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.ClassLoader servicesJarLoader() {
        /*
            r11 = this;
            java.lang.String r11 = "ScreenOnAutoPriv"
            r1 = 0
            java.lang.String r0 = "SYSTEMSERVERCLASSPATH"
            java.lang.String r0 = android.system.Os.getenv(r0)     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L1a
            int r2 = r0.length()     // Catch: java.lang.Throwable -> L18
            if (r2 <= 0) goto L12
            goto L13
        L12:
            r0 = r1
        L13:
            if (r0 != 0) goto L16
            goto L1a
        L16:
            r3 = r0
            goto L22
        L18:
            r0 = move-exception
            goto L5c
        L1a:
            java.lang.String r0 = "/system/framework/services.jar"
            java.lang.String r2 = "SYSTEMSERVERCLASSPATH unset; using /system/framework/services.jar"
            android.util.Log.w(r11, r2)     // Catch: java.lang.Throwable -> L18
            goto L16
        L22:
            java.lang.String r0 = "com.android.internal.os.ClassLoaderFactory"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L18
            java.lang.String r2 = "createClassLoader"
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            java.lang.Class<java.lang.ClassLoader> r7 = java.lang.ClassLoader.class
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L18
            java.lang.Class r9 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L18
            java.lang.Class<java.lang.String> r10 = java.lang.String.class
            java.lang.Class[] r4 = new java.lang.Class[]{r4, r5, r6, r7, r8, r9, r10}     // Catch: java.lang.Throwable -> L18
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r2, r4)     // Catch: java.lang.Throwable -> L18
            java.lang.ClassLoader r6 = java.lang.ClassLoader.getSystemClassLoader()     // Catch: java.lang.Throwable -> L18
            r2 = 0
            java.lang.Integer r7 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L18
            java.lang.Boolean r8 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L18
            r9 = 0
            r4 = 0
            r5 = 0
            java.lang.Object[] r2 = new java.lang.Object[]{r3, r4, r5, r6, r7, r8, r9}     // Catch: java.lang.Throwable -> L18
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Throwable -> L18
            r0.getClass()     // Catch: java.lang.Throwable -> L18
            java.lang.ClassLoader r0 = (java.lang.ClassLoader) r0     // Catch: java.lang.Throwable -> L18
            goto L62
        L5c:
            cy r2 = new cy
            r2.<init>(r0)
            r0 = r2
        L62:
            java.lang.Throwable r2 = defpackage.dy.a(r0)
            if (r2 != 0) goto L6a
            r1 = r0
            goto L6f
        L6a:
            java.lang.String r0 = "could not build a system-server class loader"
            android.util.Log.w(r11, r0, r2)
        L6f:
            java.lang.ClassLoader r1 = (java.lang.ClassLoader) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: idv.lzn.screenonauto.privileged.PrivilegedServiceImpl.servicesJarLoader():java.lang.ClassLoader");
    }

    public static final Method setDisplayId_delegate$lambda$48(PrivilegedServiceImpl privilegedServiceImpl) {
        Object cyVar;
        try {
            cyVar = InputEvent.class.getMethod("setDisplayId", Integer.TYPE);
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        if (cyVar instanceof cy) {
            cyVar = null;
        }
        return (Method) cyVar;
    }

    private final IBinder tokenVia(rg rgVar) {
        Object cyVar;
        Object obj = null;
        try {
            Object a = rgVar.a();
            if (a instanceof IBinder) {
                cyVar = (IBinder) a;
            } else {
                cyVar = null;
            }
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        if (!(cyVar instanceof cy)) {
            obj = cyVar;
        }
        return (IBinder) obj;
    }

    @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
    public void attachClient(IBinder iBinder) {
        Object cyVar;
        iBinder.getClass();
        releaseClient();
        yu yuVar = new yu(this, 0);
        try {
            iBinder.linkToDeath(yuVar, 0);
            cyVar = f60.a;
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        if (!(cyVar instanceof cy)) {
            f60 f60Var = (f60) cyVar;
            this.client = iBinder;
            this.clientDeath = yuVar;
            Log.d(TAG, "client attached");
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w(TAG, "linkToDeath failed", a);
        }
    }

    @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
    public void destroy() {
        cancelPendingPointers();
        cancelPendingKey();
        if (this.appliedMode != 2) {
            setDisplayPowerMode(2);
        }
        releaseClient();
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
    public int displayPowerModeStatus() {
        return resolveDisplayPower().getStatus();
    }

    @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
    public void injectKeyCode(int i) {
        Method setDisplayId;
        InputInjector inputInjector = getInputInjector();
        if (inputInjector == null || (setDisplayId = getSetDisplayId()) == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!sendKey$default(this, inputInjector, setDisplayId, i, 0, uptimeMillis, 0, 0L, 96, null)) {
            Log.w(TAG, "injectKeyCode(" + i + "): DOWN failed; not sending UP");
            return;
        }
        this.pendingKey = new PendingKey(i, uptimeMillis);
        if (sendKey$default(this, inputInjector, setDisplayId, i, 1, uptimeMillis, 0, 0L, 96, null)) {
            this.pendingKey = null;
            return;
        }
        Log.w(TAG, "injectKeyCode(" + i + "): UP failed; key left down for the fuse");
    }

    @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
    public void injectMotionEvent(MotionEvent motionEvent) {
        Object cyVar;
        motionEvent.getClass();
        InputInjector inputInjector = getInputInjector();
        Method setDisplayId = getSetDisplayId();
        if (inputInjector != null && setDisplayId != null) {
            try {
                setDisplayId.invoke(motionEvent, 0);
                cyVar = inputInjector.getMethod().invoke(inputInjector.getTarget(), motionEvent, 0);
            } catch (Throwable th) {
                cyVar = new cy(th);
            }
            if (!(cyVar instanceof cy)) {
                rememberPointerState(motionEvent);
            }
            Throwable a = dy.a(cyVar);
            if (a != null) {
                Log.w(TAG, "injectMotionEvent failed", a);
            }
            try {
                motionEvent.recycle();
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        Log.w(TAG, "no InputManager injection entry point; touch injection unsupported");
    }

    @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
    public boolean isTouchInjectionSupported() {
        if (getInputInjector() != null && getSetDisplayId() != null) {
            return true;
        }
        return false;
    }

    @Override // idv.lzn.screenonauto.privileged.IPrivilegedService
    public boolean setDisplayPowerMode(int i) {
        Object cyVar;
        DisplayPowerEntry entry = resolveDisplayPower().getEntry();
        if (entry == null) {
            return false;
        }
        try {
            cyVar = entry.getMethod().invoke(null, entry.getToken(), Integer.valueOf(i));
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        if (!(cyVar instanceof cy)) {
            this.appliedMode = i;
            Log.d(TAG, "display power mode → " + i);
            cyVar = Boolean.TRUE;
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w(TAG, "setDisplayPowerMode(" + i + ") failed", a);
            cyVar = Boolean.FALSE;
        }
        return ((Boolean) cyVar).booleanValue();
    }

    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(qb qbVar) {
            this();
        }

        public final List<String> getDISPLAY_CONTROL_CLASSES() {
            return PrivilegedServiceImpl.DISPLAY_CONTROL_CLASSES;
        }

        public final List<String> getINPUT_MANAGER_CLASSES() {
            return PrivilegedServiceImpl.INPUT_MANAGER_CLASSES;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PrivilegedServiceImpl(Context context) {
        this();
        context.getClass();
    }
}
