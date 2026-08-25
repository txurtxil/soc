package androidx.car.app.model.signin;

import androidx.car.app.model.CarText;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class PinSignInMethod implements i20 {
    private static final int MAX_PIN_LENGTH = 12;
    private final CarText mPinCode;

    public PinSignInMethod(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        int length = charSequence.length();
        if (length != 0) {
            if (length <= 12) {
                this.mPinCode = CarText.create(charSequence);
                return;
            } else {
                c2.n("PIN must not be longer than 12 characters");
                throw null;
            }
        }
        c2.n("PIN must not be empty");
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PinSignInMethod)) {
            return false;
        }
        return Objects.equals(this.mPinCode, ((PinSignInMethod) obj).mPinCode);
    }

    public CarText getPinCode() {
        CarText carText = this.mPinCode;
        Objects.requireNonNull(carText);
        return carText;
    }

    public int hashCode() {
        return Objects.hash(this.mPinCode);
    }

    private PinSignInMethod() {
        this.mPinCode = null;
    }
}
