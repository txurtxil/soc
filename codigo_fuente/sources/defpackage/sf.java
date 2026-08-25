package defpackage;

import android.view.View;
/* renamed from: sf  reason: default package */
/* loaded from: classes.dex */
public final class sf extends s8 {
    public final /* synthetic */ vf j;

    public sf(vf vfVar) {
        this.j = vfVar;
    }

    @Override // defpackage.s8
    public final View x(int i) {
        vf vfVar = this.j;
        View view = vfVar.F;
        if (view != null) {
            return view.findViewById(i);
        }
        c2.g(t20.e("Fragment ", vfVar, " does not have a view"));
        return null;
    }

    @Override // defpackage.s8
    public final boolean y() {
        if (this.j.F != null) {
            return true;
        }
        return false;
    }
}
