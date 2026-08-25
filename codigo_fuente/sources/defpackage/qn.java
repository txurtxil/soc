package defpackage;

import java.util.List;
/* renamed from: qn  reason: default package */
/* loaded from: classes.dex */
public abstract class qn {
    public final Object a;
    public boolean b;
    public int c;

    public qn(Object obj) {
        this.a = obj;
    }

    public abstract void a(Object obj);

    public final void b(List list) {
        if (!this.b) {
            this.b = true;
            a(list);
            return;
        }
        c2.f(this.a, "sendResult() called when either sendResult() or sendError() had already been called for: ");
    }
}
