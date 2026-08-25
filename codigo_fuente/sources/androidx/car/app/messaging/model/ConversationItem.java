package androidx.car.app.messaging.model;

import androidx.car.app.model.Action;
import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class ConversationItem implements rj {
    private final List<Action> mActions;
    private final eb mConversationCallbackDelegate;
    private final CarIcon mIcon;
    private final String mId;
    private final boolean mIndexable;
    private final boolean mIsGroupConversation;
    private final List<CarMessage> mMessages;
    private final lt mSelf;
    private final CarText mTitle;

    public ConversationItem(fb fbVar) {
        boolean z;
        String str = fbVar.a;
        Objects.requireNonNull(str);
        this.mId = str;
        CarText carText = fbVar.b;
        Objects.requireNonNull(carText);
        this.mTitle = carText;
        this.mSelf = validateSender(fbVar.c);
        this.mIcon = fbVar.d;
        this.mIsGroupConversation = fbVar.e;
        List<CarMessage> C = s8.C(fbVar.f);
        Objects.requireNonNull(C);
        this.mMessages = C;
        if (!C.isEmpty()) {
            Iterator<CarMessage> it = C.iterator();
            do {
                z = true;
                if (it.hasNext()) {
                    if (it.next() == null) {
                        z = false;
                        continue;
                    }
                } else {
                    eb ebVar = fbVar.g;
                    Objects.requireNonNull(ebVar);
                    this.mConversationCallbackDelegate = ebVar;
                    this.mActions = s8.C(fbVar.h);
                    this.mIndexable = true;
                    return;
                }
            } while (z);
            c2.g("Message list cannot contain null messages");
            throw null;
        }
        c2.g("Message list cannot be empty.");
        throw null;
    }

    public static lt validateSender(lt ltVar) {
        Objects.requireNonNull(ltVar);
        Objects.requireNonNull(ltVar.a);
        Objects.requireNonNull(ltVar.d);
        return ltVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConversationItem)) {
            return false;
        }
        ConversationItem conversationItem = (ConversationItem) obj;
        if (Objects.equals(this.mId, conversationItem.mId) && Objects.equals(this.mTitle, conversationItem.mTitle) && Objects.equals(this.mIcon, conversationItem.mIcon) && gt.c(getSelf(), conversationItem.getSelf()) && this.mIsGroupConversation == conversationItem.mIsGroupConversation && Objects.equals(this.mMessages, conversationItem.mMessages) && Objects.equals(this.mActions, conversationItem.mActions) && this.mIndexable == conversationItem.mIndexable) {
            return true;
        }
        return false;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public eb getConversationCallbackDelegate() {
        return this.mConversationCallbackDelegate;
    }

    public CarIcon getIcon() {
        return this.mIcon;
    }

    public String getId() {
        return this.mId;
    }

    public List<CarMessage> getMessages() {
        return this.mMessages;
    }

    public lt getSelf() {
        return this.mSelf;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(gt.i(getSelf())), this.mId, this.mTitle, this.mIcon, Boolean.valueOf(this.mIsGroupConversation), this.mMessages, this.mActions, Boolean.valueOf(this.mIndexable));
    }

    public boolean isGroupConversation() {
        return this.mIsGroupConversation;
    }

    public boolean isIndexable() {
        return this.mIndexable;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [lt, java.lang.Object] */
    private ConversationItem() {
        this.mId = "";
        this.mTitle = new CarText.Builder("").build();
        ?? obj = new Object();
        obj.a = "";
        obj.b = null;
        obj.c = null;
        obj.d = null;
        obj.e = false;
        obj.f = false;
        this.mSelf = obj;
        this.mIcon = null;
        this.mIsGroupConversation = false;
        this.mMessages = new ArrayList();
        this.mConversationCallbackDelegate = new ConversationCallbackDelegateImpl(new hd(6));
        this.mActions = Collections.EMPTY_LIST;
        this.mIndexable = true;
    }
}
