package androidx.car.app.model;

import java.time.ZonedDateTime;
import java.util.Date;
import java.util.Objects;
import java.util.TimeZone;
@e9
/* loaded from: classes.dex */
public final class DateTimeWithZone {
    private static final long MAX_ZONE_OFFSET_SECONDS = 64800;
    private final long mTimeSinceEpochMillis;
    private final int mZoneOffsetSeconds;
    private final String mZoneShortName;

    private DateTimeWithZone() {
        this.mTimeSinceEpochMillis = 0L;
        this.mZoneOffsetSeconds = 0;
        this.mZoneShortName = null;
    }

    public static DateTimeWithZone create(long j, int i, String str) {
        if (j >= 0) {
            if (Math.abs(i) <= MAX_ZONE_OFFSET_SECONDS) {
                Objects.requireNonNull(str);
                if (!str.isEmpty()) {
                    return new DateTimeWithZone(j, i, str);
                }
                c2.n("The time zone short name can not be null or empty");
                return null;
            }
            c2.n("Zone offset not in valid range: -18:00 to +18:00");
            return null;
        }
        c2.n("Time since epoch must be greater than or equal to zero");
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DateTimeWithZone)) {
            return false;
        }
        DateTimeWithZone dateTimeWithZone = (DateTimeWithZone) obj;
        if (this.mTimeSinceEpochMillis == dateTimeWithZone.mTimeSinceEpochMillis && this.mZoneOffsetSeconds == dateTimeWithZone.mZoneOffsetSeconds && Objects.equals(this.mZoneShortName, dateTimeWithZone.mZoneShortName)) {
            return true;
        }
        return false;
    }

    public long getTimeSinceEpochMillis() {
        return this.mTimeSinceEpochMillis;
    }

    public int getZoneOffsetSeconds() {
        return this.mZoneOffsetSeconds;
    }

    public String getZoneShortName() {
        return this.mZoneShortName;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.mTimeSinceEpochMillis), Integer.valueOf(this.mZoneOffsetSeconds), this.mZoneShortName);
    }

    public String toString() {
        return "[time since epoch (ms): " + this.mTimeSinceEpochMillis + "( " + new Date(this.mTimeSinceEpochMillis) + ")  zone offset (s): " + this.mZoneOffsetSeconds + ", zone: " + this.mZoneShortName + "]";
    }

    private DateTimeWithZone(long j, int i, String str) {
        this.mTimeSinceEpochMillis = j;
        this.mZoneOffsetSeconds = i;
        this.mZoneShortName = str;
    }

    public static DateTimeWithZone create(long j, TimeZone timeZone) {
        if (j >= 0) {
            Objects.requireNonNull(timeZone);
            return create(j, (int) (timeZone.getOffset(j) / 1000), timeZone.getDisplayName(false, 0));
        }
        c2.n("timeSinceEpochMillis must be greater than or equal to zero");
        return null;
    }

    public static DateTimeWithZone create(ZonedDateTime zonedDateTime) {
        return ob.a(zonedDateTime);
    }
}
