package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class GridItem implements rj {
    public static final int IMAGE_TYPE_ICON = 1;
    public static final int IMAGE_TYPE_LARGE = 2;
    private final Badge mBadge;
    private final CarIcon mImage;
    private final int mImageType;
    private final boolean mIndexable;
    private final boolean mIsLoading;
    private final fs mOnClickDelegate;
    private final CarText mText;
    private final CarText mTitle;

    private GridItem() {
        this.mIsLoading = false;
        this.mTitle = null;
        this.mText = null;
        this.mImage = null;
        this.mImageType = 2;
        this.mOnClickDelegate = null;
        this.mBadge = null;
        this.mIndexable = true;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GridItem)) {
            return false;
        }
        GridItem gridItem = (GridItem) obj;
        if (this.mIsLoading == gridItem.mIsLoading && Objects.equals(this.mTitle, gridItem.mTitle) && Objects.equals(this.mText, gridItem.mText) && Objects.equals(this.mImage, gridItem.mImage)) {
            if (this.mOnClickDelegate == null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (gridItem.mOnClickDelegate == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (valueOf.equals(Boolean.valueOf(z2)) && Objects.equals(this.mBadge, gridItem.mBadge) && this.mImageType == gridItem.mImageType && this.mIndexable == gridItem.mIndexable) {
                return true;
            }
        }
        return false;
    }

    public Badge getBadge() {
        return this.mBadge;
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public int getImageType() {
        return this.mImageType;
    }

    public fs getOnClickDelegate() {
        return this.mOnClickDelegate;
    }

    public CarText getText() {
        return this.mText;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public int hashCode() {
        boolean z;
        Boolean valueOf = Boolean.valueOf(this.mIsLoading);
        CarText carText = this.mTitle;
        CarIcon carIcon = this.mImage;
        Integer valueOf2 = Integer.valueOf(this.mImageType);
        if (this.mOnClickDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        return Objects.hash(valueOf, carText, carIcon, valueOf2, Boolean.valueOf(z), this.mBadge, Boolean.valueOf(this.mIndexable));
    }

    public boolean isIndexable() {
        return this.mIndexable;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public String toString() {
        return "[title: " + CarText.toShortString(this.mTitle) + ", text: " + CarText.toShortString(this.mText) + ", image: " + this.mImage + ", isLoading: " + this.mIsLoading + ", badge: " + this.mBadge + "]";
    }

    public GridItem(sh shVar) {
        throw null;
    }
}
