package defpackage;

import android.graphics.Path;
import android.view.animation.PathInterpolator;
/* renamed from: ht  reason: default package */
/* loaded from: classes.dex */
public abstract class ht {
    public static PathInterpolator a(float f, float f2) {
        return new PathInterpolator(f, f2);
    }

    public static PathInterpolator b(float f, float f2, float f3, float f4) {
        return new PathInterpolator(f, f2, f3, f4);
    }

    public static PathInterpolator c(Path path) {
        return new PathInterpolator(path);
    }
}
