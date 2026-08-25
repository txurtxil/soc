package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.IOnItemVisibilityChangedListener;
import androidx.car.app.model.OnItemVisibilityChangedDelegateImpl;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class OnItemVisibilityChangedDelegateImpl implements ls {
    private final IOnItemVisibilityChangedListener mStub;

    /* loaded from: classes.dex */
    public static class OnItemVisibilityChangedListenerStub extends IOnItemVisibilityChangedListener.Stub {
        private final tj mListener;

        public OnItemVisibilityChangedListenerStub(tj tjVar) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$onItemVisibilityChanged$0(int i, int i2) {
            throw null;
        }

        @Override // androidx.car.app.model.IOnItemVisibilityChangedListener
        public void onItemVisibilityChanged(final int i, final int i2, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onItemVisibilityChanged", new hx() { // from class: androidx.car.app.model.e
                @Override // defpackage.hx
                public final Object b() {
                    Object lambda$onItemVisibilityChanged$0;
                    lambda$onItemVisibilityChanged$0 = OnItemVisibilityChangedDelegateImpl.OnItemVisibilityChangedListenerStub.this.lambda$onItemVisibilityChanged$0(i, i2);
                    return lambda$onItemVisibilityChanged$0;
                }
            });
        }
    }

    private OnItemVisibilityChangedDelegateImpl(tj tjVar) {
        this.mStub = new OnItemVisibilityChangedListenerStub(tjVar);
    }

    public static ls create(tj tjVar) {
        return new OnItemVisibilityChangedDelegateImpl(tjVar);
    }

    public void sendItemVisibilityChanged(int i, int i2, ks ksVar) {
        try {
            IOnItemVisibilityChangedListener iOnItemVisibilityChangedListener = this.mStub;
            Objects.requireNonNull(iOnItemVisibilityChangedListener);
            iOnItemVisibilityChangedListener.onItemVisibilityChanged(i, i2, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private OnItemVisibilityChangedDelegateImpl() {
        this.mStub = null;
    }
}
