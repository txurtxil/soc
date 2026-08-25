package defpackage;

import android.media.MediaDescription;
import android.net.Uri;
/* renamed from: ao  reason: default package */
/* loaded from: classes.dex */
public abstract class ao {
    public static Uri a(MediaDescription mediaDescription) {
        return mediaDescription.getMediaUri();
    }

    public static void b(MediaDescription.Builder builder, Uri uri) {
        builder.setMediaUri(uri);
    }
}
