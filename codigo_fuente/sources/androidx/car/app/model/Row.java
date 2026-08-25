package androidx.car.app.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Row implements rj {
    public static final int IMAGE_TYPE_EXTRA_SMALL = 8;
    public static final int IMAGE_TYPE_ICON = 4;
    public static final int IMAGE_TYPE_LARGE = 2;
    public static final int IMAGE_TYPE_SMALL = 1;
    public static final int NO_DECORATION = -1;
    private static final String YOUR_BOAT = "🚣";
    private final List<Action> mActions;
    private final CarIcon mImage;
    private final boolean mIndexable;
    private final boolean mIsBrowsable;
    private final boolean mIsEnabled;
    private final Metadata mMetadata;
    private final int mNumericDecoration;
    private final fs mOnClickDelegate;
    private final int mRowImageType;
    private final List<CarText> mTexts;
    private final CarText mTitle;
    private final Toggle mToggle;

    private Row() {
        this.mTitle = null;
        List list = Collections.EMPTY_LIST;
        this.mTexts = list;
        this.mImage = null;
        this.mActions = list;
        this.mNumericDecoration = -1;
        this.mToggle = null;
        this.mOnClickDelegate = null;
        this.mMetadata = Metadata.EMPTY_METADATA;
        this.mIsBrowsable = false;
        this.mRowImageType = 1;
        this.mIsEnabled = true;
        this.mIndexable = true;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Row)) {
            return false;
        }
        Row row = (Row) obj;
        if (Objects.equals(this.mTitle, row.mTitle) && Objects.equals(this.mTexts, row.mTexts) && Objects.equals(this.mImage, row.mImage) && Objects.equals(this.mToggle, row.mToggle)) {
            if (this.mOnClickDelegate == null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (row.mOnClickDelegate == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (valueOf.equals(Boolean.valueOf(z2)) && Objects.equals(this.mMetadata, row.mMetadata) && this.mIsBrowsable == row.mIsBrowsable && this.mRowImageType == row.mRowImageType && this.mIsEnabled == row.isEnabled() && this.mIndexable == row.mIndexable) {
                return true;
            }
        }
        return false;
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public Metadata getMetadata() {
        return this.mMetadata;
    }

    public int getNumericDecoration() {
        return this.mNumericDecoration;
    }

    public fs getOnClickDelegate() {
        return this.mOnClickDelegate;
    }

    public int getRowImageType() {
        return this.mRowImageType;
    }

    public List<CarText> getTexts() {
        List<CarText> list = this.mTexts;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public Toggle getToggle() {
        return this.mToggle;
    }

    public int hashCode() {
        boolean z;
        CarText carText = this.mTitle;
        List<CarText> list = this.mTexts;
        CarIcon carIcon = this.mImage;
        Toggle toggle = this.mToggle;
        if (this.mOnClickDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        return Objects.hash(carText, list, carIcon, toggle, Boolean.valueOf(z), this.mMetadata, Boolean.valueOf(this.mIsBrowsable), Integer.valueOf(this.mRowImageType), Boolean.valueOf(this.mIsEnabled), Boolean.valueOf(this.mIndexable));
    }

    public boolean isBrowsable() {
        return this.mIsBrowsable;
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public boolean isIndexable() {
        return this.mIndexable;
    }

    public Row row() {
        return this;
    }

    public String toString() {
        int i;
        StringBuilder sb = new StringBuilder("[title: ");
        sb.append(CarText.toShortString(this.mTitle));
        sb.append(", text count: ");
        List<CarText> list = this.mTexts;
        if (list != null) {
            i = list.size();
        } else {
            i = 0;
        }
        sb.append(i);
        sb.append(", image: ");
        sb.append(this.mImage);
        sb.append(", isBrowsable: ");
        sb.append(this.mIsBrowsable);
        sb.append(", isEnabled: ");
        sb.append(this.mIsEnabled);
        sb.append("]");
        return sb.toString();
    }

    public CharSequence yourBoat() {
        return YOUR_BOAT;
    }

    public Row(hz hzVar) {
        throw null;
    }
}
