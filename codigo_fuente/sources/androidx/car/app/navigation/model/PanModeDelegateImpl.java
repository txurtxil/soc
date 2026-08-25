package androidx.car.app.navigation.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.navigation.model.IPanModeListener;
import androidx.car.app.navigation.model.PanModeDelegateImpl;
import androidx.car.app.utils.e;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class PanModeDelegateImpl implements ct {
    private final IPanModeListener mStub;

    @e9
    /* loaded from: classes.dex */
    public static class PanModeListenerStub extends IPanModeListener.Stub {
        private final dt mListener;

        public PanModeListenerStub(dt dtVar) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$onPanModeChanged$0(boolean z) {
            throw null;
        }

        @Override // androidx.car.app.navigation.model.IPanModeListener
        public void onPanModeChanged(final boolean z, IOnDoneCallback iOnDoneCallback) {
            e.c(iOnDoneCallback, "onPanModeChanged", new hx() { // from class: androidx.car.app.navigation.model.a
                @Override // defpackage.hx
                public final Object b() {
                    Object lambda$onPanModeChanged$0;
                    lambda$onPanModeChanged$0 = PanModeDelegateImpl.PanModeListenerStub.this.lambda$onPanModeChanged$0(z);
                    return lambda$onPanModeChanged$0;
                }
            });
        }
    }

    private PanModeDelegateImpl(dt dtVar) {
        this.mStub = new PanModeListenerStub(dtVar);
    }

    public static ct create(dt dtVar) {
        return new PanModeDelegateImpl(dtVar);
    }

    public void sendPanModeChanged(boolean z, ks ksVar) {
        try {
            IPanModeListener iPanModeListener = this.mStub;
            Objects.requireNonNull(iPanModeListener);
            iPanModeListener.onPanModeChanged(z, e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private PanModeDelegateImpl() {
        this.mStub = null;
    }
}
