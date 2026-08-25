package defpackage;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.MirrorAccessibilityService;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
/* renamed from: lv  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class lv implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ ProjectionCarActivity b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lv(ProjectionCarActivity projectionCarActivity, Object obj, int i) {
        this.a = i;
        this.b = projectionCarActivity;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        ProjectionCarActivity projectionCarActivity = this.b;
        switch (i) {
            case 0:
                mt mtVar = (mt) obj;
                if (!projectionCarActivity.D) {
                    projectionCarActivity.o();
                    return;
                }
                if (!PrivilegedInputInjector.INSTANCE.sendGlobalKey(mtVar.a)) {
                    MirrorAccessibilityService mirrorAccessibilityService = MirrorAccessibilityService.s;
                    if (mirrorAccessibilityService == null) {
                        Toast.makeText(projectionCarActivity.getApplicationContext(), (int) R.string.nav_action_permission_required, 1).show();
                    } else {
                        Handler handler = mirrorAccessibilityService.a;
                        int ordinal = mtVar.ordinal();
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    handler.post(new xp(mirrorAccessibilityService, 2));
                                } else {
                                    throw new RuntimeException();
                                }
                            } else {
                                handler.post(new xp(mirrorAccessibilityService, 0));
                            }
                        } else {
                            handler.post(new xp(mirrorAccessibilityService, 1));
                        }
                    }
                }
                projectionCarActivity.o();
                return;
            default:
                String str = (String) obj;
                if (!projectionCarActivity.D) {
                    projectionCarActivity.o();
                    return;
                }
                Context applicationContext = projectionCarActivity.getApplicationContext();
                applicationContext.getClass();
                z5.c(applicationContext, str);
                projectionCarActivity.o();
                return;
        }
    }
}
