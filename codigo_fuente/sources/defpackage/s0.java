package defpackage;

import android.os.Message;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.preference.Preference;
/* renamed from: s0  reason: default package */
/* loaded from: classes.dex */
public final class s0 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ s0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message message;
        Message message2;
        Message message3;
        int i = this.a;
        Message message4 = null;
        wo woVar = null;
        message4 = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((i1) obj).a();
                return;
            case 1:
                m2 m2Var = (m2) obj;
                if (view == m2Var.i && (message3 = m2Var.k) != null) {
                    message4 = Message.obtain(message3);
                } else if (view == m2Var.l && (message2 = m2Var.n) != null) {
                    message4 = Message.obtain(message2);
                } else if (view == m2Var.o && (message = m2Var.q) != null) {
                    message4 = Message.obtain(message);
                }
                if (message4 != null) {
                    message4.sendToTarget();
                }
                m2Var.F.obtainMessage(1, m2Var.b).sendToTarget();
                return;
            case 2:
                ((Preference) obj).s(view);
                return;
            default:
                y40 y40Var = ((Toolbar) obj).N;
                if (y40Var != null) {
                    woVar = y40Var.b;
                }
                if (woVar != null) {
                    woVar.collapseActionView();
                    return;
                }
                return;
        }
    }
}
