package defpackage;

import java.util.Random;
/* renamed from: te  reason: default package */
/* loaded from: classes.dex */
public final class te extends l {
    public final se b = new ThreadLocal();

    @Override // defpackage.l
    public final Random a() {
        Object obj = this.b.get();
        obj.getClass();
        return (Random) obj;
    }
}
