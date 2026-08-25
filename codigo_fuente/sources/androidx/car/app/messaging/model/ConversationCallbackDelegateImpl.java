package androidx.car.app.messaging.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.messaging.model.ConversationCallbackDelegateImpl;
import androidx.car.app.messaging.model.IConversationCallback;
import androidx.car.app.utils.e;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
class ConversationCallbackDelegateImpl implements eb {
    private final IConversationCallback mConversationCallbackBinder;

    @e9
    /* loaded from: classes.dex */
    public static class ConversationCallbackStub extends IConversationCallback.Stub {
        private final db mConversationCallback;

        public ConversationCallbackStub(db dbVar) {
            this.mConversationCallback = dbVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$onMarkAsRead$0() {
            this.mConversationCallback.getClass();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$onTextReply$1(String str) {
            this.mConversationCallback.getClass();
            return null;
        }

        @Override // androidx.car.app.messaging.model.IConversationCallback
        public void onMarkAsRead(IOnDoneCallback iOnDoneCallback) {
            e.c(iOnDoneCallback, "onMarkAsRead", new hx() { // from class: androidx.car.app.messaging.model.b
                @Override // defpackage.hx
                public final Object b() {
                    Object lambda$onMarkAsRead$0;
                    lambda$onMarkAsRead$0 = ConversationCallbackDelegateImpl.ConversationCallbackStub.this.lambda$onMarkAsRead$0();
                    return lambda$onMarkAsRead$0;
                }
            });
        }

        @Override // androidx.car.app.messaging.model.IConversationCallback
        public void onTextReply(IOnDoneCallback iOnDoneCallback, final String str) {
            e.c(iOnDoneCallback, "onReply", new hx() { // from class: androidx.car.app.messaging.model.a
                @Override // defpackage.hx
                public final Object b() {
                    Object lambda$onTextReply$1;
                    lambda$onTextReply$1 = ConversationCallbackDelegateImpl.ConversationCallbackStub.this.lambda$onTextReply$1(str);
                    return lambda$onTextReply$1;
                }
            });
        }
    }

    public ConversationCallbackDelegateImpl(db dbVar) {
        this.mConversationCallbackBinder = new ConversationCallbackStub(dbVar);
    }

    public void sendMarkAsRead(ks ksVar) {
        try {
            IConversationCallback iConversationCallback = this.mConversationCallbackBinder;
            Objects.requireNonNull(iConversationCallback);
            iConversationCallback.onMarkAsRead(e.a());
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    public void sendTextReply(String str, ks ksVar) {
        try {
            IConversationCallback iConversationCallback = this.mConversationCallbackBinder;
            Objects.requireNonNull(iConversationCallback);
            iConversationCallback.onTextReply(e.a(), str);
        } catch (RemoteException e) {
            c2.k(e);
        }
    }

    private ConversationCallbackDelegateImpl() {
        this.mConversationCallbackBinder = null;
    }
}
