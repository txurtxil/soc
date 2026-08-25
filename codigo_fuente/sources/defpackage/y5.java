package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.util.Pair;
import android.view.Surface;
import androidx.lifecycle.a;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
/* renamed from: y5  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class y5 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ y5(Object obj, int i, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((ch) obj2).b((Drawable) obj);
                return;
            case 1:
                c6 c6Var = (c6) obj2;
                try {
                    ((Runnable) obj).run();
                    return;
                } finally {
                    c6Var.a();
                }
            case 2:
                CountDownLatch countDownLatch = (CountDownLatch) obj;
                try {
                    ((eq) obj2).a(null);
                    return;
                } finally {
                    countDownLatch.countDown();
                }
            case 3:
                eq eqVar = (eq) obj2;
                Surface surface = (Surface) obj;
                if (!eqVar.w && surface.isValid() && eqVar.h == null) {
                    eqVar.a(surface);
                    eqVar.e(true);
                    return;
                }
                return;
            case 4:
                ((b5) obj2).b((Typeface) obj);
                return;
            case 5:
                ((ServiceConnection) obj2).onNullBinding((ComponentName) ((Pair) ((qy) obj)).first);
                return;
            case 6:
                ((ServiceConnection) obj).onServiceDisconnected((ComponentName) ((Pair) ((py) ((Pair) ((ny) obj2)).first).a).first);
                return;
            case 7:
                mq mqVar = (mq) obj2;
                lk lkVar = (lk) obj;
                a aVar = mqVar.b;
                if (aVar.c.compareTo(mk.b) >= 0) {
                    if (lkVar == lk.ON_DESTROY) {
                        mqVar.c.getClass();
                    }
                    aVar.e(lkVar);
                    return;
                }
                return;
            default:
                d20 d20Var = (d20) obj2;
                IBinder iBinder = (IBinder) obj;
                Iterator it = d20Var.a.iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(d20Var.b, iBinder);
                }
                return;
        }
    }
}
