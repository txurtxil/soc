package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Pair;
import java.util.Objects;
import java.util.concurrent.Executor;
/* renamed from: jy  reason: default package */
/* loaded from: classes.dex */
public abstract class jy extends ContextWrapper {
    public static final String CATEGORY_DAEMON_MODE = "com.topjohnwu.superuser.DAEMON_MODE";

    public static void bind(Intent intent, Executor executor, ServiceConnection serviceConnection) {
        l10 bindOrTask;
        if (!Objects.equals(k60.w(), Boolean.FALSE) && (bindOrTask = bindOrTask(intent, executor, serviceConnection)) != null) {
            q10.j.execute(new m1(11, bindOrTask));
        }
    }

    public static l10 bindOrTask(Intent intent, Executor executor, ServiceConnection serviceConnection) {
        int i;
        String str;
        if (sy.g == null) {
            sy.g = new sy();
        }
        sy syVar = sy.g;
        qy a = syVar.a(intent, executor, serviceConnection);
        if (a != null) {
            syVar.d.add(new ky(syVar, intent, executor, serviceConnection));
            if (((Boolean) ((Pair) a).second).booleanValue()) {
                i = 2;
            } else {
                i = 1;
            }
            int i2 = syVar.c;
            if ((i2 & i) == 0) {
                syVar.c = i | i2;
                if (((Boolean) ((Pair) a).second).booleanValue()) {
                    str = "daemon";
                } else {
                    str = "start";
                }
                return syVar.d((ComponentName) ((Pair) a).first, str);
            }
            return null;
        }
        return null;
    }

    @Deprecated
    public static Runnable createBindTask(Intent intent, Executor executor, ServiceConnection serviceConnection) {
        l10 bindOrTask = bindOrTask(intent, executor, serviceConnection);
        if (bindOrTask == null) {
            return null;
        }
        return new m1(11, bindOrTask);
    }

    public static void stop(Intent intent) {
        l10 stopOrTask;
        if (!Objects.equals(k60.w(), Boolean.FALSE) && (stopOrTask = stopOrTask(intent)) != null) {
            q10.j.execute(new m1(11, stopOrTask));
        }
    }

    public static l10 stopOrTask(Intent intent) {
        oy oyVar;
        if (sy.g == null) {
            sy.g = new sy();
        }
        sy syVar = sy.g;
        syVar.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            qy c = sy.c(intent);
            if (((Boolean) ((Pair) c).second).booleanValue()) {
                oyVar = syVar.b;
            } else {
                oyVar = syVar.a;
            }
            if (oyVar == null) {
                if (!((Boolean) ((Pair) c).second).booleanValue()) {
                    return null;
                }
                return syVar.d((ComponentName) ((Pair) c).first, "stop");
            }
            try {
                oyVar.b.e(-1, (ComponentName) ((Pair) c).first);
            } catch (RemoteException e) {
                k60.o("IPC", e);
            }
            syVar.b(c);
            return null;
        }
        c2.g("This method can only be called on the main thread");
        return null;
    }

    public static void unbind(ServiceConnection serviceConnection) {
        if (sy.g == null) {
            sy.g = new sy();
        }
        sy syVar = sy.g;
        syVar.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            ny nyVar = (ny) syVar.f.remove(serviceConnection);
            if (nyVar != null) {
                py pyVar = (py) ((Pair) nyVar).first;
                int i = pyVar.d;
                qy qyVar = pyVar.a;
                int i2 = i - 1;
                pyVar.d = i2;
                if (i2 == 0) {
                    syVar.e.remove(qyVar);
                    try {
                        pyVar.c.b.a((ComponentName) ((Pair) qyVar).first);
                    } catch (RemoteException e) {
                        k60.o("IPC", e);
                    }
                }
                nyVar.a(serviceConnection);
                return;
            }
            return;
        }
        c2.g("This method can only be called on the main thread");
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        Context context2 = context;
        while (context2 instanceof ContextWrapper) {
            context2 = ((ContextWrapper) context2).getBaseContext();
        }
        super.attachBaseContext(onAttach(context2));
        if (yy.e == null) {
            yy.e = new yy(context);
        }
        yy yyVar = yy.e;
        yyVar.getClass();
        yyVar.b.put(getComponentName(), new xy(this));
        onCreate();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return k60.b;
    }

    public ComponentName getComponentName() {
        return new ComponentName(this, getClass());
    }

    public abstract IBinder onBind(Intent intent);

    public boolean onUnbind(Intent intent) {
        return false;
    }

    public final void stopSelf() {
        if (yy.e == null) {
            yy.e = new yy(this);
        }
        yy yyVar = yy.e;
        ComponentName componentName = getComponentName();
        yyVar.getClass();
        e60.a(new uy(yyVar, componentName, 0));
    }

    public static void bind(Intent intent, ServiceConnection serviceConnection) {
        bind(intent, e60.b, serviceConnection);
    }

    public void onCreate() {
    }

    public void onDestroy() {
    }

    public Context onAttach(Context context) {
        return context;
    }

    public void onRebind(Intent intent) {
    }
}
