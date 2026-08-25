package androidx.car.app.model;

import android.os.Binder;
import androidx.car.app.model.AlertCallbackDelegateImpl;
import androidx.car.app.model.OnSelectedDelegateImpl;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Binder c;

    public /* synthetic */ b(Binder binder, int i, int i2) {
        this.a = i2;
        this.c = binder;
        this.b = i;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        int i2 = this.b;
        Binder binder = this.c;
        switch (i) {
            case 0:
                return AlertCallbackDelegateImpl.AlertCallbackStub.g((AlertCallbackDelegateImpl.AlertCallbackStub) binder, i2);
            default:
                return OnSelectedDelegateImpl.OnSelectedListenerStub.g((OnSelectedDelegateImpl.OnSelectedListenerStub) binder, i2);
        }
    }
}
