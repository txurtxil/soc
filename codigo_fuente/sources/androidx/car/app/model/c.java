package androidx.car.app.model;

import android.os.Binder;
import androidx.car.app.model.InputCallbackDelegateImpl;
import androidx.car.app.model.TabCallbackDelegateImpl;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ Binder b;
    public final /* synthetic */ String c;

    public /* synthetic */ c(Binder binder, String str, int i) {
        this.a = i;
        this.b = binder;
        this.c = str;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        String str = this.c;
        Binder binder = this.b;
        switch (i) {
            case 0:
                return InputCallbackDelegateImpl.OnInputCallbackStub.h((InputCallbackDelegateImpl.OnInputCallbackStub) binder, str);
            case 1:
                return InputCallbackDelegateImpl.OnInputCallbackStub.g((InputCallbackDelegateImpl.OnInputCallbackStub) binder, str);
            default:
                return TabCallbackDelegateImpl.TabCallbackStub.g((TabCallbackDelegateImpl.TabCallbackStub) binder, str);
        }
    }
}
