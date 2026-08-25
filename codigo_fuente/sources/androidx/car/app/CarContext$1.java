package androidx.car.app;

import androidx.car.app.IOnRequestPermissionsListener;
import java.util.Arrays;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
class CarContext$1 extends IOnRequestPermissionsListener.Stub {
    final /* synthetic */ i this$0;
    final /* synthetic */ Executor val$executor;
    final /* synthetic */ nk val$lifecycle;
    final /* synthetic */ ps val$listener;

    public CarContext$1(i iVar, nk nkVar, Executor executor, ps psVar) {
        this.this$0 = iVar;
        this.val$lifecycle = nkVar;
        this.val$executor = executor;
    }

    @Override // androidx.car.app.IOnRequestPermissionsListener
    public void onRequestPermissionsResult(String[] strArr, String[] strArr2) {
        if (((androidx.lifecycle.a) this.val$lifecycle).c.compareTo(mk.c) >= 0) {
            this.val$executor.execute(new h(Arrays.asList(strArr), 1, Arrays.asList(strArr2)));
        }
    }
}
