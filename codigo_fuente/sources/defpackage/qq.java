package defpackage;

import android.content.DialogInterface;
import java.util.HashSet;
/* renamed from: qq  reason: default package */
/* loaded from: classes.dex */
public final class qq implements DialogInterface.OnMultiChoiceClickListener {
    public final /* synthetic */ rq a;

    public qq(rq rqVar) {
        this.a = rqVar;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
        rq rqVar = this.a;
        HashSet hashSet = rqVar.r0;
        boolean z2 = rqVar.s0;
        if (z) {
            rqVar.s0 = hashSet.add(rqVar.u0[i].toString()) | z2;
        } else {
            rqVar.s0 = hashSet.remove(rqVar.u0[i].toString()) | z2;
        }
    }
}
