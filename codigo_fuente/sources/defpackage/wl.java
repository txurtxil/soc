package defpackage;

import java.util.Locale;
/* renamed from: wl  reason: default package */
/* loaded from: classes.dex */
public final class wl {
    public static final wl b = new wl(new xl(vl.a(new Locale[0])));
    public final xl a;

    public wl(xl xlVar) {
        this.a = xlVar;
    }

    public static wl a(String str) {
        if (str != null && !str.isEmpty()) {
            String[] split = str.split(",", -1);
            int length = split.length;
            Locale[] localeArr = new Locale[length];
            for (int i = 0; i < length; i++) {
                localeArr[i] = ul.a(split[i]);
            }
            return new wl(new xl(vl.a(localeArr)));
        }
        return b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof wl) {
            if (this.a.equals(((wl) obj).a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return this.a.a.toString();
    }
}
