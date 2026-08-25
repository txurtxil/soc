package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Toggle {
    private final boolean mIsChecked;
    private final boolean mIsEnabled;
    private final es mOnCheckedChangeDelegate;

    private Toggle() {
        this.mOnCheckedChangeDelegate = null;
        this.mIsChecked = false;
        this.mIsEnabled = true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Toggle)) {
            return false;
        }
        Toggle toggle = (Toggle) obj;
        if (this.mIsChecked == toggle.mIsChecked && this.mIsEnabled == toggle.mIsEnabled) {
            return true;
        }
        return false;
    }

    public es getOnCheckedChangeDelegate() {
        es esVar = this.mOnCheckedChangeDelegate;
        Objects.requireNonNull(esVar);
        return esVar;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsChecked), Boolean.valueOf(this.mIsEnabled));
    }

    public boolean isChecked() {
        return this.mIsChecked;
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public String toString() {
        return "[ isChecked: " + this.mIsChecked + ", isEnabled: " + this.mIsEnabled + "]";
    }

    public Toggle(s40 s40Var) {
        throw null;
    }
}
