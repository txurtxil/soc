package defpackage;

import java.util.ArrayList;
import java.util.List;
/* renamed from: rd  reason: default package */
/* loaded from: classes.dex */
public final class rd implements Runnable {
    public final ArrayList a;
    public final int b;

    public rd(List list, int i, Throwable th) {
        qj.d(list, "initCallbacks cannot be null");
        this.a = new ArrayList(list);
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        int i = 0;
        if (this.b != 1) {
            while (i < size) {
                ((qd) arrayList.get(i)).a();
                i++;
            }
            return;
        }
        while (i < size) {
            ((qd) arrayList.get(i)).b();
            i++;
        }
    }
}
