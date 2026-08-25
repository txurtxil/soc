package androidx.car.app;

import android.os.RemoteException;
import android.util.Log;
import java.security.InvalidParameterException;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class FailureResponse {
    public static final int BUNDLER_EXCEPTION = 1;
    public static final int ILLEGAL_STATE_EXCEPTION = 2;
    public static final int INVALID_PARAMETER_EXCEPTION = 3;
    public static final int REMOTE_EXCEPTION = 6;
    public static final int RUNTIME_EXCEPTION = 5;
    public static final int SECURITY_EXCEPTION = 4;
    public static final int UNKNOWN_ERROR = 0;
    private final int mErrorType;
    private final String mStackTrace;

    public FailureResponse(Throwable th) {
        Objects.requireNonNull(th);
        this.mStackTrace = Log.getStackTraceString(th);
        if (th instanceof b8) {
            this.mErrorType = 1;
        } else if (th instanceof IllegalStateException) {
            this.mErrorType = 2;
        } else if (th instanceof InvalidParameterException) {
            this.mErrorType = 3;
        } else if (th instanceof SecurityException) {
            this.mErrorType = 4;
        } else if (th instanceof RuntimeException) {
            this.mErrorType = 5;
        } else if (th instanceof RemoteException) {
            this.mErrorType = 6;
        } else {
            this.mErrorType = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FailureResponse)) {
            return false;
        }
        FailureResponse failureResponse = (FailureResponse) obj;
        if (this.mErrorType != failureResponse.mErrorType || !Objects.equals(this.mStackTrace, failureResponse.mStackTrace)) {
            return false;
        }
        return true;
    }

    public int getErrorType() {
        return this.mErrorType;
    }

    public String getStackTrace() {
        String str = this.mStackTrace;
        Objects.requireNonNull(str);
        return str;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mErrorType), this.mStackTrace);
    }

    private FailureResponse() {
        this.mStackTrace = null;
        this.mErrorType = 0;
    }
}
