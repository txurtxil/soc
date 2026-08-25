package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.ITabCallback;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class TabCallbackDelegateImpl implements z30 {
    private final ITabCallback mStubCallback;

    @e9
    /* loaded from: classes.dex */
    public static class TabCallbackStub extends ITabCallback.Stub {
        private final c40 mCallback;

        public TabCallbackStub(c40 c40Var) {
        }

        public /* synthetic */ Object lambda$onTabSelected$0(String str) {
            throw null;
        }

        @Override // androidx.car.app.model.ITabCallback
        public void onTabSelected(String str, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onTabSelected", new c(this, str, 2));
        }
    }

    private TabCallbackDelegateImpl(c40 c40Var) {
        this.mStubCallback = new TabCallbackStub(c40Var);
    }

    public static z30 create(c40 c40Var) {
        return new TabCallbackDelegateImpl(c40Var);
    }

    public void sendTabSelected(String str, ks ksVar) {
        try {
            ITabCallback iTabCallback = this.mStubCallback;
            Objects.requireNonNull(iTabCallback);
            iTabCallback.onTabSelected(str, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private TabCallbackDelegateImpl() {
        this.mStubCallback = null;
    }
}
