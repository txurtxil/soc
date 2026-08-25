package androidx.car.app.model;

import android.os.Binder;
import androidx.car.app.model.AlertCallbackDelegateImpl;
import androidx.car.app.model.OnClickDelegateImpl;
import androidx.car.app.model.OnContentRefreshDelegateImpl;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ Binder b;

    public /* synthetic */ a(Binder binder, int i) {
        this.a = i;
        this.b = binder;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        Binder binder = this.b;
        switch (i) {
            case 0:
                return AlertCallbackDelegateImpl.AlertCallbackStub.h((AlertCallbackDelegateImpl.AlertCallbackStub) binder);
            case 1:
                return OnClickDelegateImpl.OnClickListenerStub.g((OnClickDelegateImpl.OnClickListenerStub) binder);
            default:
                return OnContentRefreshDelegateImpl.OnContentRefreshListenerStub.g((OnContentRefreshDelegateImpl.OnContentRefreshListenerStub) binder);
        }
    }
}
