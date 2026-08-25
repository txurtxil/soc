package defpackage;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;
/* renamed from: q70  reason: default package */
/* loaded from: classes.dex */
public abstract class q70 {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static va b(View view, va vaVar) {
        ContentInfo k = vaVar.a.k();
        Objects.requireNonNull(k);
        ContentInfo e = ra.e(k);
        ContentInfo performReceiveContent = view.performReceiveContent(e);
        if (performReceiveContent == null) {
            return null;
        }
        if (performReceiveContent == e) {
            return vaVar;
        }
        return new va(new c9(performReceiveContent));
    }

    public static void c(View view, String[] strArr, ns nsVar) {
        if (nsVar == null) {
            view.setOnReceiveContentListener(strArr, null);
        } else {
            view.setOnReceiveContentListener(strArr, new r70(nsVar));
        }
    }
}
