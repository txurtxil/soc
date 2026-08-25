package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class ForegroundCarColorSpan extends CarSpan {
    private final CarColor mCarColor;

    private ForegroundCarColorSpan() {
        this.mCarColor = CarColor.DEFAULT;
    }

    public static ForegroundCarColorSpan create(CarColor carColor) {
        w8 w8Var = w8.b;
        w8Var.getClass();
        if (w8Var.a.contains(Integer.valueOf(carColor.getType()))) {
            return new ForegroundCarColorSpan(carColor);
        }
        c2.m(carColor, "Car color type is not allowed: ");
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ForegroundCarColorSpan)) {
            return false;
        }
        return Objects.equals(this.mCarColor, ((ForegroundCarColorSpan) obj).mCarColor);
    }

    public CarColor getColor() {
        return this.mCarColor;
    }

    public int hashCode() {
        return Objects.hashCode(this.mCarColor);
    }

    public String toString() {
        return "[color: " + this.mCarColor + "]";
    }

    private ForegroundCarColorSpan(CarColor carColor) {
        this.mCarColor = carColor;
    }
}
