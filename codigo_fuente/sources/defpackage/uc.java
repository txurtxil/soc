package defpackage;

import android.graphics.drawable.Drawable;
/* renamed from: uc  reason: default package */
/* loaded from: classes.dex */
public abstract class uc {
    public static int a(Drawable drawable) {
        return drawable.getLayoutDirection();
    }

    public static boolean b(Drawable drawable, int i) {
        return drawable.setLayoutDirection(i);
    }
}
