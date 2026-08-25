package defpackage;

import android.os.IBinder;
import android.os.Messenger;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.Map;
/* renamed from: wy  reason: default package */
/* loaded from: classes.dex */
public final class wy extends q7 {
    public final Messenger b;
    public final int c;
    public final /* synthetic */ yy d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wy(yy yyVar, IBinder iBinder, int i) {
        super(iBinder);
        this.d = yyVar;
        this.b = new Messenger(iBinder);
        this.c = i;
    }

    @Override // defpackage.q7
    public final void a() {
        yy yyVar = this.d;
        SparseArray sparseArray = yyVar.c;
        int i = this.c;
        sparseArray.remove(i);
        Iterator it = yyVar.b.entrySet().iterator();
        while (it.hasNext()) {
            xy xyVar = (xy) ((Map.Entry) it.next()).getValue();
            if (i < 0) {
                xyVar.b.clear();
            }
            yyVar.i(xyVar, i, new m1(12, it));
        }
    }
}
