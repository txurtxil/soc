package defpackage;

import androidx.fragment.app.a;
import java.util.ArrayList;
/* renamed from: hg  reason: default package */
/* loaded from: classes.dex */
public final class hg implements gg {
    public final int a;
    public final /* synthetic */ a b;

    public hg(a aVar, int i) {
        this.b = aVar;
        this.a = i;
    }

    @Override // defpackage.gg
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        a aVar = this.b;
        vf vfVar = aVar.r;
        int i = this.a;
        if (vfVar != null && i < 0 && vfVar.g().K()) {
            return false;
        }
        return aVar.L(arrayList, arrayList2, i, 1);
    }
}
