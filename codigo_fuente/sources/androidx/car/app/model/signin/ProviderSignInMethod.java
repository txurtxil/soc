package androidx.car.app.model.signin;

import androidx.car.app.model.Action;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class ProviderSignInMethod implements i20 {
    private final Action mAction;

    public ProviderSignInMethod(Action action) {
        Objects.requireNonNull(action);
        if (action.getType() == 1) {
            fs onClickDelegate = action.getOnClickDelegate();
            Objects.requireNonNull(onClickDelegate);
            if (onClickDelegate.isParkedOnly()) {
                this.mAction = action;
                return;
            } else {
                c2.n("The action must use a ParkedOnlyOnClickListener");
                throw null;
            }
        }
        c2.n("The action must not be a standard action");
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProviderSignInMethod)) {
            return false;
        }
        return Objects.equals(this.mAction, ((ProviderSignInMethod) obj).mAction);
    }

    public Action getAction() {
        Action action = this.mAction;
        Objects.requireNonNull(action);
        return action;
    }

    public int hashCode() {
        return Objects.hash(this.mAction);
    }

    public String toString() {
        return "[action:" + this.mAction + "]";
    }

    private ProviderSignInMethod() {
        this.mAction = null;
    }
}
