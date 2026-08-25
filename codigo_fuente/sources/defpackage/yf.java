package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.b;
/* renamed from: yf  reason: default package */
/* loaded from: classes.dex */
public final class yf implements View.OnAttachStateChangeListener {
    public final /* synthetic */ b a;
    public final /* synthetic */ zf b;

    public yf(zf zfVar, b bVar) {
        this.b = zfVar;
        this.a = bVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        b bVar = this.a;
        vf vfVar = bVar.c;
        bVar.k();
        gc.f((ViewGroup) vfVar.F.getParent(), this.b.a.C()).e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
