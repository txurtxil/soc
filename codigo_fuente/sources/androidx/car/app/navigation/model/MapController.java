package androidx.car.app.navigation.model;

import androidx.car.app.model.ActionStrip;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class MapController {
    private final ActionStrip mMapActionStrip;
    private final ct mPanModeDelegate;

    private MapController() {
        this.mPanModeDelegate = null;
        this.mMapActionStrip = null;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapController)) {
            return false;
        }
        MapController mapController = (MapController) obj;
        if (this.mPanModeDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        if (mapController.mPanModeDelegate == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (valueOf.equals(Boolean.valueOf(z2)) && Objects.equals(this.mMapActionStrip, mapController.mMapActionStrip)) {
            return true;
        }
        return false;
    }

    public ActionStrip getMapActionStrip() {
        return this.mMapActionStrip;
    }

    public ct getPanModeDelegate() {
        return this.mPanModeDelegate;
    }

    public int hashCode() {
        return Objects.hash(this.mPanModeDelegate, this.mMapActionStrip);
    }

    public MapController(lm lmVar) {
        throw null;
    }
}
