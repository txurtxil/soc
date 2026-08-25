package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class Metadata {
    public static final Metadata EMPTY_METADATA = new Metadata(new Object());
    private final Place mPlace;

    public Metadata(rp rpVar) {
        rpVar.getClass();
        this.mPlace = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Metadata)) {
            return false;
        }
        return Objects.equals(this.mPlace, ((Metadata) obj).mPlace);
    }

    public Place getPlace() {
        return this.mPlace;
    }

    public int hashCode() {
        return Objects.hashCode(this.mPlace);
    }

    private Metadata() {
        this.mPlace = null;
    }
}
