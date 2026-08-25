package defpackage;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
/* renamed from: v2  reason: default package */
/* loaded from: classes.dex */
public abstract class v2 {
    public static final LinearInterpolator a = new LinearInterpolator();
    public static final ue b = new ue(ue.d);
    public static final ue c;

    static {
        new ue(ue.c);
        c = new ue(ue.e);
        new DecelerateInterpolator();
    }

    public static float a(float f, float f2, float f3, float f4, float f5) {
        if (f5 <= f3) {
            return f;
        }
        if (f5 >= f4) {
            return f2;
        }
        return ((f2 - f) * ((f5 - f3) / (f4 - f3))) + f;
    }
}
