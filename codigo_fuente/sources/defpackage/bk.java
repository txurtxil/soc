package defpackage;

import java.io.Serializable;
/* renamed from: bk  reason: default package */
/* loaded from: classes.dex */
public abstract class bk implements Serializable {
    public bk(int i) {
    }

    public final String toString() {
        bx.a.getClass();
        String obj = getClass().getGenericInterfaces()[0].toString();
        if (obj.startsWith("kotlin.jvm.functions.")) {
            return obj.substring(21);
        }
        return obj;
    }
}
