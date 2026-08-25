package idv.lzn.screenonauto.privileged;

import android.content.Context;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
/* loaded from: classes.dex */
public interface PrivilegedBackend {
    void bind(Context context, ch chVar);

    PrivilegedManager.Kind getKind();

    boolean isAuthorised(Context context);

    boolean isPresent(Context context);

    void unbind(Context context);
}
