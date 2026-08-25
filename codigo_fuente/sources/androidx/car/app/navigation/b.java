package androidx.car.app.navigation;

import androidx.car.app.i;
import androidx.car.app.j;
import androidx.car.app.navigation.INavigationManager;
/* loaded from: classes.dex */
public final class b implements fm {
    public final INavigationManager.Stub a;

    public b(i iVar, j jVar, final androidx.lifecycle.a aVar) {
        this.a = new NavigationManager$1(this, aVar);
        aVar.a(new ac(this) { // from class: androidx.car.app.navigation.NavigationManager$2
            @Override // defpackage.ac
            public final void d(sk skVar) {
                n40.a();
                aVar.b(this);
            }
        });
    }
}
