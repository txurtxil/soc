package defpackage;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
/* renamed from: as  reason: default package */
/* loaded from: classes.dex */
public final class as implements OnBackAnimationCallback {
    public final /* synthetic */ ch a;
    public final /* synthetic */ ch b;
    public final /* synthetic */ rg c;
    public final /* synthetic */ rg d;

    public as(ch chVar, ch chVar2, rg rgVar, rg rgVar2) {
        this.a = chVar;
        this.b = chVar2;
        this.c = rgVar;
        this.d = rgVar2;
    }

    public final void onBackCancelled() {
        this.d.a();
    }

    public final void onBackInvoked() {
        this.c.a();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        backEvent.getClass();
        this.b.b(new d7(backEvent));
    }

    public final void onBackStarted(BackEvent backEvent) {
        backEvent.getClass();
        this.a.b(new d7(backEvent));
    }
}
