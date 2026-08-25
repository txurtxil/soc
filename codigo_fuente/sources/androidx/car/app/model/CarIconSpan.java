package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class CarIconSpan extends CarSpan {
    public static final int ALIGN_BASELINE = 1;
    public static final int ALIGN_BOTTOM = 0;
    public static final int ALIGN_CENTER = 2;
    private final int mAlignment;
    private final CarIcon mIcon;

    private CarIconSpan() {
        this.mIcon = null;
        this.mAlignment = 1;
    }

    private static String alignmentToString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return "unknown";
                }
                return "center";
            }
            return "baseline";
        }
        return "bottom";
    }

    public static CarIconSpan create(CarIcon carIcon, int i) {
        c9.d.x(carIcon);
        if (i != 1 && i != 0 && i != 2) {
            c2.g(t20.d(i, "Invalid alignment value: "));
            return null;
        }
        Objects.requireNonNull(carIcon);
        return new CarIconSpan(carIcon, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarIconSpan)) {
            return false;
        }
        return Objects.equals(this.mIcon, ((CarIconSpan) obj).mIcon);
    }

    public int getAlignment() {
        return this.mAlignment;
    }

    public CarIcon getIcon() {
        CarIcon carIcon = this.mIcon;
        Objects.requireNonNull(carIcon);
        return carIcon;
    }

    public int hashCode() {
        return Objects.hashCode(this.mIcon);
    }

    public String toString() {
        return "[icon: " + this.mIcon + ", alignment: " + alignmentToString(this.mAlignment) + "]";
    }

    private CarIconSpan(CarIcon carIcon, int i) {
        this.mIcon = carIcon;
        this.mAlignment = i;
    }

    public static CarIconSpan create(CarIcon carIcon) {
        return create(carIcon, 1);
    }
}
