package defpackage;

import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.view.View;
import android.view.Window;
import java.util.WeakHashMap;
/* renamed from: rm  reason: default package */
/* loaded from: classes.dex */
public final class rm extends n2 {
    public final en d;
    public final Rect e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public rm(android.content.Context r15) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rm.<init>(android.content.Context):void");
    }

    @Override // defpackage.n2
    public final o2 b() {
        o2 b = super.b();
        Window window = b.getWindow();
        View decorView = window.getDecorView();
        en enVar = this.d;
        if (enVar != null) {
            WeakHashMap weakHashMap = u70.a;
            enVar.g(j70.i(decorView));
        }
        Rect rect = this.e;
        window.setBackgroundDrawable(new InsetDrawable((Drawable) enVar, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new jj(b, rect));
        return b;
    }

    @Override // defpackage.n2
    public final void d(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.d(null, null);
    }
}
