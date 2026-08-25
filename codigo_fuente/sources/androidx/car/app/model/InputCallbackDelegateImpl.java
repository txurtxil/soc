package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.IInputCallback;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class InputCallbackDelegateImpl implements dj {
    private final IInputCallback mCallback;

    @e9
    /* loaded from: classes.dex */
    public static class OnInputCallbackStub extends IInputCallback.Stub {
        private final cj mCallback;

        public OnInputCallbackStub(cj cjVar) {
        }

        public /* synthetic */ Object lambda$onInputSubmitted$0(String str) {
            throw null;
        }

        public /* synthetic */ Object lambda$onInputTextChanged$1(String str) {
            throw null;
        }

        @Override // androidx.car.app.model.IInputCallback
        public void onInputSubmitted(String str, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onInputSubmitted", new c(this, str, 1));
        }

        @Override // androidx.car.app.model.IInputCallback
        public void onInputTextChanged(String str, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onInputTextChanged", new c(this, str, 0));
        }
    }

    private InputCallbackDelegateImpl(cj cjVar) {
        this.mCallback = new OnInputCallbackStub(cjVar);
    }

    public static dj create(cj cjVar) {
        Objects.requireNonNull(cjVar);
        throw new ClassCastException();
    }

    public void sendInputSubmitted(String str, ks ksVar) {
        try {
            IInputCallback iInputCallback = this.mCallback;
            Objects.requireNonNull(iInputCallback);
            iInputCallback.onInputSubmitted(str, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    public void sendInputTextChanged(String str, ks ksVar) {
        try {
            IInputCallback iInputCallback = this.mCallback;
            Objects.requireNonNull(iInputCallback);
            iInputCallback.onInputTextChanged(str, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private InputCallbackDelegateImpl() {
        this.mCallback = null;
    }
}
