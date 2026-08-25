package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.IOnClickListener;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class OnClickDelegateImpl implements fs {
    private final boolean mIsParkedOnly;
    private final IOnClickListener mListener;

    /* loaded from: classes.dex */
    public static class OnClickListenerStub extends IOnClickListener.Stub {
        private final gs mOnClickListener;

        public OnClickListenerStub(gs gsVar) {
            this.mOnClickListener = gsVar;
        }

        public /* synthetic */ Object lambda$onClick$0() {
            this.mOnClickListener.onClick();
            return null;
        }

        @Override // androidx.car.app.model.IOnClickListener
        public void onClick(IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onClick", new a(this, 1));
        }
    }

    private OnClickDelegateImpl(gs gsVar, boolean z) {
        this.mListener = new OnClickListenerStub(gsVar);
        this.mIsParkedOnly = z;
    }

    public static fs create(gs gsVar) {
        return new OnClickDelegateImpl(gsVar, gsVar instanceof ParkedOnlyOnClickListener);
    }

    @Override // defpackage.fs
    public boolean isParkedOnly() {
        return this.mIsParkedOnly;
    }

    public void sendClick(ks ksVar) {
        try {
            IOnClickListener iOnClickListener = this.mListener;
            Objects.requireNonNull(iOnClickListener);
            iOnClickListener.onClick(androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private OnClickDelegateImpl() {
        this.mListener = null;
        this.mIsParkedOnly = false;
    }
}
