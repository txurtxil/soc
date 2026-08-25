package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;
/* renamed from: oc  reason: default package */
/* loaded from: classes.dex */
public final class oc implements DialogInterface.OnDismissListener {
    public final /* synthetic */ qc a;

    public oc(qc qcVar) {
        this.a = qcVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        qc qcVar = this.a;
        Dialog dialog = qcVar.e0;
        if (dialog != null) {
            qcVar.onDismiss(dialog);
        }
    }
}
