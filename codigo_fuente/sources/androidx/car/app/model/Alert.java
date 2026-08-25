package androidx.car.app.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Alert {
    public static final int DURATION_SHOW_INDEFINITELY = Integer.MAX_VALUE;
    private static final int MAX_ACTION_COUNT = 2;
    private final List<Action> mActions;
    private final g2 mCallbackDelegate;
    private final long mDuration;
    private final CarIcon mIcon;
    private final int mId;
    private final CarText mSubtitle;
    private final CarText mTitle;

    private Alert() {
        this.mId = 0;
        this.mTitle = CarText.create("");
        this.mSubtitle = null;
        this.mIcon = null;
        this.mActions = new ArrayList();
        this.mDuration = 0L;
        this.mCallbackDelegate = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Alert) && this.mId == ((Alert) obj).mId) {
            return true;
        }
        return false;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public g2 getCallbackDelegate() {
        return this.mCallbackDelegate;
    }

    public long getDurationMillis() {
        return this.mDuration;
    }

    public CarIcon getIcon() {
        return this.mIcon;
    }

    public int getId() {
        return this.mId;
    }

    public CarText getSubtitle() {
        return this.mSubtitle;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mId));
    }

    public String toString() {
        return "[id: " + this.mId + ", title: " + this.mTitle + ", icon: " + this.mIcon + "]";
    }

    public Alert(e2 e2Var) {
        throw null;
    }
}
