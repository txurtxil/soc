package defpackage;

import android.app.Person;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: kt  reason: default package */
/* loaded from: classes.dex */
public abstract class kt {
    /* JADX WARN: Type inference failed for: r5v0, types: [lt, java.lang.Object] */
    public static lt a(Person person) {
        IconCompat iconCompat;
        CharSequence name = person.getName();
        IconCompat iconCompat2 = null;
        if (person.getIcon() != null) {
            Icon icon = person.getIcon();
            PorterDuff.Mode mode = IconCompat.k;
            icon.getClass();
            int c = ri.c(icon);
            if (c != 2) {
                if (c != 4) {
                    if (c != 6) {
                        iconCompat2 = new IconCompat(-1);
                        iconCompat2.b = icon;
                    } else {
                        Uri d = ri.d(icon);
                        d.getClass();
                        String uri = d.toString();
                        uri.getClass();
                        iconCompat = new IconCompat(6);
                        iconCompat.b = uri;
                    }
                } else {
                    Uri d2 = ri.d(icon);
                    d2.getClass();
                    String uri2 = d2.toString();
                    uri2.getClass();
                    iconCompat = new IconCompat(4);
                    iconCompat.b = uri2;
                }
                iconCompat2 = iconCompat;
            } else {
                iconCompat2 = IconCompat.c(null, ri.b(icon), ri.a(icon));
            }
        }
        String uri3 = person.getUri();
        String key = person.getKey();
        boolean isBot = person.isBot();
        boolean isImportant = person.isImportant();
        ?? obj = new Object();
        obj.a = name;
        obj.b = iconCompat2;
        obj.c = uri3;
        obj.d = key;
        obj.e = isBot;
        obj.f = isImportant;
        return obj;
    }

    public static Person b(lt ltVar) {
        Person.Builder name = new Person.Builder().setName(ltVar.a);
        IconCompat iconCompat = ltVar.b;
        Icon icon = null;
        if (iconCompat != null) {
            iconCompat.getClass();
            icon = ri.f(iconCompat, null);
        }
        return name.setIcon(icon).setUri(ltVar.c).setKey(ltVar.d).setBot(ltVar.e).setImportant(ltVar.f).build();
    }
}
