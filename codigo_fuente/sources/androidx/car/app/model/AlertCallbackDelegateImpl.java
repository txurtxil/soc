package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.IAlertCallback;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class AlertCallbackDelegateImpl implements g2 {
    private final IAlertCallback mCallback;

    @e9
    /* loaded from: classes.dex */
    public static class AlertCallbackStub extends IAlertCallback.Stub {
        private final f2 mCallback;

        public AlertCallbackStub(f2 f2Var) {
        }

        public /* synthetic */ Object lambda$onAlertCancelled$0(int i) {
            throw null;
        }

        public /* synthetic */ Object lambda$onAlertDismissed$1() {
            throw null;
        }

        @Override // androidx.car.app.model.IAlertCallback
        public void onAlertCancelled(int i, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onCancel", new b(this, i, 0));
        }

        @Override // androidx.car.app.model.IAlertCallback
        public void onAlertDismissed(IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onDismiss", new a(this, 0));
        }
    }

    private AlertCallbackDelegateImpl(f2 f2Var) {
        this.mCallback = new AlertCallbackStub(f2Var);
    }

    public static g2 create(f2 f2Var) {
        return new AlertCallbackDelegateImpl(f2Var);
    }

    public void sendCancel(int i, ks ksVar) {
        try {
            IAlertCallback iAlertCallback = this.mCallback;
            Objects.requireNonNull(iAlertCallback);
            iAlertCallback.onAlertCancelled(i, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    public void sendDismiss(ks ksVar) {
        try {
            IAlertCallback iAlertCallback = this.mCallback;
            Objects.requireNonNull(iAlertCallback);
            iAlertCallback.onAlertDismissed(androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private AlertCallbackDelegateImpl() {
        this.mCallback = null;
    }
}
