package defpackage;

import android.os.Build;
import java.util.Locale;
/* renamed from: t7  reason: default package */
/* loaded from: classes.dex */
public abstract class t7 {
    public static final /* synthetic */ int a = 0;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            int i2 = s7.a;
        }
        if (i >= 30) {
            int i3 = s7.a;
        }
        if (i >= 30) {
            int i4 = s7.a;
        }
        if (i >= 30) {
            int i5 = s7.a;
        }
    }

    public static boolean a() {
        int i = Build.VERSION.SDK_INT;
        if (i < 33) {
            if (i >= 32) {
                String str = Build.VERSION.CODENAME;
                if (!"REL".equals(str)) {
                    Locale locale = Locale.ROOT;
                    if (str.toUpperCase(locale).compareTo("Tiramisu".toUpperCase(locale)) < 0) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }
}
