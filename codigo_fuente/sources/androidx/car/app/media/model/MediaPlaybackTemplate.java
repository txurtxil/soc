package androidx.car.app.media.model;

import androidx.car.app.model.Header;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public class MediaPlaybackTemplate implements e40 {
    private final Header mHeader;

    private MediaPlaybackTemplate() {
        this.mHeader = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaPlaybackTemplate)) {
            return false;
        }
        return Objects.equals(this.mHeader, ((MediaPlaybackTemplate) obj).mHeader);
    }

    public Header getHeader() {
        return this.mHeader;
    }

    public int hashCode() {
        return Objects.hash(this.mHeader);
    }

    public String toString() {
        return "MediaPlaybackTemplate";
    }

    public MediaPlaybackTemplate(bo boVar) {
        throw null;
    }
}
