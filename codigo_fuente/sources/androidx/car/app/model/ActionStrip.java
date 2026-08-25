package androidx.car.app.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class ActionStrip {
    private final List<Action> mActions;

    public ActionStrip(j1 j1Var) {
        this.mActions = s8.C(j1Var.a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActionStrip)) {
            return false;
        }
        return Objects.equals(this.mActions, ((ActionStrip) obj).mActions);
    }

    public List<Action> getActions() {
        List<Action> list = this.mActions;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public Action getFirstActionOfType(int i) {
        for (Action action : this.mActions) {
            if (action instanceof Action) {
                Action action2 = action;
                if (action2.getType() == i) {
                    return action2;
                }
            }
        }
        return null;
    }

    public int hashCode() {
        return Objects.hashCode(this.mActions);
    }

    public String toString() {
        return "[action count: " + this.mActions.size() + "]";
    }

    private ActionStrip() {
        this.mActions = Collections.EMPTY_LIST;
    }
}
