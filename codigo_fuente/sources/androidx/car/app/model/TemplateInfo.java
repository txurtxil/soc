package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class TemplateInfo {
    private final Class<? extends e40> mTemplateClass;
    private final String mTemplateId;

    private TemplateInfo() {
        this.mTemplateClass = null;
        this.mTemplateId = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TemplateInfo)) {
            return false;
        }
        TemplateInfo templateInfo = (TemplateInfo) obj;
        if (Objects.equals(this.mTemplateClass, templateInfo.mTemplateClass) && Objects.equals(this.mTemplateId, templateInfo.mTemplateId)) {
            return true;
        }
        return false;
    }

    public Class<? extends e40> getTemplateClass() {
        Class<? extends e40> cls = this.mTemplateClass;
        Objects.requireNonNull(cls);
        return cls;
    }

    public String getTemplateId() {
        String str = this.mTemplateId;
        Objects.requireNonNull(str);
        return str;
    }

    public int hashCode() {
        return Objects.hash(this.mTemplateClass, this.mTemplateId);
    }

    public TemplateInfo(Class<? extends e40> cls, String str) {
        this.mTemplateClass = cls;
        this.mTemplateId = str;
    }
}
