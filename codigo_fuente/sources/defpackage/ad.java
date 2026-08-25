package defpackage;

import android.widget.AbsListView;
/* renamed from: ad  reason: default package */
/* loaded from: classes.dex */
public abstract class ad {
    public static boolean a(AbsListView absListView) {
        return absListView.isSelectedChildViewEnabled();
    }

    public static void b(AbsListView absListView, boolean z) {
        absListView.setSelectedChildViewEnabled(z);
    }
}
