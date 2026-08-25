package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class RowSection extends Section<Row> {
    private final int mInitialSelectedIndex;

    private RowSection() {
        this.mInitialSelectedIndex = -1;
    }

    @Override // androidx.car.app.model.Section
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RowSection)) {
            return false;
        }
        RowSection rowSection = (RowSection) obj;
        if (!super.equals(rowSection) || this.mInitialSelectedIndex != rowSection.mInitialSelectedIndex) {
            return false;
        }
        return true;
    }

    public int getInitialSelectedIndex() {
        return this.mInitialSelectedIndex;
    }

    @Override // androidx.car.app.model.Section
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.mInitialSelectedIndex));
    }

    public boolean isSelectionGroup() {
        if (this.mInitialSelectedIndex >= 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.car.app.model.Section
    public String toString() {
        return "RowSection { initialSelectedIndex: " + this.mInitialSelectedIndex + ", " + super.toString() + " }";
    }

    private RowSection(jz jzVar) {
        super(jzVar);
        throw null;
    }
}
