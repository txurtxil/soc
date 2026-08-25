package androidx.car.app.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.model.ISearchCallback;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class SearchCallbackDelegateImpl implements d00 {
    private final ISearchCallback mStubCallback;

    @e9
    /* loaded from: classes.dex */
    public static class SearchCallbackStub extends ISearchCallback.Stub {
        private final f00 mCallback;

        public SearchCallbackStub(f00 f00Var) {
        }

        public /* synthetic */ Object lambda$onSearchSubmitted$1(String str) {
            throw null;
        }

        public /* synthetic */ Object lambda$onSearchTextChanged$0(String str) {
            throw null;
        }

        @Override // androidx.car.app.model.ISearchCallback
        public void onSearchSubmitted(String str, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onSearchSubmitted", new f(this, str, 0));
        }

        @Override // androidx.car.app.model.ISearchCallback
        public void onSearchTextChanged(String str, IOnDoneCallback iOnDoneCallback) {
            androidx.car.app.utils.e.c(iOnDoneCallback, "onSearchTextChanged", new f(this, str, 1));
        }
    }

    private SearchCallbackDelegateImpl(f00 f00Var) {
        this.mStubCallback = new SearchCallbackStub(f00Var);
    }

    public static d00 create(f00 f00Var) {
        return new SearchCallbackDelegateImpl(f00Var);
    }

    public void sendSearchSubmitted(String str, ks ksVar) {
        try {
            ISearchCallback iSearchCallback = this.mStubCallback;
            Objects.requireNonNull(iSearchCallback);
            iSearchCallback.onSearchSubmitted(str, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    public void sendSearchTextChanged(String str, ks ksVar) {
        try {
            ISearchCallback iSearchCallback = this.mStubCallback;
            Objects.requireNonNull(iSearchCallback);
            iSearchCallback.onSearchTextChanged(str, androidx.car.app.utils.e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private SearchCallbackDelegateImpl() {
        this.mStubCallback = null;
    }
}
