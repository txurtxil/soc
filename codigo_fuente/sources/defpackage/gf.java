package defpackage;

import java.util.ArrayList;
/* renamed from: gf  reason: default package */
/* loaded from: classes.dex */
public final class gf {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ gf(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void a(Object obj) {
        switch (this.a) {
            case 0:
                hf hfVar = (hf) obj;
                if (hfVar == null) {
                    hfVar = new hf(-3);
                }
                ((ko) this.b).F(hfVar);
                return;
            default:
                hf hfVar2 = (hf) obj;
                synchronized (jf.c) {
                    try {
                        j20 j20Var = jf.d;
                        ArrayList arrayList = (ArrayList) j20Var.getOrDefault((String) this.b, null);
                        if (arrayList != null) {
                            j20Var.remove((String) this.b);
                            for (int i = 0; i < arrayList.size(); i++) {
                                ((gf) arrayList.get(i)).a(hfVar2);
                            }
                            return;
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
