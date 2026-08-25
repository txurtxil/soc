package androidx.car.app.model;

import java.time.Duration;
@e9
/* loaded from: classes.dex */
public final class DurationSpan extends CarSpan {
    private final long mDurationSeconds;

    private DurationSpan() {
        this.mDurationSeconds = 0L;
    }

    public static DurationSpan create(long j) {
        return new DurationSpan(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DurationSpan) && this.mDurationSeconds == ((DurationSpan) obj).mDurationSeconds) {
            return true;
        }
        return false;
    }

    public long getDurationSeconds() {
        return this.mDurationSeconds;
    }

    public int hashCode() {
        long j = this.mDurationSeconds;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return "[seconds: " + this.mDurationSeconds + "]";
    }

    public static DurationSpan create(Duration duration) {
        return ob.b(duration);
    }

    public DurationSpan(long j) {
        this.mDurationSeconds = j;
    }
}
