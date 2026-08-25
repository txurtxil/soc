package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.IOnContentRefreshListener;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class OnContentRefreshDelegateImpl implements hs {
    private final IOnContentRefreshListener mListener;

    @e9
    /* loaded from: classes.dex */
    public static class OnContentRefreshListenerStub extends IOnContentRefreshListener.Stub {
        private final is mOnContentRefreshListener;

        public OnContentRefreshListenerStub(is isVar) {
        }

        public /* synthetic */ Object lambda$onContentRefreshRequested$0() {
            throw null;
        }

        @Override // androidx.car.app.model.IOnContentRefreshListener
        public void onContentRefreshRequested(IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onClick", new a(this, 2));
        }
    }

    private OnContentRefreshDelegateImpl(is isVar) {
        this.mListener = new OnContentRefreshListenerStub(isVar);
    }

    public static hs create(is isVar) {
        return new OnContentRefreshDelegateImpl(isVar);
    }

    public void sendContentRefreshRequested(ks ksVar) {
        try {
            IOnContentRefreshListener iOnContentRefreshListener = this.mListener;
            Objects.requireNonNull(iOnContentRefreshListener);
            iOnContentRefreshListener.onContentRefreshRequested(androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private OnContentRefreshDelegateImpl() {
        this.mListener = null;
    }
}
