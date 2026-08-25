package androidx.car.app.model;

import androidx.core.graphics.drawable.IconCompat;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class CarIcon {
    public static final int TYPE_ALERT = 4;
    public static final int TYPE_APP_ICON = 5;
    public static final int TYPE_BACK = 3;
    public static final int TYPE_COMPOSE_MESSAGE = 8;
    public static final int TYPE_CUSTOM = 1;
    public static final int TYPE_ERROR = 6;
    public static final int TYPE_PAN = 7;
    private static final int TYPE_RESOURCE = 2;
    private static final int TYPE_URI = 4;
    private final IconCompat mIcon;
    private final CarColor mTint;
    private final int mType;
    public static final CarIcon APP_ICON = forStandardType(5);
    public static final CarIcon BACK = forStandardType(3);
    public static final CarIcon ALERT = forStandardType(4);
    public static final CarIcon ERROR = forStandardType(6);
    public static final CarIcon PAN = forStandardType(7);
    public static final CarIcon COMPOSE_MESSAGE = forStandardType(8);

    private CarIcon() {
        this.mType = 1;
        this.mIcon = null;
        this.mTint = null;
    }

    private static CarIcon forStandardType(int i) {
        return forStandardType(i, CarColor.DEFAULT);
    }

    private boolean iconCompatEquals(IconCompat iconCompat) {
        int f;
        IconCompat iconCompat2 = this.mIcon;
        if (iconCompat2 == null) {
            if (iconCompat == null) {
                return true;
            }
            return false;
        } else if (iconCompat == null || (f = iconCompat2.f()) != iconCompat.f()) {
            return false;
        } else {
            if (f == 2) {
                if (Objects.equals(this.mIcon.e(), iconCompat.e()) && this.mIcon.d() == iconCompat.d()) {
                    return true;
                }
                return false;
            } else if (f != 4) {
                return true;
            } else {
                return Objects.equals(this.mIcon.g(), iconCompat.g());
            }
        }
    }

    private Object iconCompatHash() {
        IconCompat iconCompat = this.mIcon;
        if (iconCompat == null) {
            return null;
        }
        int f = iconCompat.f();
        if (f == 2) {
            return this.mIcon.e() + this.mIcon.d();
        } else if (f == 4) {
            return this.mIcon.g();
        } else {
            return Integer.valueOf(f);
        }
    }

    private static String typeToString(int i) {
        switch (i) {
            case 1:
                return "CUSTOM";
            case 2:
            default:
                return "<unknown>";
            case 3:
                return "BACK";
            case 4:
                return "ALERT";
            case 5:
                return "APP";
            case 6:
                return "ERROR";
            case 7:
                return "PAN";
            case 8:
                return "COMPOSE_MESSAGE";
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarIcon)) {
            return false;
        }
        CarIcon carIcon = (CarIcon) obj;
        if (this.mType == carIcon.mType && Objects.equals(this.mTint, carIcon.mTint) && iconCompatEquals(carIcon.mIcon)) {
            return true;
        }
        return false;
    }

    public IconCompat getIcon() {
        return this.mIcon;
    }

    public CarColor getTint() {
        return this.mTint;
    }

    public int getType() {
        return this.mType;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mType), this.mTint, iconCompatHash());
    }

    public String toString() {
        return "[type: " + typeToString(this.mType) + ", tint: " + this.mTint + "]";
    }

    private static CarIcon forStandardType(int i, CarColor carColor) {
        return new CarIcon(null, carColor, i);
    }

    public CarIcon(IconCompat iconCompat, CarColor carColor, int i) {
        this.mType = i;
        this.mIcon = iconCompat;
        this.mTint = carColor;
    }
}
