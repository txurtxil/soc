package androidx.car.app.navigation;

import androidx.car.app.IOnDoneCallback;
import androidx.car.app.navigation.INavigationManager;
import androidx.car.app.utils.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NavigationManager$1 extends INavigationManager.Stub {
    final /* synthetic */ b this$0;
    final /* synthetic */ nk val$lifecycle;

    public NavigationManager$1(b bVar, nk nkVar) {
        this.this$0 = bVar;
        this.val$lifecycle = nkVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object lambda$onStopNavigation$0() {
        this.this$0.getClass();
        n40.a();
        return null;
    }

    @Override // androidx.car.app.navigation.INavigationManager
    public void onStopNavigation(IOnDoneCallback iOnDoneCallback) {
        e.b(this.val$lifecycle, iOnDoneCallback, "onStopNavigation", new hx() { // from class: androidx.car.app.navigation.a
            @Override // defpackage.hx
            public final Object b() {
                Object lambda$onStopNavigation$0;
                lambda$onStopNavigation$0 = NavigationManager$1.this.lambda$onStopNavigation$0();
                return lambda$onStopNavigation$0;
            }
        });
    }
}
