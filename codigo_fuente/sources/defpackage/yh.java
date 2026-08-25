package defpackage;

import androidx.car.app.model.Action;
import androidx.car.app.model.CarText;
import androidx.car.app.model.Header;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
/* renamed from: yh  reason: default package */
/* loaded from: classes.dex */
public final class yh {
    public final ArrayList a = new ArrayList();
    public Action b;
    public CarText c;

    public final Header a() {
        if (CarText.isNullOrEmpty(this.c) && this.b == null) {
            c2.g("Either the title or start header action must be set");
            return null;
        }
        return new Header(this);
    }

    public final void b(Action action) {
        l1 l1Var = l1.l;
        Objects.requireNonNull(action);
        l1Var.a(Collections.singletonList(action));
        this.b = action;
    }
}
