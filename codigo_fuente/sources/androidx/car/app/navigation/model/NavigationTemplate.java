package androidx.car.app.navigation.model;

import androidx.car.app.model.ActionStrip;
import androidx.car.app.model.CarColor;
import androidx.car.app.model.Toggle;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class NavigationTemplate implements e40 {
    private final ActionStrip mActionStrip;
    private final CarColor mBackgroundColor;
    private final TravelEstimate mDestinationTravelEstimate;
    private final ActionStrip mMapActionStrip;
    private final vq mNavigationInfo;
    private final ct mPanModeDelegate;
    private final Toggle mPanModeToggle;

    public NavigationTemplate(uq uqVar) {
        uqVar.getClass();
        this.mNavigationInfo = null;
        this.mBackgroundColor = null;
        this.mDestinationTravelEstimate = null;
        this.mActionStrip = uqVar.a;
        this.mMapActionStrip = uqVar.b;
        this.mPanModeToggle = null;
        this.mPanModeDelegate = null;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NavigationTemplate)) {
            return false;
        }
        NavigationTemplate navigationTemplate = (NavigationTemplate) obj;
        if (Objects.equals(this.mNavigationInfo, navigationTemplate.mNavigationInfo) && Objects.equals(this.mBackgroundColor, navigationTemplate.mBackgroundColor) && Objects.equals(this.mDestinationTravelEstimate, navigationTemplate.mDestinationTravelEstimate) && Objects.equals(this.mActionStrip, navigationTemplate.mActionStrip) && Objects.equals(this.mMapActionStrip, navigationTemplate.mMapActionStrip) && Objects.equals(this.mPanModeToggle, navigationTemplate.mPanModeToggle)) {
            if (this.mPanModeDelegate == null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (navigationTemplate.mPanModeDelegate == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (valueOf.equals(Boolean.valueOf(z2))) {
                return true;
            }
        }
        return false;
    }

    public ActionStrip getActionStrip() {
        ActionStrip actionStrip = this.mActionStrip;
        Objects.requireNonNull(actionStrip);
        return actionStrip;
    }

    public CarColor getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public TravelEstimate getDestinationTravelEstimate() {
        return this.mDestinationTravelEstimate;
    }

    public ActionStrip getMapActionStrip() {
        return this.mMapActionStrip;
    }

    public vq getNavigationInfo() {
        return this.mNavigationInfo;
    }

    public ct getPanModeDelegate() {
        return this.mPanModeDelegate;
    }

    @Deprecated
    public Toggle getPanModeToggle() {
        return this.mPanModeToggle;
    }

    public int hashCode() {
        boolean z;
        vq vqVar = this.mNavigationInfo;
        CarColor carColor = this.mBackgroundColor;
        TravelEstimate travelEstimate = this.mDestinationTravelEstimate;
        ActionStrip actionStrip = this.mActionStrip;
        ActionStrip actionStrip2 = this.mMapActionStrip;
        Toggle toggle = this.mPanModeToggle;
        if (this.mPanModeDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        return Objects.hash(vqVar, carColor, travelEstimate, actionStrip, actionStrip2, toggle, Boolean.valueOf(z));
    }

    public String toString() {
        return "NavigationTemplate";
    }

    private NavigationTemplate() {
        this.mNavigationInfo = null;
        this.mBackgroundColor = null;
        this.mDestinationTravelEstimate = null;
        this.mActionStrip = null;
        this.mMapActionStrip = null;
        this.mPanModeToggle = null;
        this.mPanModeDelegate = null;
    }
}
