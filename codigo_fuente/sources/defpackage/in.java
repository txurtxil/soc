package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import java.util.ArrayList;
import java.util.List;
/* renamed from: in  reason: default package */
/* loaded from: classes.dex */
public final class in extends qn {
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ in(Object obj, int i, Object obj2) {
        super(obj);
        this.d = i;
        this.e = obj2;
    }

    @Override // defpackage.qn
    public final void a(Object obj) {
        int i = this.d;
        Object obj2 = this.e;
        ArrayList arrayList = null;
        switch (i) {
            case 0:
                List list = (List) obj;
                gy gyVar = (gy) obj2;
                if ((this.c & 4) == 0 && list != null) {
                    Bundle bundle = new Bundle();
                    bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat$MediaItem[0]));
                    gyVar.b(0, bundle);
                    return;
                }
                gyVar.b(-1, null);
                return;
            default:
                List<MediaBrowserCompat$MediaItem> list2 = (List) obj;
                if (list2 != null) {
                    arrayList = new ArrayList(list2.size());
                    for (MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem : list2) {
                        Parcel obtain = Parcel.obtain();
                        mediaBrowserCompat$MediaItem.writeToParcel(obtain, 0);
                        arrayList.add(obtain);
                    }
                }
                ((c9) obj2).w(arrayList);
                return;
        }
    }
}
