package defpackage;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;
/* renamed from: u3  reason: default package */
/* loaded from: classes.dex */
public final class u3 extends ContentFrameLayout {
    public final /* synthetic */ w3 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u3(w3 w3Var, cb cbVar) {
        super(cbVar);
        this.i = w3Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.i.w(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                w3 w3Var = this.i;
                w3Var.u(w3Var.B(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        setBackgroundDrawable(gn.p(getContext(), i));
    }
}
