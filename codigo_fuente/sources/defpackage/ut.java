package defpackage;

import android.media.session.PlaybackState;
import android.os.Bundle;
/* renamed from: ut  reason: default package */
/* loaded from: classes.dex */
public abstract class ut {
    public static Bundle a(PlaybackState playbackState) {
        return playbackState.getExtras();
    }

    public static void b(PlaybackState.Builder builder, Bundle bundle) {
        builder.setExtras(bundle);
    }
}
