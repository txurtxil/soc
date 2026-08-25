package androidx.media;
/* loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media.AudioAttributesImplBase, java.lang.Object] */
    public static AudioAttributesImplBase read(w60 w60Var) {
        ?? obj = new Object();
        obj.a = 0;
        obj.b = 0;
        obj.c = 0;
        obj.d = -1;
        obj.a = w60Var.f(0, 1);
        obj.b = w60Var.f(obj.b, 2);
        obj.c = w60Var.f(obj.c, 3);
        obj.d = w60Var.f(obj.d, 4);
        return obj;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, w60 w60Var) {
        w60Var.getClass();
        w60Var.j(audioAttributesImplBase.a, 1);
        w60Var.j(audioAttributesImplBase.b, 2);
        w60Var.j(audioAttributesImplBase.c, 3);
        w60Var.j(audioAttributesImplBase.d, 4);
    }
}
