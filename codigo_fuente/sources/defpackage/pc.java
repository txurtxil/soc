package defpackage;

import android.app.Dialog;
import android.view.View;
/* renamed from: pc  reason: default package */
/* loaded from: classes.dex */
public final class pc extends s8 {
    public final /* synthetic */ sf j;
    public final /* synthetic */ qc k;

    public pc(qc qcVar, sf sfVar) {
        this.k = qcVar;
        this.j = sfVar;
    }

    @Override // defpackage.s8
    public final View x(int i) {
        sf sfVar = this.j;
        if (sfVar.y()) {
            return sfVar.x(i);
        }
        Dialog dialog = this.k.e0;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // defpackage.s8
    public final boolean y() {
        if (!this.j.y() && !this.k.i0) {
            return false;
        }
        return true;
    }
}
