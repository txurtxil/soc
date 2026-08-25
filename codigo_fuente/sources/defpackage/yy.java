package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.SparseArray;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* renamed from: yy  reason: default package */
/* loaded from: classes.dex */
public final class yy extends Binder implements Runnable, ni {
    public static yy e;
    public final vy a;
    public final ArrayMap b;
    public final SparseArray c;
    public final boolean d;

    public yy(Context context) {
        attachInterface(this, "com.topjohnwu.superuser.internal.IRootServiceManager");
        this.b = new ArrayMap();
        this.c = new SparseArray();
        System.getenv("LIBSU_VERBOSE_LOGGING");
        ExecutorService executorService = q10.j;
        k60.b = context;
        if (System.getenv("LIBSU_DEBUGGER") != null) {
            try {
                zh.c.invoke(null, context.getPackageName() + ":root", 0);
                while (true) {
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException unused) {
                    }
                }
            } catch (ReflectiveOperationException e2) {
                c2.k(e2);
                throw null;
            }
        } else {
            vy vyVar = new vy(this, new File(context.getPackageCodePath()));
            this.a = vyVar;
            vyVar.startWatching();
            if (context instanceof Callable) {
                try {
                    Object[] objArr = (Object[]) ((Callable) context).call();
                    boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
                    this.d = booleanValue;
                    if (booleanValue) {
                        String packageName = context.getPackageName();
                        int i = iy.a;
                        String str = "libsu-" + packageName;
                        try {
                            Method method = zh.a;
                            if (method.getParameterTypes().length == 4) {
                                method.invoke(null, str, this, Boolean.FALSE, 0);
                            } else {
                                method.invoke(null, str, this);
                            }
                        } catch (ReflectiveOperationException e3) {
                            k60.o("IPC", e3);
                        }
                    }
                    h(((Integer) objArr[0]).intValue());
                    if (!this.d) {
                        e60.a.postDelayed(this, 10000L);
                        return;
                    }
                    return;
                } catch (Exception e4) {
                    c2.k(e4);
                    throw null;
                }
            }
            c2.n("Expected Context to be Callable");
            throw null;
        }
    }

    @Override // defpackage.ni
    public final void a(ComponentName componentName) {
        e60.a(new ty(this, componentName, Binder.getCallingUid(), 0));
    }

    @Override // defpackage.ni
    public final void b(IBinder iBinder) {
        e60.a(new kc(this, Binder.getCallingUid(), iBinder, 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [n80, java.lang.Object, java.lang.Runnable] */
    @Override // defpackage.ni
    public final IBinder d(Intent intent) {
        IBinder[] iBinderArr = new IBinder[1];
        qu quVar = new qu(this, iBinderArr, Binder.getCallingUid(), intent);
        Handler handler = e60.a;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            quVar.run();
        } else {
            ?? obj = new Object();
            obj.a = quVar;
            e60.a.post(obj);
            synchronized (obj) {
                while (obj.a != null) {
                    try {
                        obj.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        return iBinderArr[0];
    }

    @Override // defpackage.ni
    public final void e(int i, ComponentName componentName) {
        if (Binder.getCallingUid() != 0) {
            i = Binder.getCallingUid();
        }
        e60.a(new ty(this, componentName, i, 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        if (r2 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.IBinder g(android.content.Intent r6, int r7) {
        /*
            r5 = this;
            android.util.SparseArray r0 = r5.c
            java.lang.Object r0 = r0.get(r7)
            wy r0 = (defpackage.wy) r0
            r1 = 0
            if (r0 != 0) goto Lc
            goto L4c
        Lc:
            android.content.ComponentName r0 = r6.getComponent()
            android.util.ArrayMap r5 = r5.b
            java.lang.Object r2 = r5.get(r0)
            xy r2 = (defpackage.xy) r2
            if (r2 != 0) goto L4d
            android.content.Context r2 = defpackage.k60.b
            java.lang.ClassLoader r3 = r2.getClassLoader()
            java.lang.String r4 = r0.getClassName()
            java.lang.Class r3 = r3.loadClass(r4)
            java.lang.reflect.Constructor r3 = r3.getDeclaredConstructor(r1)
            r4 = 1
            r3.setAccessible(r4)
            java.lang.Object r3 = r3.newInstance(r1)
            java.lang.reflect.Method r4 = defpackage.zh.a
            boolean r4 = r3 instanceof android.content.ContextWrapper
            if (r4 == 0) goto L43
            java.lang.reflect.Method r4 = defpackage.zh.b     // Catch: java.lang.ReflectiveOperationException -> L43
            java.lang.Object[] r2 = new java.lang.Object[]{r2}     // Catch: java.lang.ReflectiveOperationException -> L43
            r4.invoke(r3, r2)     // Catch: java.lang.ReflectiveOperationException -> L43
        L43:
            java.lang.Object r5 = r5.get(r0)
            r2 = r5
            xy r2 = (defpackage.xy) r2
            if (r2 != 0) goto L4d
        L4c:
            return r1
        L4d:
            jy r5 = r2.a
            android.os.IBinder r1 = r2.d
            if (r1 == 0) goto L60
            r0.getClassName()
            boolean r6 = r2.e
            if (r6 == 0) goto L6f
            android.content.Intent r6 = r2.c
            r5.onRebind(r6)
            goto L6f
        L60:
            r0.getClassName()
            android.os.IBinder r5 = r5.onBind(r6)
            r2.d = r5
            android.content.Intent r5 = r6.cloneFilter()
            r2.c = r5
        L6f:
            android.util.ArraySet r5 = r2.b
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)
            r5.add(r6)
            android.os.IBinder r5 = r2.d
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yy.g(android.content.Intent, int):android.os.IBinder");
    }

    public final void h(int i) {
        if (Binder.getCallingUid() != 0) {
            i = Binder.getCallingUid();
        }
        Bundle bundle = new Bundle();
        bundle.putBinder("binder", this);
        k60.b.sendBroadcastAsUser(new Intent("com.topjohnwu.superuser.RECEIVER_BROADCAST").setPackage(k60.r().getPackageName()).addFlags(zh.d).putExtra("extra.daemon", this.d).putExtra("extra.bundle", bundle), UserHandle.getUserHandleForUid(i));
    }

    public final void i(xy xyVar, int i, Runnable runnable) {
        ArraySet arraySet = xyVar.b;
        jy jyVar = xyVar.a;
        boolean isEmpty = arraySet.isEmpty();
        ArraySet arraySet2 = xyVar.b;
        arraySet2.remove(Integer.valueOf(i));
        if (i < 0 || arraySet2.isEmpty()) {
            if (!isEmpty) {
                xyVar.e = jyVar.onUnbind(xyVar.c);
            }
            boolean z = this.d;
            if (i < 0 || !z) {
                jyVar.onDestroy();
                runnable.run();
                Iterator it = arraySet2.iterator();
                while (it.hasNext()) {
                    wy wyVar = (wy) this.c.get(((Integer) it.next()).intValue());
                    if (wyVar != null) {
                        Message obtain = Message.obtain();
                        obtain.what = 1;
                        obtain.arg1 = z ? 1 : 0;
                        obtain.obj = xyVar.c.getComponent();
                        try {
                            try {
                                wyVar.b.send(obtain);
                            } catch (RemoteException e2) {
                                k60.o("IPC", e2);
                            }
                        } finally {
                            obtain.recycle();
                        }
                    }
                }
            }
        }
        if (this.b.isEmpty()) {
            System.exit(0);
        }
    }

    public final void j(int i, ComponentName componentName) {
        xy xyVar = (xy) this.b.get(componentName);
        if (xyVar == null) {
            return;
        }
        i(xyVar, i, new uy(this, componentName, 1));
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.topjohnwu.superuser.internal.IRootServiceManager");
        }
        if (i != 1598968902) {
            if (i != 1) {
                Object obj = null;
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return super.onTransact(i, parcel, parcel2, i2);
                            }
                            Parcelable.Creator creator = ComponentName.CREATOR;
                            if (parcel.readInt() != 0) {
                                obj = creator.createFromParcel(parcel);
                            }
                            a((ComponentName) obj);
                            return true;
                        }
                        Parcelable.Creator creator2 = Intent.CREATOR;
                        if (parcel.readInt() != 0) {
                            obj = creator2.createFromParcel(parcel);
                        }
                        IBinder d = d((Intent) obj);
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(d);
                        return true;
                    }
                    b(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                }
                Parcelable.Creator creator3 = ComponentName.CREATOR;
                if (parcel.readInt() != 0) {
                    obj = creator3.createFromParcel(parcel);
                }
                e(parcel.readInt(), (ComponentName) obj);
                return true;
            }
            h(parcel.readInt());
            return true;
        }
        parcel2.writeString("com.topjohnwu.superuser.internal.IRootServiceManager");
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.c.size() == 0) {
            System.exit(0);
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
