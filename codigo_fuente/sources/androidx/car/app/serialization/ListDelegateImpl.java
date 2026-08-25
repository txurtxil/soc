package androidx.car.app.serialization;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.serialization.IRemoteList;
import androidx.car.app.serialization.ListDelegateImpl;
import androidx.car.app.utils.e;
import java.util.List;
@e9
/* loaded from: classes.dex */
public final class ListDelegateImpl<T> implements bl {
    private int _size;
    private int listHashCode;
    private IRemoteList mStub;

    /* loaded from: classes.dex */
    public static final class RemoteListStub<T> extends IRemoteList.Stub {
        private final List<T> mContent;

        /* JADX WARN: Multi-variable type inference failed */
        public RemoteListStub(List<? extends T> list) {
            list.getClass();
            this.mContent = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object requestItemRange$lambda$0(RemoteListStub remoteListStub, int i, int i2) {
            return remoteListStub.mContent.subList(i, i2 + 1);
        }

        @Override // androidx.car.app.serialization.IRemoteList
        public void requestItemRange(final int i, final int i2, IOnDoneCallback iOnDoneCallback) {
            iOnDoneCallback.getClass();
            e.c(iOnDoneCallback, "lazy load content", new hx() { // from class: androidx.car.app.serialization.a
                @Override // defpackage.hx
                public final Object b() {
                    Object requestItemRange$lambda$0;
                    requestItemRange$lambda$0 = ListDelegateImpl.RemoteListStub.requestItemRange$lambda$0(ListDelegateImpl.RemoteListStub.this, i, i2);
                    return requestItemRange$lambda$0;
                }
            });
        }
    }

    public ListDelegateImpl(List<? extends T> list) {
        list.getClass();
        this._size = -1;
        this.listHashCode = -1;
        this._size = list.size();
        this.listHashCode = list.hashCode();
        this.mStub = new RemoteListStub(list);
    }

    public boolean equals(Object obj) {
        if ((obj instanceof ListDelegateImpl) && ((ListDelegateImpl) obj).listHashCode == this.listHashCode) {
            return true;
        }
        return false;
    }

    public int getSize() {
        return this._size;
    }

    public int hashCode() {
        return this.listHashCode;
    }

    public void requestItemRange(int i, int i2, ks ksVar) {
        ksVar.getClass();
        getSize();
        try {
            IRemoteList iRemoteList = this.mStub;
            if (iRemoteList != null) {
                iRemoteList.requestItemRange(i, i2, e.a());
            } else {
                qj.v("mStub");
                throw null;
            }
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private ListDelegateImpl() {
        this._size = -1;
        this.listHashCode = -1;
    }
}
