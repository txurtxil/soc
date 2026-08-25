package defpackage;

import android.content.ServiceConnection;
import android.util.Pair;
import java.util.Iterator;
import java.util.Map;
/* renamed from: oy  reason: default package */
/* loaded from: classes.dex */
public final class oy extends q7 {
    public final ni b;
    public final /* synthetic */ sy c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oy(sy syVar, ni niVar) {
        super(niVar.asBinder());
        this.c = syVar;
        this.b = niVar;
    }

    @Override // defpackage.q7
    public final void a() {
        sy syVar = this.c;
        if (syVar.a == this) {
            syVar.a = null;
        }
        if (syVar.b == this) {
            syVar.b = null;
        }
        Iterator it = syVar.e.values().iterator();
        while (it.hasNext()) {
            if (((py) it.next()).c == this) {
                it.remove();
            }
        }
        Iterator it2 = syVar.f.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            ny nyVar = (ny) entry.getValue();
            if (((py) ((Pair) nyVar).first).c == this) {
                nyVar.a((ServiceConnection) entry.getKey());
                it2.remove();
            }
        }
    }
}
