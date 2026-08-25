package defpackage;

import java.io.OutputStream;
import java.util.concurrent.locks.Condition;
/* renamed from: p10  reason: default package */
/* loaded from: classes.dex */
public final class p10 implements l10 {
    public final Condition a;
    public boolean b = false;

    public p10(Condition condition) {
        this.a = condition;
    }

    @Override // defpackage.l10
    public final void a(OutputStream outputStream) {
    }
}
