package defpackage;

import android.graphics.drawable.Icon;
import android.net.Uri;
/* renamed from: ti  reason: default package */
/* loaded from: classes.dex */
public abstract class ti {
    public static int a(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String b(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int c(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri d(Object obj) {
        return ((Icon) obj).getUri();
    }
}
