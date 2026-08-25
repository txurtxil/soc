package defpackage;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
/* renamed from: to  reason: default package */
/* loaded from: classes.dex */
public final class to implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, kp {
    public j30 a;
    public o2 b;
    public dl c;

    @Override // defpackage.kp
    public final void a(so soVar, boolean z) {
        o2 o2Var;
        if ((z || soVar == this.a) && (o2Var = this.b) != null) {
            o2Var.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        j30 j30Var = this.a;
        dl dlVar = this.c;
        if (dlVar.f == null) {
            dlVar.f = new cl(dlVar);
        }
        j30Var.q(dlVar.f.getItem(i), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.c.a(this.a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        j30 j30Var = this.a;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                j30Var.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return j30Var.performShortcut(i, keyEvent, 0);
    }

    @Override // defpackage.kp
    public final boolean q(so soVar) {
        return false;
    }
}
