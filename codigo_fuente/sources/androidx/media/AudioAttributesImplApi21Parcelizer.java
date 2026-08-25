package androidx.media;

import android.media.AudioAttributes;
/* loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(w60 w60Var) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.a = (AudioAttributes) w60Var.g(audioAttributesImplApi21.a, 1);
        audioAttributesImplApi21.b = w60Var.f(audioAttributesImplApi21.b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, w60 w60Var) {
        w60Var.getClass();
        w60Var.k(audioAttributesImplApi21.a, 1);
        w60Var.j(audioAttributesImplApi21.b, 2);
    }
}
