package androidx.car.app;

import java.util.Objects;
import java.util.Set;
@e9
/* loaded from: classes.dex */
public class SessionInfo {
    private static final aj CLUSTER_SUPPORTED_TEMPLATES_API_6;
    private static final aj CLUSTER_SUPPORTED_TEMPLATES_LESS_THAN_API_6;
    public static final SessionInfo DEFAULT_SESSION_INFO;
    public static final int DISPLAY_TYPE_CLUSTER = 1;
    public static final int DISPLAY_TYPE_MAIN = 0;
    private static final char DIVIDER = '/';
    private final int mDisplayType;
    private final String mSessionId;

    static {
        int i = aj.c;
        CLUSTER_SUPPORTED_TEMPLATES_API_6 = new k20();
        CLUSTER_SUPPORTED_TEMPLATES_LESS_THAN_API_6 = ex.g;
        DEFAULT_SESSION_INFO = new SessionInfo(0, "main");
    }

    private SessionInfo() {
        this.mSessionId = "main";
        this.mDisplayType = 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SessionInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        SessionInfo sessionInfo = (SessionInfo) obj;
        if (!getSessionId().equals(sessionInfo.getSessionId()) || getDisplayType() != sessionInfo.getDisplayType()) {
            return false;
        }
        return true;
    }

    public int getDisplayType() {
        return this.mDisplayType;
    }

    public String getSessionId() {
        return this.mSessionId;
    }

    public Set<Class<? extends e40>> getSupportedTemplates(int i) {
        if (this.mDisplayType == 1) {
            if (i >= 6) {
                return CLUSTER_SUPPORTED_TEMPLATES_API_6;
            }
            return CLUSTER_SUPPORTED_TEMPLATES_LESS_THAN_API_6;
        }
        return null;
    }

    public int hashCode() {
        return Objects.hash(this.mSessionId, Integer.valueOf(this.mDisplayType));
    }

    public String toString() {
        return String.valueOf(this.mDisplayType) + DIVIDER + this.mSessionId;
    }

    public SessionInfo(int i, String str) {
        this.mDisplayType = i;
        this.mSessionId = str;
    }
}
