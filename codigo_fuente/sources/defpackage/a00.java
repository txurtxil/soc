package defpackage;

import android.media.projection.MediaProjection;
/* renamed from: a00  reason: default package */
/* loaded from: classes.dex */
public final class a00 extends MediaProjection.Callback {
    @Override // android.media.projection.MediaProjection.Callback
    public final void onStop() {
        b00.c();
        b00.j = null;
        cm cmVar = b00.g;
        if (cmVar != null) {
            cmVar.b(Boolean.FALSE);
        }
    }
}
