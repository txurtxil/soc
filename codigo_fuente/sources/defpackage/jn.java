package defpackage;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
/* renamed from: jn  reason: default package */
/* loaded from: classes.dex */
public final class jn {
    public final Bundle a;

    public jn() {
        this.a = new Bundle();
    }

    public void a(String str, Bitmap bitmap) {
        u6 u6Var = MediaMetadataCompat.c;
        if (u6Var.containsKey(str) && ((Integer) u6Var.getOrDefault(str, null)).intValue() != 2) {
            c2.n(t20.f("The ", str, " key cannot be used to put a Bitmap"));
        } else {
            this.a.putParcelable(str, bitmap);
        }
    }

    public void b(String str, String str2) {
        u6 u6Var = MediaMetadataCompat.c;
        if (u6Var.containsKey(str) && ((Integer) u6Var.getOrDefault(str, null)).intValue() != 1) {
            c2.n(t20.f("The ", str, " key cannot be used to put a String"));
        } else {
            this.a.putCharSequence(str, str2);
        }
    }

    public jn(Bundle bundle) {
        this.a = bundle;
    }
}
