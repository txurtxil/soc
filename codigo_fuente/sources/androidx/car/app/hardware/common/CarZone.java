package androidx.car.app.hardware.common;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class CarZone {
    public static final int CAR_ZONE_COLUMN_ALL = 16;
    public static final int CAR_ZONE_COLUMN_CENTER = 48;
    public static final int CAR_ZONE_COLUMN_DRIVER = 80;
    public static final int CAR_ZONE_COLUMN_LEFT = 32;
    public static final int CAR_ZONE_COLUMN_PASSENGER = 96;
    public static final int CAR_ZONE_COLUMN_RIGHT = 64;
    public static final CarZone CAR_ZONE_GLOBAL = new CarZone(new Object());
    public static final int CAR_ZONE_ROW_ALL = 0;
    public static final int CAR_ZONE_ROW_EXCLUDE_FIRST = 4;
    public static final int CAR_ZONE_ROW_FIRST = 1;
    public static final int CAR_ZONE_ROW_SECOND = 2;
    public static final int CAR_ZONE_ROW_THIRD = 3;
    private final int mColumn;
    private final int mRow;

    public CarZone(g9 g9Var) {
        g9Var.getClass();
        this.mRow = 0;
        this.mColumn = 16;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarZone)) {
            return false;
        }
        CarZone carZone = (CarZone) obj;
        if (Integer.valueOf(this.mColumn).equals(Integer.valueOf(carZone.getColumn())) && Integer.valueOf(this.mRow).equals(Integer.valueOf(carZone.getRow()))) {
            return true;
        }
        return false;
    }

    public int getColumn() {
        return this.mColumn;
    }

    public int getRow() {
        return this.mRow;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mRow), Integer.valueOf(this.mColumn));
    }

    public String toString() {
        String str;
        int i = this.mRow;
        String str2 = "UNKNOWN";
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            str = "UNKNOWN";
                        } else {
                            str = "CAR_ZONE_ROW_EXCLUDE_FIRST";
                        }
                    } else {
                        str = "CAR_ZONE_ROW_THIRD";
                    }
                } else {
                    str = "CAR_ZONE_ROW_SECOND";
                }
            } else {
                str = "CAR_ZONE_ROW_FIRST";
            }
        } else {
            str = "CAR_ZONE_ROW_ALL";
        }
        int i2 = this.mColumn;
        if (i2 != 16) {
            if (i2 != 32) {
                if (i2 != 48) {
                    if (i2 != 64) {
                        if (i2 != 80) {
                            if (i2 == 96) {
                                str2 = "CAR_ZONE_COLUMN_PASSENGER";
                            }
                        } else {
                            str2 = "CAR_ZONE_COLUMN_DRIVER";
                        }
                    } else {
                        str2 = "CAR_ZONE_COLUMN_RIGHT";
                    }
                } else {
                    str2 = "CAR_ZONE_COLUMN_CENTER";
                }
            } else {
                str2 = "CAR_ZONE_COLUMN_LEFT";
            }
        } else {
            str2 = "CAR_ZONE_COLUMN_ALL";
        }
        return "[CarZone row value: " + str + ", column value: " + str2 + "]";
    }

    private CarZone() {
        this.mRow = 0;
        this.mColumn = 0;
    }
}
