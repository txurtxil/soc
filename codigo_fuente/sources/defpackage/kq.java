package defpackage;

import android.content.Context;
import android.os.Handler;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.MirrorAccessibilityService;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
/* renamed from: kq  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class kq implements gs {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ mq b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kq(mq mqVar, String str) {
        this.b = mqVar;
        this.c = str;
    }

    @Override // defpackage.gs
    public final void onClick() {
        int i = this.a;
        Object obj = this.c;
        mq mqVar = this.b;
        switch (i) {
            case 0:
                mt mtVar = (mt) obj;
                if (!PrivilegedInputInjector.INSTANCE.sendGlobalKey(mtVar.a)) {
                    MirrorAccessibilityService mirrorAccessibilityService = MirrorAccessibilityService.s;
                    if (mirrorAccessibilityService == null) {
                        e4.e(mqVar.a, R.string.nav_action_permission_required).f();
                        return;
                    }
                    Handler handler = mirrorAccessibilityService.a;
                    int ordinal = mtVar.ordinal();
                    if (ordinal != 0) {
                        if (ordinal != 1) {
                            if (ordinal == 2) {
                                handler.post(new xp(mirrorAccessibilityService, 2));
                                return;
                            }
                            throw new RuntimeException();
                        }
                        handler.post(new xp(mirrorAccessibilityService, 0));
                        return;
                    }
                    handler.post(new xp(mirrorAccessibilityService, 1));
                    return;
                }
                return;
            default:
                Context applicationContext = mqVar.a.getApplicationContext();
                applicationContext.getClass();
                z5.c(applicationContext, (String) obj);
                return;
        }
    }

    public /* synthetic */ kq(mt mtVar, mq mqVar) {
        this.c = mtVar;
        this.b = mqVar;
    }
}
