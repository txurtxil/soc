package defpackage;

import android.widget.ListView;
/* renamed from: ql  reason: default package */
/* loaded from: classes.dex */
public abstract class ql {
    public static boolean a(ListView listView, int i) {
        return listView.canScrollList(i);
    }

    public static void b(ListView listView, int i) {
        listView.scrollListBy(i);
    }
}
