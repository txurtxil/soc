package defpackage;

import android.widget.PopupWindow;
/* renamed from: cp  reason: default package */
/* loaded from: classes.dex */
public final class cp implements PopupWindow.OnDismissListener {
    public final /* synthetic */ ep a;

    public cp(ep epVar) {
        this.a = epVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.a.c();
    }
}
