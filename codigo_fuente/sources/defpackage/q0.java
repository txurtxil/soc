package defpackage;

import android.text.TextUtils;
import androidx.car.app.model.Action;
import androidx.car.app.model.CarColor;
import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
/* renamed from: q0  reason: default package */
/* loaded from: classes.dex */
public final class q0 {
    public CarText a;
    public CarIcon b;
    public fs c;
    public final CarColor d = CarColor.DEFAULT;
    public final int e = 1;

    public final Action a() {
        CarText carText;
        CarText carText2;
        int i = this.e;
        if (!Action.isStandardActionType(i) && this.b == null && ((carText2 = this.a) == null || TextUtils.isEmpty(carText2.toString()))) {
            c2.g("An action must have either an icon or a title");
            return null;
        }
        if (i == 65538 || i == 65539) {
            if (this.c == null) {
                if (this.b != null || ((carText = this.a) != null && !TextUtils.isEmpty(carText.toString()))) {
                    c2.g("An icon or title can't be set on the standard back or app-icon action");
                    return null;
                }
            } else {
                c2.g(t20.d(i, "An on-click listener can't be set on an action of type "));
                return null;
            }
        }
        if (i == 65540 && this.c != null) {
            c2.g("An on-click listener can't be set on the pan mode action");
            return null;
        }
        if (i == 65541) {
            if (this.c == null) {
                CarText carText3 = this.a;
                if (carText3 != null && !TextUtils.isEmpty(carText3.toString())) {
                    c2.g("A title can't be set on the standard compose action");
                    return null;
                }
            } else {
                c2.g("An on-click listener can't be set on the compose action");
                return null;
            }
        }
        return new Action(this);
    }
}
