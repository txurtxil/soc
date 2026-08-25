package androidx.profileinstaller;

import android.content.Context;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements bj {
    @Override // defpackage.bj
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // defpackage.bj
    public final Object b(Context context) {
        fv.a(new g3(this, context.getApplicationContext()));
        return new hd(24);
    }
}
