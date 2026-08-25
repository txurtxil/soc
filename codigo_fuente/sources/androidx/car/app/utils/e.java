package androidx.car.app.utils;

import android.os.RemoteException;
import android.util.Log;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.ISurfaceCallback;
import androidx.car.app.utils.e;
import androidx.lifecycle.a;
/* loaded from: classes.dex */
public abstract class e {
    public static IOnDoneCallback a() {
        return new IOnDoneCallback.Stub(null) { // from class: androidx.car.app.utils.RemoteUtils$1
            final /* synthetic */ ks val$callback;

            @Override // androidx.car.app.IOnDoneCallback
            public void onFailure(x7 x7Var) {
                throw null;
            }

            @Override // androidx.car.app.IOnDoneCallback
            public void onSuccess(x7 x7Var) {
                throw null;
            }
        };
    }

    public static void b(final nk nkVar, final IOnDoneCallback iOnDoneCallback, final String str, final hx hxVar) {
        n40.b(new Runnable() { // from class: gx
            @Override // java.lang.Runnable
            public final void run() {
                nk nkVar2 = nk.this;
                IOnDoneCallback iOnDoneCallback2 = iOnDoneCallback;
                String str2 = str;
                hx hxVar2 = hxVar;
                if (nkVar2 != null && ((a) nkVar2).c.compareTo(mk.c) >= 0) {
                    e.c(iOnDoneCallback2, str2, hxVar2);
                    return;
                }
                e.f(iOnDoneCallback2, str2, new IllegalStateException("Lifecycle is not at least created when dispatching " + hxVar2));
            }
        });
    }

    public static void c(IOnDoneCallback iOnDoneCallback, String str, hx hxVar) {
        n40.b(new x5(iOnDoneCallback, str, hxVar, 5));
    }

    public static void d(String str, ix ixVar) {
        try {
            e(str, ixVar);
        } catch (RemoteException e) {
            Log.e("CarApp.Dispatch", "Host unresponsive when dispatching call ".concat(str), e);
        }
    }

    public static Object e(String str, ix ixVar) {
        try {
            if (Log.isLoggable("CarApp", 3)) {
                Log.d("CarApp", "Dispatching call " + str + " to host");
            }
            return ixVar.call();
        } catch (SecurityException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw new RuntimeException(t20.f("Remote ", str, " call failed"), e2);
        }
    }

    public static void f(IOnDoneCallback iOnDoneCallback, String str, Exception exc) {
        d(str.concat(" onFailure"), new bi(iOnDoneCallback, exc, str, 2));
    }

    public static void g(IOnDoneCallback iOnDoneCallback, String str, Object obj) {
        d(str.concat(" onSuccess"), new bi(iOnDoneCallback, obj, str, 1));
    }

    public static ISurfaceCallback h(androidx.lifecycle.a aVar, ko koVar) {
        return new RemoteUtils$SurfaceCallbackStub(aVar, koVar);
    }
}
