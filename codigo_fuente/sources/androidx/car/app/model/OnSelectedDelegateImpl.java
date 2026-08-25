package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.IOnSelectedListener;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class OnSelectedDelegateImpl implements qs {
    private final IOnSelectedListener mStub;

    @e9
    /* loaded from: classes.dex */
    public static class OnSelectedListenerStub extends IOnSelectedListener.Stub {
        private final uj mListener;

        public OnSelectedListenerStub(uj ujVar) {
        }

        public /* synthetic */ Object lambda$onSelected$0(int i) {
            throw null;
        }

        @Override // androidx.car.app.model.IOnSelectedListener
        public void onSelected(int i, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onSelectedListener", new b(this, i, 1));
        }
    }

    private OnSelectedDelegateImpl(uj ujVar) {
        this.mStub = new OnSelectedListenerStub(ujVar);
    }

    public static qs create(uj ujVar) {
        return new OnSelectedDelegateImpl(ujVar);
    }

    public void sendSelected(int i, ks ksVar) {
        try {
            IOnSelectedListener iOnSelectedListener = this.mStub;
            Objects.requireNonNull(iOnSelectedListener);
            iOnSelectedListener.onSelected(i, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private OnSelectedDelegateImpl() {
        this.mStub = null;
    }
}
