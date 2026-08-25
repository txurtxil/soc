package defpackage;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
/* renamed from: yo  reason: default package */
/* loaded from: classes.dex */
public final class yo extends FrameLayout implements u9 {
    public final CollapsibleActionView a;

    public yo(View view) {
        super(view.getContext());
        this.a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // defpackage.u9
    public final void onActionViewCollapsed() {
        this.a.onActionViewCollapsed();
    }

    @Override // defpackage.u9
    public final void onActionViewExpanded() {
        this.a.onActionViewExpanded();
    }
}
