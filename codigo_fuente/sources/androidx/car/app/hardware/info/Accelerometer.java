package androidx.car.app.hardware.info;

import androidx.car.app.hardware.common.CarValue;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Accelerometer {
    private final CarValue<List<Float>> mForces;

    public Accelerometer(CarValue<List<Float>> carValue) {
        Objects.requireNonNull(carValue);
        this.mForces = carValue;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Accelerometer)) {
            return false;
        }
        return Objects.equals(this.mForces, ((Accelerometer) obj).mForces);
    }

    public CarValue<List<Float>> getForces() {
        return this.mForces;
    }

    public int hashCode() {
        return Objects.hash(this.mForces);
    }

    public String toString() {
        return "[ forces: " + this.mForces + " ]";
    }

    private Accelerometer() {
        this.mForces = CarValue.UNKNOWN_FLOAT_LIST;
    }
}
