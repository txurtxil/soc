package defpackage;

import androidx.activity.b;
import java.util.ListIterator;
/* renamed from: xr  reason: default package */
/* loaded from: classes.dex */
public final class xr extends bk implements ch {
    public final /* synthetic */ int a;
    public final /* synthetic */ b b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xr(b bVar, int i) {
        super(1);
        this.a = i;
        this.b = bVar;
    }

    @Override // defpackage.ch
    public final Object b(Object obj) {
        int i = this.a;
        f60 f60Var = f60.a;
        Object obj2 = null;
        b bVar = this.b;
        switch (i) {
            case 0:
                ((d7) obj).getClass();
                s6 s6Var = bVar.b;
                ListIterator listIterator = s6Var.listIterator(s6Var.c);
                while (true) {
                    if (listIterator.hasPrevious()) {
                        Object previous = listIterator.previous();
                        if (((bg) previous).a) {
                            obj2 = previous;
                        }
                    }
                }
                bVar.c = (bg) obj2;
                return f60Var;
            default:
                ((d7) obj).getClass();
                s6 s6Var2 = bVar.b;
                ListIterator listIterator2 = s6Var2.listIterator(s6Var2.c);
                while (true) {
                    if (listIterator2.hasPrevious()) {
                        Object previous2 = listIterator2.previous();
                        if (((bg) previous2).a) {
                            obj2 = previous2;
                        }
                    }
                }
                bg bgVar = (bg) obj2;
                return f60Var;
        }
    }
}
