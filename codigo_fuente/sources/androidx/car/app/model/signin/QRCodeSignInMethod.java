package androidx.car.app.model.signin;

import android.net.Uri;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class QRCodeSignInMethod implements i20 {
    private final Uri mUri;

    public QRCodeSignInMethod(Uri uri) {
        Objects.requireNonNull(uri);
        this.mUri = uri;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QRCodeSignInMethod)) {
            return false;
        }
        return Objects.equals(this.mUri, ((QRCodeSignInMethod) obj).mUri);
    }

    public Uri getUri() {
        Uri uri = this.mUri;
        Objects.requireNonNull(uri);
        return uri;
    }

    public int hashCode() {
        return Objects.hash(this.mUri);
    }

    private QRCodeSignInMethod() {
        this.mUri = null;
    }
}
