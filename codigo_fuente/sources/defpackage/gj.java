package defpackage;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;
/* renamed from: gj  reason: default package */
/* loaded from: classes.dex */
public final class gj implements hj {
    public final InputContentInfo a;

    public gj(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.a = new InputContentInfo(uri, clipDescription, uri2);
    }

    @Override // defpackage.hj
    public final ClipDescription a() {
        return this.a.getDescription();
    }

    @Override // defpackage.hj
    public final Object b() {
        return this.a;
    }

    @Override // defpackage.hj
    public final Uri c() {
        return this.a.getContentUri();
    }

    @Override // defpackage.hj
    public final void d() {
        this.a.requestPermission();
    }

    @Override // defpackage.hj
    public final Uri e() {
        return this.a.getLinkUri();
    }

    public gj(Object obj) {
        this.a = (InputContentInfo) obj;
    }
}
