package defpackage;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: il  reason: default package */
/* loaded from: classes.dex */
public final class il implements View.OnTouchListener {
    public final /* synthetic */ jl a;

    public il(jl jlVar) {
        this.a = jlVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        jl jlVar = this.a;
        gl glVar = jlVar.s;
        Handler handler = jlVar.w;
        h4 h4Var = jlVar.A;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && h4Var != null && h4Var.isShowing() && x >= 0 && x < h4Var.getWidth() && y >= 0 && y < h4Var.getHeight()) {
            handler.postDelayed(glVar, 250L);
            return false;
        } else if (action == 1) {
            handler.removeCallbacks(glVar);
            return false;
        } else {
            return false;
        }
    }
}
