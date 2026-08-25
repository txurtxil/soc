package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.SparseArray;
/* renamed from: kc  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class kc implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ kc(Object obj, int i, Object obj2, int i2) {
        this.a = i2;
        this.c = obj;
        this.b = i;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.d;
        int i2 = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((lc) obj2).b.l(i2, obj);
                return;
            default:
                yy yyVar = (yy) obj2;
                IBinder iBinder = (IBinder) obj;
                SparseArray sparseArray = yyVar.c;
                if (sparseArray.get(i2) == null) {
                    try {
                        sparseArray.put(i2, new wy(yyVar, iBinder, i2));
                        e60.a.removeCallbacks(yyVar);
                        return;
                    } catch (RemoteException e) {
                        k60.o("IPC", e);
                        return;
                    }
                }
                return;
        }
    }
}
