package defpackage;

import java.util.Locale;
/* renamed from: ul  reason: default package */
/* loaded from: classes.dex */
public abstract class ul {
    public static final Locale[] a = {new Locale("en", "XA"), new Locale("ar", "XB")};

    public static Locale a(String str) {
        return Locale.forLanguageTag(str);
    }

    public static boolean b(Locale locale, Locale locale2) {
        if (!locale.equals(locale2)) {
            if (locale.getLanguage().equals(locale2.getLanguage())) {
                Locale[] localeArr = a;
                int length = localeArr.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (localeArr[i].equals(locale)) {
                            break;
                        }
                        i++;
                    } else {
                        int length2 = localeArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length2) {
                                if (localeArr[i2].equals(locale2)) {
                                    break;
                                }
                                i2++;
                            } else {
                                String c = fi.c(fi.a(fi.b(locale)));
                                if (c.isEmpty()) {
                                    String country = locale.getCountry();
                                    if (country.isEmpty() || country.equals(locale2.getCountry())) {
                                        return true;
                                    }
                                } else {
                                    return c.equals(fi.c(fi.a(fi.b(locale2))));
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }
}
