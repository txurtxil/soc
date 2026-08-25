package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class Badge {
    private final CarColor mBackgroundColor;
    private final boolean mHasDot;
    private final CarIcon mIcon;

    private Badge() {
        this.mHasDot = false;
        this.mBackgroundColor = null;
        this.mIcon = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Badge)) {
            return false;
        }
        Badge badge = (Badge) obj;
        if (this.mHasDot == badge.mHasDot && Objects.equals(this.mBackgroundColor, badge.mBackgroundColor) && Objects.equals(this.mIcon, badge.mIcon)) {
            return true;
        }
        return false;
    }

    public CarColor getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public CarIcon getIcon() {
        return this.mIcon;
    }

    public boolean hasDot() {
        return this.mHasDot;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mHasDot), this.mBackgroundColor, this.mIcon);
    }

    public String toString() {
        return "[hasDot: " + this.mHasDot + ", backgroundColor: " + this.mBackgroundColor + ", icon: " + this.mIcon + "]";
    }

    public Badge(g7 g7Var) {
        throw null;
    }
}
