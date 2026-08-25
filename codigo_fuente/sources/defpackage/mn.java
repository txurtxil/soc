package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import java.util.ArrayList;
import java.util.List;
/* renamed from: mn  reason: default package */
/* loaded from: classes.dex */
public final class mn extends qn {
    public final /* synthetic */ c9 d;
    public final /* synthetic */ Bundle e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mn(on onVar, String str, c9 c9Var, Bundle bundle) {
        super(str);
        this.d = c9Var;
        this.e = bundle;
    }

    @Override // defpackage.qn
    public final void a(Object obj) {
        List<MediaBrowserCompat$MediaItem> list = (List) obj;
        c9 c9Var = this.d;
        if (list == null) {
            c9Var.w(null);
            return;
        }
        if ((this.c & 1) != 0) {
            list = vn.a(list, this.e);
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem : list) {
            Parcel obtain = Parcel.obtain();
            mediaBrowserCompat$MediaItem.writeToParcel(obtain, 0);
            arrayList.add(obtain);
        }
        c9Var.w(arrayList);
    }
}
