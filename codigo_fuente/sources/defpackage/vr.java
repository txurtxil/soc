package defpackage;

import java.util.Objects;
/* renamed from: vr  reason: default package */
/* loaded from: classes.dex */
public abstract class vr {
    public static boolean a(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public static int b(Object... objArr) {
        return Objects.hash(objArr);
    }
}
