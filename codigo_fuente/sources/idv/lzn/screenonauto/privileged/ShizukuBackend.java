package idv.lzn.screenonauto.privileged;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import idv.lzn.screenonauto.privileged.IPrivilegedService;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.util.Map;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class ShizukuBackend implements PrivilegedBackend {
    private static final String TAG = "ScreenOnAutoPriv";
    private static final int USER_SERVICE_VERSION = 11;
    private static ServiceConnection connection;
    private static gh permissionCallback;
    private static ch presenceCallback;
    public static final ShizukuBackend INSTANCE = new ShizukuBackend();
    private static final PrivilegedManager.Kind kind = PrivilegedManager.Kind.SHIZUKU;
    private static final w10 binderReceivedListener = new Object();
    private static final v10 binderDeadListener = new Object();
    private static final x10 permissionListener = new Object();

    private ShizukuBackend() {
    }

    public static /* synthetic */ void a(int i, int i2) {
        permissionListener$lambda$8(i, i2);
    }

    public static final void binderDeadListener$lambda$5() {
        ch chVar = presenceCallback;
        if (chVar != null) {
            chVar.b(Boolean.FALSE);
        }
    }

    public static final void binderReceivedListener$lambda$4() {
        ch chVar = presenceCallback;
        if (chVar != null) {
            chVar.b(Boolean.TRUE);
        }
    }

    public static final void permissionListener$lambda$8(int i, int i2) {
        boolean z;
        gh ghVar = permissionCallback;
        if (ghVar != null) {
            Integer valueOf = Integer.valueOf(i);
            if (i2 == 0) {
                z = true;
            } else {
                z = false;
            }
            ghVar.c(valueOf, Boolean.valueOf(z));
        }
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public void bind(Context context, final ch chVar) {
        boolean z;
        Object cyVar;
        context.getClass();
        chVar.getClass();
        unbind(context);
        if ((context.getApplicationInfo().flags & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        ComponentName componentName = new ComponentName(context.getPackageName(), PrivilegedServiceImpl.class.getName());
        y10 y10Var = new y10(componentName);
        y10Var.e = false;
        y10Var.c = "priv";
        y10Var.d = z;
        y10Var.b = 11;
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: idv.lzn.screenonauto.privileged.ShizukuBackend$bind$conn$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName2, IBinder iBinder) {
                ch chVar2 = ch.this;
                IPrivilegedService iPrivilegedService = null;
                if (iBinder != null) {
                    if (!iBinder.pingBinder()) {
                        iBinder = null;
                    }
                    if (iBinder != null) {
                        iPrivilegedService = IPrivilegedService.Stub.asInterface(iBinder);
                    }
                }
                chVar2.b(iPrivilegedService);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName2) {
                ServiceConnection serviceConnection2;
                serviceConnection2 = ShizukuBackend.connection;
                if (serviceConnection2 == this) {
                    ShizukuBackend.connection = null;
                }
                ch.this.b(null);
            }
        };
        connection = serviceConnection;
        try {
            IBinder iBinder = z10.a;
            Map map = e20.a;
            String className = componentName.getClassName();
            Map map2 = e20.a;
            d20 d20Var = (d20) map2.get(className);
            if (d20Var == null) {
                d20Var = new d20(y10Var);
                map2.put(className, d20Var);
            }
            d20Var.a.add(serviceConnection);
            try {
                ((oi) z10.e()).g(d20Var, y10.a(y10Var));
                cyVar = f60.a;
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w("ScreenOnAutoPriv", "bindUserService failed", a);
            connection = null;
            chVar.b(null);
        }
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public PrivilegedManager.Kind getKind() {
        return kind;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0033  */
    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isAuthorised(android.content.Context r2) {
        /*
            r1 = this;
            r2.getClass()
            boolean r1 = defpackage.z10.c     // Catch: java.lang.Throwable -> L1e
            if (r1 == 0) goto L8
            goto L16
        L8:
            qi r1 = defpackage.z10.e()     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            oi r1 = (defpackage.oi) r1     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            boolean r1 = r1.h()     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            defpackage.z10.c = r1     // Catch: java.lang.Throwable -> L1e android.os.RemoteException -> L20
            if (r1 == 0) goto L18
        L16:
            r1 = 1
            goto L19
        L18:
            r1 = 0
        L19:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> L1e
            goto L2d
        L1e:
            r1 = move-exception
            goto L27
        L20:
            r1 = move-exception
            java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L1e
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L1e
            throw r2     // Catch: java.lang.Throwable -> L1e
        L27:
            cy r2 = new cy
            r2.<init>(r1)
            r1 = r2
        L2d:
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            boolean r0 = r1 instanceof defpackage.cy
            if (r0 == 0) goto L34
            r1 = r2
        L34:
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: idv.lzn.screenonauto.privileged.ShizukuBackend.isAuthorised(android.content.Context):boolean");
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public boolean isPresent(Context context) {
        Object cyVar;
        boolean z;
        context.getClass();
        try {
            IBinder iBinder = z10.a;
            if (iBinder != null && iBinder.pingBinder()) {
                z = true;
            } else {
                z = false;
            }
            cyVar = Boolean.valueOf(z);
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Object obj = Boolean.FALSE;
        if (cyVar instanceof cy) {
            cyVar = obj;
        }
        return ((Boolean) cyVar).booleanValue();
    }

    public final void requestPermission(int i) {
        Object cyVar;
        try {
            try {
                ((oi) z10.e()).j(i);
                cyVar = f60.a;
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w("ScreenOnAutoPriv", "Shizuku.requestPermission failed", a);
        }
    }

    public final void setPermissionResultCallback(gh ghVar) {
        Object cyVar;
        boolean removeIf;
        try {
            if (ghVar != null) {
                x10 x10Var = permissionListener;
                synchronized (z10.h) {
                    z10.j.add(new u10(x10Var));
                }
                cyVar = f60.a;
            } else {
                final x10 x10Var2 = permissionListener;
                synchronized (z10.h) {
                    removeIf = z10.j.removeIf(new Predicate() { // from class: s10
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            if (((u10) obj).a == x10.this) {
                                return true;
                            }
                            return false;
                        }
                    });
                }
                cyVar = Boolean.valueOf(removeIf);
            }
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w("ScreenOnAutoPriv", "permission listener registration failed", a);
        }
        permissionCallback = ghVar;
    }

    public final void setPresenceCallback(ch chVar) {
        Object cyVar;
        chVar.getClass();
        if (presenceCallback != null) {
            presenceCallback = chVar;
            return;
        }
        presenceCallback = chVar;
        try {
            z10.a(binderReceivedListener);
            v10 v10Var = binderDeadListener;
            synchronized (z10.h) {
                z10.i.add(new u10(v10Var));
            }
            cyVar = f60.a;
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w("ScreenOnAutoPriv", "binder listener registration failed", a);
        }
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public void unbind(Context context) {
        Object cyVar;
        context.getClass();
        if (connection != null) {
            connection = null;
            int i = context.getApplicationInfo().flags;
            ComponentName componentName = new ComponentName(context.getPackageName(), PrivilegedServiceImpl.class.getName());
            try {
                try {
                    qi e = z10.e();
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("shizuku:user-service-arg-component", componentName);
                    bundle.putBoolean("shizuku:user-service-remove", true);
                    ((oi) e).i(null, bundle);
                    cyVar = f60.a;
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th) {
                cyVar = new cy(th);
            }
            Throwable a = dy.a(cyVar);
            if (a != null) {
                Log.w("ScreenOnAutoPriv", "unbindUserService failed", a);
            }
        }
    }
}
