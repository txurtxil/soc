package defpackage;

import androidx.car.app.messaging.model.ConversationItem;
import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
import java.util.ArrayList;
import java.util.List;
/* renamed from: fb  reason: default package */
/* loaded from: classes.dex */
public final class fb {
    public final String a;
    public final CarText b;
    public final lt c;
    public final CarIcon d;
    public final boolean e;
    public List f;
    public final eb g;
    public final ArrayList h;

    public fb(ConversationItem conversationItem) {
        this.a = conversationItem.getId();
        this.b = conversationItem.getTitle();
        this.c = conversationItem.getSelf();
        this.d = conversationItem.getIcon();
        this.e = conversationItem.isGroupConversation();
        this.g = conversationItem.getConversationCallbackDelegate();
        this.f = conversationItem.getMessages();
        this.h = new ArrayList(conversationItem.getActions());
    }
}
