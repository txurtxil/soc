package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: t  reason: default package */
/* loaded from: classes.dex */
public final class t extends ClickableSpan {
    public final int a;
    public final g0 b;
    public final int c;

    public t(int i, g0 g0Var, int i2) {
        this.a = i;
        this.b = g0Var;
        this.c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.a);
        this.b.a.performAction(this.c, bundle);
    }
}
