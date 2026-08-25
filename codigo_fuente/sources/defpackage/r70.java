package defpackage;

import android.view.ContentInfo;
import android.view.OnReceiveContentListener;
import android.view.View;
import java.util.Objects;
/* renamed from: r70  reason: default package */
/* loaded from: classes.dex */
public final class r70 implements OnReceiveContentListener {
    public final ns a;

    public r70(ns nsVar) {
        this.a = nsVar;
    }

    public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
        va vaVar = new va(new c9(contentInfo));
        va a = ((l40) this.a).a(view, vaVar);
        if (a == null) {
            return null;
        }
        if (a == vaVar) {
            return contentInfo;
        }
        ContentInfo k = a.a.k();
        Objects.requireNonNull(k);
        return ra.e(k);
    }
}
