package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
/* renamed from: nn  reason: default package */
/* loaded from: classes.dex */
public final class nn extends ln {
    public final /* synthetic */ on b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nn(on onVar, Context context) {
        super(onVar, context);
        this.b = onVar;
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
        ko.r(bundle);
        on onVar = this.b;
        vn vnVar = onVar.g;
        mn mnVar = new mn(onVar, str, new c9(19, result), bundle);
        mnVar.c = 1;
        vnVar.c(str, mnVar);
    }
}
