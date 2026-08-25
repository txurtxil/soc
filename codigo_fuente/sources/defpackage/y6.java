package defpackage;

import androidx.activity.a;
import idv.lzn.screenonauto.ScreenCaptureService;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
/* renamed from: y6  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class y6 implements rg {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ y6(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.rg
    public final Object a() {
        int i = this.a;
        f60 f60Var = f60.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                a7 a7Var = (a7) obj;
                if (a7Var.g) {
                    a7Var.c();
                }
                return f60Var;
            case 1:
                ((a) obj).reportFullyDrawn();
                return null;
            case 2:
                int i2 = ProjectionCarActivity.G;
                return lu.a(((ProjectionCarActivity) obj).getApplicationContext());
            case 3:
                ((dz) obj).Q();
                return f60Var;
            default:
                int i3 = ScreenCaptureService.g;
                ((ScreenCaptureService) obj).a();
                return f60Var;
        }
    }
}
