package defpackage;

import android.content.SharedPreferences;
import android.media.projection.MediaProjection;
import android.view.Surface;
import idv.lzn.screenonauto.ScreenCaptureService;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
/* renamed from: x6  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class x6 implements ch {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ x6(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ch
    public final Object b(Object obj) {
        int i = this.a;
        f60 f60Var = f60.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((Boolean) obj).getClass();
                ((a7) obj2).a();
                return f60Var;
            case 1:
                ((MediaProjection) obj).getClass();
                ((mq) obj2).n = true;
                return f60Var;
            case 2:
                ProjectionCarActivity projectionCarActivity = (ProjectionCarActivity) obj2;
                int i2 = ProjectionCarActivity.G;
                ((MediaProjection) obj).getClass();
                Surface surface = projectionCarActivity.z;
                if (surface != null && surface.isValid()) {
                    SharedPreferences m = projectionCarActivity.m();
                    m.getClass();
                    projectionCarActivity.x = k60.e(m, projectionCarActivity.v);
                    SharedPreferences m2 = projectionCarActivity.m();
                    m2.getClass();
                    int d = k60.d(m2, projectionCarActivity.w);
                    projectionCarActivity.y = d;
                    int i3 = b00.a;
                    b00.d(projectionCarActivity.x, d, projectionCarActivity.getResources().getDisplayMetrics().densityDpi, yz.b, surface);
                }
                return f60Var;
            case 3:
                ((Boolean) obj).getClass();
                ((dz) obj2).T();
                return f60Var;
            default:
                ScreenCaptureService screenCaptureService = (ScreenCaptureService) obj2;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                a7 a7Var = screenCaptureService.b;
                if (a7Var != null) {
                    a7Var.e = booleanValue;
                    a7Var.b();
                }
                us usVar = screenCaptureService.c;
                if (usVar != null) {
                    usVar.b(booleanValue);
                }
                return f60Var;
        }
    }
}
