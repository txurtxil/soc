package defpackage;

import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: lt  reason: default package */
/* loaded from: classes.dex */
public final class lt {
    public CharSequence a;
    public IconCompat b;
    public String c;
    public String d;
    public boolean e;
    public boolean f;

    /* JADX WARN: Type inference failed for: r5v1, types: [lt, java.lang.Object] */
    public static lt a(Bundle bundle) {
        IconCompat iconCompat;
        Bundle bundle2 = bundle.getBundle("icon");
        CharSequence charSequence = bundle.getCharSequence("name");
        if (bundle2 != null) {
            iconCompat = IconCompat.a(bundle2);
        } else {
            iconCompat = null;
        }
        String string = bundle.getString("uri");
        String string2 = bundle.getString("key");
        boolean z = bundle.getBoolean("isBot");
        boolean z2 = bundle.getBoolean("isImportant");
        ?? obj = new Object();
        obj.a = charSequence;
        obj.b = iconCompat;
        obj.c = string;
        obj.d = string2;
        obj.e = z;
        obj.f = z2;
        return obj;
    }
}
