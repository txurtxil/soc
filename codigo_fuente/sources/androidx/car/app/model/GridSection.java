package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class GridSection extends Section<GridItem> {
    public static final int ITEM_IMAGE_SHAPE_CIRCLE = 2;
    public static final int ITEM_IMAGE_SHAPE_UNSET = 1;
    public static final int ITEM_SIZE_LARGE = 3;
    public static final int ITEM_SIZE_MEDIUM = 2;
    public static final int ITEM_SIZE_SMALL = 1;
    private final int mItemImageShape;
    private final int mItemSize;

    private GridSection() {
        this.mItemSize = 1;
        this.mItemImageShape = 1;
    }

    @Override // androidx.car.app.model.Section
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GridSection)) {
            return false;
        }
        GridSection gridSection = (GridSection) obj;
        if (!super.equals(gridSection) || this.mItemImageShape != gridSection.mItemImageShape || this.mItemSize != gridSection.mItemSize) {
            return false;
        }
        return true;
    }

    public int getItemImageShape() {
        return this.mItemImageShape;
    }

    public int getItemSize() {
        return this.mItemSize;
    }

    @Override // androidx.car.app.model.Section
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Integer.valueOf(this.mItemImageShape), Integer.valueOf(this.mItemSize));
    }

    @Override // androidx.car.app.model.Section
    public String toString() {
        return "GridSection { itemSize: " + this.mItemSize + ", itemImageShape: " + this.mItemImageShape + ", " + super.toString() + " }";
    }

    private GridSection(vh vhVar) {
        super(vhVar);
        throw null;
    }
}
