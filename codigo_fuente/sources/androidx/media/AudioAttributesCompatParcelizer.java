package androidx.media;
/* loaded from: classes.dex */
public class AudioAttributesCompatParcelizer {
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.media.AudioAttributesCompat] */
    public static AudioAttributesCompat read(w60 w60Var) {
        ?? obj = new Object();
        y60 y60Var = obj.a;
        if (w60Var.e(1)) {
            y60Var = w60Var.h();
        }
        obj.a = (AudioAttributesImpl) y60Var;
        return obj;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, w60 w60Var) {
        w60Var.getClass();
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.a;
        w60Var.i(1);
        w60Var.l(audioAttributesImpl);
    }
}
