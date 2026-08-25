package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class TabContents {
    public static final String CONTENT_ID = "TAB_CONTENTS_CONTENT_ID";
    private final e40 mTemplate;

    private TabContents() {
        this.mTemplate = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabContents)) {
            return false;
        }
        return Objects.equals(this.mTemplate, ((TabContents) obj).mTemplate);
    }

    public String getContentId() {
        return CONTENT_ID;
    }

    public e40 getTemplate() {
        e40 e40Var = this.mTemplate;
        Objects.requireNonNull(e40Var);
        return e40Var;
    }

    public int hashCode() {
        return Objects.hash(this.mTemplate);
    }

    public String toString() {
        return "[template: " + this.mTemplate + "]";
    }

    public TabContents(a40 a40Var) {
        throw null;
    }
}
