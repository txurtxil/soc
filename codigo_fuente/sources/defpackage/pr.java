package defpackage;

import android.app.Notification;
import android.app.Person;
/* renamed from: pr  reason: default package */
/* loaded from: classes.dex */
public abstract class pr {
    public static Notification.Builder a(Notification.Builder builder, Person person) {
        return builder.addPerson(person);
    }

    public static Notification.Action.Builder b(Notification.Action.Builder builder, int i) {
        return builder.setSemanticAction(i);
    }
}
