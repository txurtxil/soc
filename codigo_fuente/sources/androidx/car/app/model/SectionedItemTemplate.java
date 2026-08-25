package androidx.car.app.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class SectionedItemTemplate implements e40 {
    private final List<Action> mActions;
    private final Header mHeader;
    private final boolean mIsAlphabeticalIndexingAllowed;
    private final boolean mIsLoading;
    private final List<Section<?>> mSections;

    private SectionedItemTemplate() {
        List list = Collections.EMPTY_LIST;
        this.mSections = list;
        this.mActions = list;
        this.mHeader = null;
        this.mIsLoading = false;
        this.mIsAlphabeticalIndexingAllowed = false;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SectionedItemTemplate)) {
            return false;
        }
        SectionedItemTemplate sectionedItemTemplate = (SectionedItemTemplate) obj;
        if (!Objects.equals(this.mSections, sectionedItemTemplate.mSections) || !Objects.equals(this.mActions, sectionedItemTemplate.mActions) || !Objects.equals(this.mHeader, sectionedItemTemplate.mHeader) || this.mIsLoading != sectionedItemTemplate.mIsLoading || this.mIsAlphabeticalIndexingAllowed != sectionedItemTemplate.mIsAlphabeticalIndexingAllowed) {
            return false;
        }
        return true;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public Header getHeader() {
        return this.mHeader;
    }

    public List<Section<?>> getSections() {
        return this.mSections;
    }

    public int hashCode() {
        return Objects.hash(this.mSections, this.mActions, this.mHeader, Boolean.valueOf(this.mIsLoading), Boolean.valueOf(this.mIsAlphabeticalIndexingAllowed));
    }

    public boolean isAlphabeticalIndexingAllowed() {
        return this.mIsAlphabeticalIndexingAllowed;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public String toString() {
        return "SectionedItemTemplate";
    }

    private SectionedItemTemplate(r00 r00Var) {
        throw null;
    }
}
