package androidx.car.app.navigation.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Lane {
    private final List<LaneDirection> mDirections;

    public Lane(List<LaneDirection> list) {
        this.mDirections = s8.C(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Lane)) {
            return false;
        }
        return Objects.equals(this.mDirections, ((Lane) obj).mDirections);
    }

    public List<LaneDirection> getDirections() {
        List<LaneDirection> list = this.mDirections;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public int hashCode() {
        return Objects.hashCode(this.mDirections);
    }

    public String toString() {
        int i;
        StringBuilder sb = new StringBuilder("[direction count: ");
        List<LaneDirection> list = this.mDirections;
        if (list != null) {
            i = list.size();
        } else {
            i = 0;
        }
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    private Lane() {
        this.mDirections = Collections.EMPTY_LIST;
    }
}
