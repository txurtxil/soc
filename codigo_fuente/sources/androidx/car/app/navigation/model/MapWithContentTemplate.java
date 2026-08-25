package androidx.car.app.navigation.model;

import androidx.car.app.model.ActionStrip;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class MapWithContentTemplate implements e40 {
    private final ActionStrip mActionStrip;
    private final e40 mContentTemplate;
    private final MapController mMapController;

    /* JADX WARN: Type inference failed for: r1v0, types: [e40, java.lang.Object] */
    private MapWithContentTemplate() {
        this.mMapController = null;
        this.mContentTemplate = new Object();
        this.mActionStrip = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapWithContentTemplate)) {
            return false;
        }
        MapWithContentTemplate mapWithContentTemplate = (MapWithContentTemplate) obj;
        if (Objects.equals(this.mContentTemplate, mapWithContentTemplate.mContentTemplate) && Objects.equals(this.mMapController, mapWithContentTemplate.mMapController) && Objects.equals(this.mActionStrip, mapWithContentTemplate.mActionStrip)) {
            return true;
        }
        return false;
    }

    public ActionStrip getActionStrip() {
        return this.mActionStrip;
    }

    public e40 getContentTemplate() {
        return this.mContentTemplate;
    }

    public MapController getMapController() {
        return this.mMapController;
    }

    public int hashCode() {
        return Objects.hash(this.mMapController, this.mContentTemplate, this.mActionStrip);
    }

    public MapWithContentTemplate(om omVar) {
        throw null;
    }
}
