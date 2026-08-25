package defpackage;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* renamed from: st  reason: default package */
/* loaded from: classes.dex */
public final class st extends l {
    @Override // defpackage.l
    public final Random a() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        current.getClass();
        return current;
    }
}
