package androidx.media;

import android.media.AudioAttributes;
/* loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media.AudioAttributesImplApi26, androidx.media.AudioAttributesImplApi21] */
    public static AudioAttributesImplApi26 read(w60 w60Var) {
        ?? audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.a = (AudioAttributes) w60Var.g(audioAttributesImplApi21.a, 1);
        audioAttributesImplApi21.b = w60Var.f(audioAttributesImplApi21.b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, w60 w60Var) {
        w60Var.getClass();
        w60Var.k(audioAttributesImplApi26.a, 1);
        w60Var.j(audioAttributesImplApi26.b, 2);
    }
}
