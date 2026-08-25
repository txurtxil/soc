package defpackage;

import android.content.DialogInterface;
/* renamed from: ll  reason: default package */
/* loaded from: classes.dex */
public final class ll implements DialogInterface.OnClickListener {
    public final /* synthetic */ ml a;

    public ll(ml mlVar) {
        this.a = mlVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ml mlVar = this.a;
        mlVar.r0 = i;
        mlVar.q0 = -1;
        dialogInterface.dismiss();
    }
}
