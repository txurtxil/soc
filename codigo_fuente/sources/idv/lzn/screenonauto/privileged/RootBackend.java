package idv.lzn.screenonauto.privileged;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.util.Log;
import idv.lzn.screenonauto.privileged.IPrivilegedService;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.io.File;
import java.util.List;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class RootBackend implements PrivilegedBackend {
    private static final String TAG = "ScreenOnAutoPriv";
    private static ServiceConnection connection;
    public static final RootBackend INSTANCE = new RootBackend();
    private static final PrivilegedManager.Kind kind = PrivilegedManager.Kind.ROOT;
    private static final List<String> SU_PATHS = w9.y("/system/bin/su", "/system/xbin/su", "/sbin/su", "/system/sbin/su", "/vendor/bin/su", "/su/bin/su");
    private static final List<String> ROOT_MANAGER_PACKAGES = w9.y("com.topjohnwu.magisk", "me.weishu.kernelsu", "me.bmax.apatch");

    private RootBackend() {
    }

    private final boolean isInstalled(Context context, String str) {
        Object cyVar;
        try {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.getPackageInfo(str, 0) != null) {
                z = true;
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

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public void bind(Context context, final ch chVar) {
        Object cyVar;
        context.getClass();
        chVar.getClass();
        unbind(context);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: idv.lzn.screenonauto.privileged.RootBackend$bind$conn$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
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
            public void onServiceDisconnected(ComponentName componentName) {
                ServiceConnection serviceConnection2;
                serviceConnection2 = RootBackend.connection;
                if (serviceConnection2 == this) {
                    RootBackend.connection = null;
                }
                ch.this.b(null);
            }
        };
        connection = serviceConnection;
        try {
            jy.bind(new Intent(context, PrivilegedRootService.class), serviceConnection);
            cyVar = f60.a;
        } catch (Throwable th) {
            cyVar = new cy(th);
        }
        Throwable a = dy.a(cyVar);
        if (a != null) {
            Log.w("ScreenOnAutoPriv", "RootService.bind failed", a);
            connection = null;
            chVar.b(null);
        }
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public PrivilegedManager.Kind getKind() {
        return kind;
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public boolean isAuthorised(Context context) {
        context.getClass();
        ExecutorService executorService = q10.j;
        return qj.c(k60.w(), Boolean.TRUE);
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public boolean isPresent(Context context) {
        Object cyVar;
        context.getClass();
        List<String> list = SU_PATHS;
        if (list == null || !list.isEmpty()) {
            for (String str : list) {
                try {
                    cyVar = Boolean.valueOf(new File(str).exists());
                } catch (Throwable th) {
                    cyVar = new cy(th);
                }
                Object obj = Boolean.FALSE;
                if (cyVar instanceof cy) {
                    cyVar = obj;
                }
                if (((Boolean) cyVar).booleanValue()) {
                    break;
                }
            }
        }
        List<String> list2 = ROOT_MANAGER_PACKAGES;
        if (list2 == null || !list2.isEmpty()) {
            for (String str2 : list2) {
                if (INSTANCE.isInstalled(context, str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // idv.lzn.screenonauto.privileged.PrivilegedBackend
    public void unbind(Context context) {
        Object cyVar;
        context.getClass();
        ServiceConnection serviceConnection = connection;
        if (serviceConnection != null) {
            connection = null;
            try {
                jy.unbind(serviceConnection);
                cyVar = f60.a;
            } catch (Throwable th) {
                cyVar = new cy(th);
            }
            Throwable a = dy.a(cyVar);
            if (a != null) {
                Log.w("ScreenOnAutoPriv", "RootService.unbind failed", a);
            }
        }
    }
}
