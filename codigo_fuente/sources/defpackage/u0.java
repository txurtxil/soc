package defpackage;

import androidx.appcompat.widget.ActionBarOverlayLayout;
/* renamed from: u0  reason: default package */
/* loaded from: classes.dex */
public final class u0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ ActionBarOverlayLayout b;

    public /* synthetic */ u0(ActionBarOverlayLayout actionBarOverlayLayout, int i) {
        this.a = i;
        this.b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        ActionBarOverlayLayout actionBarOverlayLayout = this.b;
        switch (i) {
            case 0:
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.x = actionBarOverlayLayout.d.animate().translationY(0.0f).setListener(actionBarOverlayLayout.y);
                return;
            default:
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.x = actionBarOverlayLayout.d.animate().translationY(-actionBarOverlayLayout.d.getHeight()).setListener(actionBarOverlayLayout.y);
                return;
        }
    }
}
