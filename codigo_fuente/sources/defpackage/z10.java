package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.util.Log;
import idv.lzn.screenonauto.privileged.ShizukuBackend;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: z10  reason: default package */
/* loaded from: classes.dex */
public abstract class z10 {
    public static IBinder a = null;
    public static qi b = null;
    public static boolean c = false;
    public static boolean d = false;
    public static boolean e = false;
    public static final t10 f;
    public static final r10 g;
    public static final ArrayList h;
    public static final ArrayList i;
    public static final ArrayList j;
    public static final Handler k;

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Binder, t10, android.os.IInterface] */
    /* JADX WARN: Type inference failed for: r0v1, types: [r10, java.lang.Object] */
    static {
        ?? binder = new Binder();
        binder.attachInterface(binder, "moe.shizuku.server.IShizukuApplication");
        f = binder;
        g = new Object();
        h = new ArrayList();
        i = new ArrayList();
        j = new ArrayList();
        k = new Handler(Looper.getMainLooper());
    }

    public static void a(w10 w10Var) {
        Objects.requireNonNull(w10Var);
        if (e) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                ShizukuBackend.binderReceivedListener$lambda$4();
            } else {
                k.post(new m1(16, w10Var));
            }
        }
        ArrayList arrayList = h;
        synchronized (arrayList) {
            arrayList.add(new u10(w10Var));
        }
    }

    public static boolean b(IBinder iBinder, String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            t10 t10Var = f;
            t10Var.getClass();
            obtain.writeStrongBinder(t10Var);
            obtain.writeString(str);
            boolean transact = iBinder.transact(14, obtain, obtain2, 0);
            obtain2.readException();
            return transact;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public static boolean c(IBinder iBinder, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("shizuku:attach-api-version", 13);
        bundle.putString("shizuku:attach-package-name", str);
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            t10 t10Var = f;
            t10Var.getClass();
            obtain.writeStrongBinder(t10Var);
            obtain.writeInt(1);
            bundle.writeToParcel(obtain, 0);
            boolean transact = iBinder.transact(18, obtain, obtain2, 0);
            obtain2.readException();
            return transact;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, oi] */
    public static void d(IBinder iBinder, String str) {
        qi qiVar;
        IBinder iBinder2 = a;
        if (iBinder2 != iBinder) {
            int i2 = 0;
            if (iBinder == null) {
                a = null;
                b = null;
                synchronized (h) {
                    try {
                        ArrayList arrayList = i;
                        int size = arrayList.size();
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            u10 u10Var = (u10) obj;
                            u10Var.getClass();
                            if (Looper.myLooper() == Looper.getMainLooper()) {
                                ((b20) ((v10) u10Var.a)).getClass();
                                ShizukuBackend.binderDeadListener$lambda$5();
                            } else {
                                Handler handler = k;
                                v10 v10Var = (v10) u10Var.a;
                                Objects.requireNonNull(v10Var);
                                handler.post(new m1(17, v10Var));
                            }
                        }
                    } finally {
                    }
                }
                return;
            }
            if (iBinder2 != null) {
                iBinder2.unlinkToDeath(g, 0);
            }
            a = iBinder;
            int i3 = pi.a;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof qi)) {
                qiVar = (qi) queryLocalInterface;
            } else {
                ?? obj2 = new Object();
                obj2.a = iBinder;
                qiVar = obj2;
            }
            b = qiVar;
            try {
                a.linkToDeath(g, 0);
            } catch (Throwable unused) {
                Log.i("ShizukuApplication", "attachApplication");
            }
            try {
                if (!c(a, str) && !b(a, str)) {
                    d = true;
                }
                Log.i("ShizukuApplication", "attachApplication");
            } catch (Throwable th) {
                Log.w("ShizukuApplication", Log.getStackTraceString(th));
            }
            if (d) {
                e = true;
                f();
            }
        }
    }

    public static qi e() {
        qi qiVar = b;
        if (qiVar != null) {
            return qiVar;
        }
        c2.g("binder haven't been received");
        return null;
    }

    public static void f() {
        ArrayList arrayList = h;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    u10 u10Var = (u10) obj;
                    u10Var.getClass();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        ((a20) ((w10) u10Var.a)).getClass();
                        ShizukuBackend.binderReceivedListener$lambda$4();
                    } else {
                        Handler handler = k;
                        w10 w10Var = (w10) u10Var.a;
                        Objects.requireNonNull(w10Var);
                        handler.post(new m1(16, w10Var));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        e = true;
    }
}
