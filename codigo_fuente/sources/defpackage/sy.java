package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Pair;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: sy  reason: default package */
/* loaded from: classes.dex */
public final class sy implements Handler.Callback {
    public static sy g;
    public oy a;
    public oy b;
    public int c = 0;
    public final ArrayList d = new ArrayList();
    public final ArrayMap e = new ArrayMap();
    public final ArrayMap f = new ArrayMap();

    public static qy c(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            if (component.getPackageName().equals(k60.r().getPackageName())) {
                return new qy(component, intent.hasCategory(jy.CATEGORY_DAEMON_MODE));
            }
            c2.n("RootServices outside of the app are not supported");
            return null;
        }
        c2.n("The intent does not have a component set");
        return null;
    }

    public final qy a(Intent intent, Executor executor, final ServiceConnection serviceConnection) {
        oy oyVar;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            final qy c = c(intent);
            ArrayMap arrayMap = this.e;
            py pyVar = (py) arrayMap.get(c);
            ArrayMap arrayMap2 = this.f;
            if (pyVar != null) {
                arrayMap2.put(serviceConnection, new Pair(pyVar, executor));
                pyVar.d++;
                final IBinder iBinder = pyVar.b;
                executor.execute(new Runnable() { // from class: my
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = r4;
                        IBinder iBinder2 = iBinder;
                        qy qyVar = c;
                        ServiceConnection serviceConnection2 = serviceConnection;
                        switch (i) {
                            case 0:
                                serviceConnection2.onServiceConnected((ComponentName) ((Pair) qyVar).first, iBinder2);
                                return;
                            default:
                                serviceConnection2.onServiceConnected((ComponentName) ((Pair) qyVar).first, iBinder2);
                                return;
                        }
                    }
                });
                return null;
            }
            if (((Boolean) ((Pair) c).second).booleanValue()) {
                oyVar = this.b;
            } else {
                oyVar = this.a;
            }
            if (oyVar == null) {
                return c;
            }
            try {
                final IBinder d = oyVar.b.d(intent);
                if (d != null) {
                    py pyVar2 = new py(c, d, oyVar);
                    arrayMap2.put(serviceConnection, new Pair(pyVar2, executor));
                    arrayMap.put(c, pyVar2);
                    executor.execute(new Runnable() { // from class: my
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i = r4;
                            IBinder iBinder2 = d;
                            qy qyVar = c;
                            ServiceConnection serviceConnection2 = serviceConnection;
                            switch (i) {
                                case 0:
                                    serviceConnection2.onServiceConnected((ComponentName) ((Pair) qyVar).first, iBinder2);
                                    return;
                                default:
                                    serviceConnection2.onServiceConnected((ComponentName) ((Pair) qyVar).first, iBinder2);
                                    return;
                            }
                        }
                    });
                    return null;
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    executor.execute(new y5(serviceConnection, 5, c));
                }
                return null;
            } catch (RemoteException e) {
                k60.o("IPC", e);
                oyVar.binderDied();
                return c;
            }
        }
        c2.g("This method can only be called on the main thread");
        return null;
    }

    public final void b(qy qyVar) {
        py pyVar = (py) this.e.remove(qyVar);
        if (pyVar != null) {
            Iterator it = this.f.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                ny nyVar = (ny) entry.getValue();
                if (pyVar == ((py) ((Pair) nyVar).first)) {
                    nyVar.a((ServiceConnection) entry.getKey());
                    it.remove();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [ly] */
    public final ly d(final ComponentName componentName, final String str) {
        final Context r = k60.r();
        if ((this.c & 4) == 0) {
            IntentFilter intentFilter = new IntentFilter("com.topjohnwu.superuser.RECEIVER_BROADCAST");
            if (Build.VERSION.SDK_INT >= 26) {
                r.registerReceiver(new ry(this), intentFilter, "android.permission.BROADCAST_PACKAGE_REMOVED", null, 4);
            } else {
                r.registerReceiver(new ry(this), intentFilter, "android.permission.BROADCAST_PACKAGE_REMOVED", null);
            }
            this.c |= 4;
        }
        return new l10(r, str, componentName) { // from class: ly
            public final /* synthetic */ String a;
            public final /* synthetic */ ComponentName b;

            {
                this.a = str;
                this.b = componentName;
            }

            @Override // defpackage.l10
            public final void a(OutputStream outputStream) {
                String str2;
                String str3;
                Context createDeviceProtectedStorageContext = k60.r().createDeviceProtectedStorageContext();
                File file = new File(createDeviceProtectedStorageContext.getCacheDir(), "main.jar");
                InputStream open = createDeviceProtectedStorageContext.getResources().getAssets().open("main.jar");
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int read = open.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.close();
                    open.close();
                    String str4 = this.a;
                    if (!str4.equals("daemon")) {
                        if (!str4.equals("start")) {
                            str2 = "";
                        } else {
                            Locale locale = Locale.ROOT;
                            str2 = "--nice-name=" + createDeviceProtectedStorageContext.getPackageName() + ":root:" + (Process.myUid() / 100000);
                        }
                    } else {
                        str2 = "--nice-name=" + createDeviceProtectedStorageContext.getPackageName() + ":root:daemon";
                    }
                    String str5 = str2;
                    if (Process.is64Bit()) {
                        str3 = "64";
                    } else {
                        str3 = "32";
                    }
                    outputStream.write(String.format(Locale.ROOT, "(%s CLASSPATH=%s %s %s /system/bin %s com.topjohnwu.superuser.internal.RootServerMain '%s' %d %s >/dev/null 2>&1)&", "", file, "/system/bin/app_process".concat(str3), " -Xnoimage-dex2oat", str5, this.b.flattenToString(), Integer.valueOf(Process.myUid()), str4).getBytes(StandardCharsets.UTF_8));
                    outputStream.write(10);
                    outputStream.flush();
                } catch (Throwable th) {
                    if (open != null) {
                        try {
                            open.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
        };
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z = true;
        if (message.what == 1) {
            ComponentName componentName = (ComponentName) message.obj;
            if (message.arg1 == 0) {
                z = false;
            }
            b(new qy(componentName, z));
        }
        return false;
    }
}
