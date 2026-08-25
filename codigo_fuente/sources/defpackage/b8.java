package defpackage;
/* renamed from: b8  reason: default package */
/* loaded from: classes.dex */
public class b8 extends Exception {
    public b8(String str, a8 a8Var) {
        super(str + ", frames: " + a8Var.a());
    }

    public b8(String str, a8 a8Var, Exception exc) {
        super(str + ", frames: " + a8Var.a(), exc);
    }
}
