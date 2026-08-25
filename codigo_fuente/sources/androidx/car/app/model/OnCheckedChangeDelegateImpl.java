package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.IOnCheckedChangeListener;
import androidx.car.app.model.OnCheckedChangeDelegateImpl;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class OnCheckedChangeDelegateImpl implements es {
    private final IOnCheckedChangeListener mStub;

    @e9
    /* loaded from: classes.dex */
    public static class OnCheckedChangeListenerStub extends IOnCheckedChangeListener.Stub {
        private final t40 mListener;

        public OnCheckedChangeListenerStub(t40 t40Var) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$onCheckedChange$0(boolean z) {
            throw null;
        }

        @Override // androidx.car.app.model.IOnCheckedChangeListener
        public void onCheckedChange(final boolean z, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onCheckedChange", new hx() { // from class: androidx.car.app.model.d
                @Override // defpackage.hx
                public final Object b() {
                    Object lambda$onCheckedChange$0;
                    lambda$onCheckedChange$0 = OnCheckedChangeDelegateImpl.OnCheckedChangeListenerStub.this.lambda$onCheckedChange$0(z);
                    return lambda$onCheckedChange$0;
                }
            });
        }
    }

    private OnCheckedChangeDelegateImpl(t40 t40Var) {
        this.mStub = new OnCheckedChangeListenerStub(t40Var);
    }

    public static es create(t40 t40Var) {
        return new OnCheckedChangeDelegateImpl(t40Var);
    }

    public void sendCheckedChange(boolean z, ks ksVar) {
        try {
            IOnCheckedChangeListener iOnCheckedChangeListener = this.mStub;
            Objects.requireNonNull(iOnCheckedChangeListener);
            iOnCheckedChangeListener.onCheckedChange(z, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private OnCheckedChangeDelegateImpl() {
        this.mStub = null;
    }
}
