package defpackage;

import android.content.res.Configuration;
import android.os.LocaleList;
/* renamed from: n3  reason: default package */
/* loaded from: classes.dex */
public abstract class n3 {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (!locales.equals(locales2)) {
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    public static wl b(Configuration configuration) {
        return wl.a(configuration.getLocales().toLanguageTags());
    }

    public static void c(wl wlVar) {
        LocaleList.setDefault(LocaleList.forLanguageTags(wlVar.a.a.toLanguageTags()));
    }

    public static void d(Configuration configuration, wl wlVar) {
        configuration.setLocales(LocaleList.forLanguageTags(wlVar.a.a.toLanguageTags()));
    }
}
