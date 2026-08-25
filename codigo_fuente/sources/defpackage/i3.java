package defpackage;

import android.app.LocaleManager;
import android.os.LocaleList;
/* renamed from: i3  reason: default package */
/* loaded from: classes.dex */
public abstract class i3 {
    public static LocaleList a(Object obj) {
        return ((LocaleManager) obj).getApplicationLocales();
    }

    public static void b(Object obj, LocaleList localeList) {
        ((LocaleManager) obj).setApplicationLocales(localeList);
    }
}
