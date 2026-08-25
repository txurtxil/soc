package defpackage;
/* renamed from: z7  reason: default package */
/* loaded from: classes.dex */
public final class z7 {
    public final Object a;
    public final String b;

    public z7(Object obj, String str) {
        this.a = obj;
        this.b = str;
    }

    public final String a() {
        return "[" + this.b + ", " + c8.i(this.a.getClass()) + "]";
    }

    public final String toString() {
        return a();
    }
}
