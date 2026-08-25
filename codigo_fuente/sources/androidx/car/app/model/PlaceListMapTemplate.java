package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class PlaceListMapTemplate implements e40 {
    private final ActionStrip mActionStrip;
    private final Place mAnchor;
    private final Action mHeaderAction;
    private final boolean mIsLoading;
    private final ItemList mItemList;
    private final hs mOnContentRefreshDelegate;
    private final boolean mShowCurrentLocation;
    private final CarText mTitle;

    private PlaceListMapTemplate() {
        this.mShowCurrentLocation = false;
        this.mIsLoading = false;
        this.mTitle = null;
        this.mItemList = null;
        this.mHeaderAction = null;
        this.mActionStrip = null;
        this.mAnchor = null;
        this.mOnContentRefreshDelegate = null;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceListMapTemplate)) {
            return false;
        }
        PlaceListMapTemplate placeListMapTemplate = (PlaceListMapTemplate) obj;
        if (this.mShowCurrentLocation == placeListMapTemplate.mShowCurrentLocation && this.mIsLoading == placeListMapTemplate.mIsLoading && Objects.equals(this.mTitle, placeListMapTemplate.mTitle) && Objects.equals(this.mItemList, placeListMapTemplate.mItemList) && Objects.equals(this.mHeaderAction, placeListMapTemplate.mHeaderAction) && Objects.equals(this.mActionStrip, placeListMapTemplate.mActionStrip) && Objects.equals(this.mAnchor, placeListMapTemplate.mAnchor)) {
            if (this.mOnContentRefreshDelegate == null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (placeListMapTemplate.mOnContentRefreshDelegate == null) {
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
        return this.mActionStrip;
    }

    public Place getAnchor() {
        return this.mAnchor;
    }

    public Action getHeaderAction() {
        return this.mHeaderAction;
    }

    public ItemList getItemList() {
        return this.mItemList;
    }

    public hs getOnContentRefreshDelegate() {
        return this.mOnContentRefreshDelegate;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public int hashCode() {
        boolean z;
        Boolean valueOf = Boolean.valueOf(this.mShowCurrentLocation);
        Boolean valueOf2 = Boolean.valueOf(this.mIsLoading);
        CarText carText = this.mTitle;
        ItemList itemList = this.mItemList;
        Action action = this.mHeaderAction;
        ActionStrip actionStrip = this.mActionStrip;
        Place place = this.mAnchor;
        if (this.mOnContentRefreshDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        return Objects.hash(valueOf, valueOf2, carText, itemList, action, actionStrip, place, Boolean.valueOf(z));
    }

    public boolean isCurrentLocationEnabled() {
        return this.mShowCurrentLocation;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public String toString() {
        return "PlaceListMapTemplate";
    }

    public PlaceListMapTemplate(pt ptVar) {
        throw null;
    }
}
