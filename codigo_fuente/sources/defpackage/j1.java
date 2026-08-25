package defpackage;

import androidx.car.app.model.Action;
import androidx.car.app.model.CarText;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
/* renamed from: j1  reason: default package */
/* loaded from: classes.dex */
public final class j1 {
    public final ArrayList a = new ArrayList();
    public final HashSet b = new HashSet();

    public final void a(Action action) {
        Objects.requireNonNull(action);
        int type = action.getType();
        HashSet hashSet = this.b;
        if (type != 1 && hashSet.contains(Integer.valueOf(type))) {
            c2.m(action, "Duplicated action types are disallowed: ");
            return;
        }
        CarText title = action.getTitle();
        if (title != null) {
            f9.b.b(title);
        }
        hashSet.add(Integer.valueOf(type));
        this.a.add(action);
    }
}
