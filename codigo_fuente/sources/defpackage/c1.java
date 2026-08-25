package defpackage;

import android.app.Application;
import android.graphics.Typeface;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* renamed from: c1  reason: default package */
/* loaded from: classes.dex */
public final class c1 implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;
    public final /* synthetic */ Object c;

    public c1(gc gcVar, ArrayList arrayList, s20 s20Var) {
        this.a = 5;
        this.b = arrayList;
        this.c = s20Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        qo qoVar;
        int i = this.a;
        int i2 = 0;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                a1 a1Var = (a1) obj2;
                e1 e1Var = (e1) obj;
                so soVar = e1Var.c;
                if (soVar != null && (qoVar = soVar.e) != null) {
                    qoVar.m(soVar);
                }
                View view = (View) e1Var.h;
                if (view != null && view.getWindowToken() != null) {
                    if (!a1Var.b()) {
                        if (a1Var.e != null) {
                            a1Var.d(0, 0, false, false);
                        }
                    }
                    e1Var.t = a1Var;
                }
                e1Var.v = null;
                return;
            case 1:
                ((p1) obj2).a = obj;
                return;
            case 2:
                ((Application) obj2).unregisterActivityLifecycleCallbacks((p1) obj);
                return;
            case 3:
                try {
                    Method method = q1.d;
                    if (method != null) {
                        method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        q1.e.invoke(obj2, obj, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e) {
                    if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                        throw e;
                    }
                    return;
                } catch (Throwable th) {
                    Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                    return;
                }
            case 4:
                ((b5) ((c9) obj2).b).b((Typeface) obj);
                return;
            case 5:
                ArrayList arrayList = (ArrayList) obj2;
                s20 s20Var = (s20) obj;
                if (arrayList.contains(s20Var)) {
                    arrayList.remove(s20Var);
                    t20.a(s20Var.c.F, s20Var.a);
                    return;
                }
                return;
            case 6:
                cf cfVar = (cf) obj;
                MediaSessionCompat$Token mediaSessionCompat$Token = (MediaSessionCompat$Token) obj2;
                ArrayList arrayList2 = (ArrayList) cfVar.b;
                if (!arrayList2.isEmpty()) {
                    ji a = mediaSessionCompat$Token.a();
                    if (a != null) {
                        int size = arrayList2.size();
                        while (i2 < size) {
                            Object obj3 = arrayList2.get(i2);
                            i2++;
                            v7.b((Bundle) obj3, "extra_session_binder", a.asBinder());
                        }
                    }
                    arrayList2.clear();
                }
                ((ln) cfVar.c).setSessionToken((MediaSession.Token) mediaSessionCompat$Token.b);
                return;
            default:
                ((gf) obj2).a(obj);
                return;
        }
    }

    public /* synthetic */ c1(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public /* synthetic */ c1(Object obj, int i, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }
}
