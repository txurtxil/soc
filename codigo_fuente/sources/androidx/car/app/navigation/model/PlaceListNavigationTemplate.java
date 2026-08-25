package androidx.car.app.navigation.model;

import androidx.car.app.model.Action;
import androidx.car.app.model.ActionStrip;
import androidx.car.app.model.CarText;
import androidx.car.app.model.Header;
import androidx.car.app.model.ItemList;
import java.util.Objects;
@e9
@Deprecated
/* loaded from: classes.dex */
public final class PlaceListNavigationTemplate implements e40 {
    private final ActionStrip mActionStrip;
    private final Header mHeader;
    @Deprecated
    private final Action mHeaderAction;
    private final boolean mIsLoading;
    private final ItemList mItemList;
    private final ActionStrip mMapActionStrip;
    private final hs mOnContentRefreshDelegate;
    private final ct mPanModeDelegate;
    @Deprecated
    private final CarText mTitle;

    private PlaceListNavigationTemplate() {
        this.mTitle = null;
        this.mIsLoading = false;
        this.mItemList = null;
        this.mHeader = null;
        this.mHeaderAction = null;
        this.mActionStrip = null;
        this.mMapActionStrip = null;
        this.mPanModeDelegate = null;
        this.mOnContentRefreshDelegate = null;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceListNavigationTemplate)) {
            return false;
        }
        PlaceListNavigationTemplate placeListNavigationTemplate = (PlaceListNavigationTemplate) obj;
        if (this.mIsLoading == placeListNavigationTemplate.mIsLoading && Objects.equals(this.mTitle, placeListNavigationTemplate.mTitle) && Objects.equals(this.mItemList, placeListNavigationTemplate.mItemList) && Objects.equals(this.mHeaderAction, placeListNavigationTemplate.mHeaderAction) && Objects.equals(this.mActionStrip, placeListNavigationTemplate.mActionStrip) && Objects.equals(this.mMapActionStrip, placeListNavigationTemplate.mMapActionStrip)) {
            if (this.mPanModeDelegate == null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (placeListNavigationTemplate.mPanModeDelegate == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (valueOf.equals(Boolean.valueOf(z2))) {
                if (this.mOnContentRefreshDelegate == null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Boolean valueOf2 = Boolean.valueOf(z3);
                if (placeListNavigationTemplate.mOnContentRefreshDelegate == null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (valueOf2.equals(Boolean.valueOf(z4)) && Objects.equals(this.mHeader, placeListNavigationTemplate.mHeader)) {
                    return true;
                }
            }
        }
        return false;
    }

    public ActionStrip getActionStrip() {
        return this.mActionStrip;
    }

    public Header getHeader() {
        return this.mHeader;
    }

    @Deprecated
    public Action getHeaderAction() {
        return this.mHeaderAction;
    }

    public ItemList getItemList() {
        return this.mItemList;
    }

    public ActionStrip getMapActionStrip() {
        return this.mMapActionStrip;
    }

    public hs getOnContentRefreshDelegate() {
        return this.mOnContentRefreshDelegate;
    }

    public ct getPanModeDelegate() {
        return this.mPanModeDelegate;
    }

    @Deprecated
    public CarText getTitle() {
        return this.mTitle;
    }

    public int hashCode() {
        boolean z;
        CarText carText = this.mTitle;
        Boolean valueOf = Boolean.valueOf(this.mIsLoading);
        ItemList itemList = this.mItemList;
        Action action = this.mHeaderAction;
        ActionStrip actionStrip = this.mActionStrip;
        ActionStrip actionStrip2 = this.mMapActionStrip;
        boolean z2 = false;
        if (this.mPanModeDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf2 = Boolean.valueOf(z);
        if (this.mOnContentRefreshDelegate == null) {
            z2 = true;
        }
        return Objects.hash(carText, valueOf, itemList, action, actionStrip, actionStrip2, valueOf2, Boolean.valueOf(z2), this.mHeader);
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public String toString() {
        return "PlaceListNavigationTemplate";
    }

    public PlaceListNavigationTemplate(qt qtVar) {
        throw null;
    }
}
