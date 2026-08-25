package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: gr  reason: default package */
/* loaded from: classes.dex */
public final class gr {
    public final Bundle a;
    public IconCompat b;
    public final boolean c;
    public final boolean d;
    public final CharSequence e;
    public final PendingIntent f;

    public gr(String str, PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        this.d = true;
        this.b = null;
        CharSequence charSequence = str;
        if (str != null) {
            int length = str.length();
            charSequence = str;
            if (length > 5120) {
                charSequence = str.subSequence(0, 5120);
            }
        }
        this.e = charSequence;
        this.f = pendingIntent;
        this.a = bundle;
        this.c = true;
        this.d = true;
    }
}
