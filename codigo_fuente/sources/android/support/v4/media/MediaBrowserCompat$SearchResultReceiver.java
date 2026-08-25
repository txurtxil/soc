package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
class MediaBrowserCompat$SearchResultReceiver extends gy {
    @Override // defpackage.gy
    public final void a(int i, Bundle bundle) {
        if (bundle != null) {
            bundle = ko.P(bundle);
        }
        if (i == 0 && bundle != null && bundle.containsKey("search_results")) {
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            parcelableArray.getClass();
            ArrayList arrayList = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaBrowserCompat$MediaItem) parcelable);
            }
            throw null;
        }
        throw null;
    }
}
