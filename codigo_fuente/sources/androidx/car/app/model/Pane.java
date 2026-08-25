package androidx.car.app.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Pane {
    private final List<Action> mActionList;
    private final CarIcon mImage;
    private final boolean mIsLoading;
    private final List<Row> mRows;

    private Pane() {
        List list = Collections.EMPTY_LIST;
        this.mRows = list;
        this.mActionList = list;
        this.mIsLoading = false;
        this.mImage = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pane)) {
            return false;
        }
        Pane pane = (Pane) obj;
        if (this.mIsLoading == pane.mIsLoading && Objects.equals(this.mActionList, pane.mActionList) && Objects.equals(this.mRows, pane.mRows) && Objects.equals(this.mImage, pane.mImage)) {
            return true;
        }
        return false;
    }

    public List<Action> getActions() {
        List<Action> list = this.mActionList;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public List<Row> getRows() {
        List<Row> list = this.mRows;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public int hashCode() {
        return Objects.hash(this.mRows, this.mActionList, Boolean.valueOf(this.mIsLoading), this.mImage);
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[ rows: ");
        List<Row> list = this.mRows;
        if (list != null) {
            str = list.toString();
        } else {
            str = null;
        }
        sb.append(str);
        sb.append(", action list: ");
        sb.append(this.mActionList);
        sb.append("]");
        return sb.toString();
    }

    public Pane(et etVar) {
        throw null;
    }
}
