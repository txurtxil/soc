package defpackage;

import java.util.Random;
/* renamed from: se  reason: default package */
/* loaded from: classes.dex */
public final class se extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        return new Random();
    }
}
