package defpackage;

import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: rf  reason: default package */
/* loaded from: classes.dex */
public abstract class rf implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public final float a;
    public final int b;
    public final int c;
    public final View d;
    public qf e;
    public qf f;
    public boolean g;
    public int h;
    public final int[] i = new int[2];

    public rf(View view) {
        this.d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.b = tapTimeout;
        this.c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        qf qfVar = this.f;
        View view = this.d;
        if (qfVar != null) {
            view.removeCallbacks(qfVar);
        }
        qf qfVar2 = this.e;
        if (qfVar2 != null) {
            view.removeCallbacks(qfVar2);
        }
    }

    public abstract g20 b();

    public abstract boolean c();

    public boolean d() {
        g20 b = b();
        if (b != null && b.b()) {
            b.dismiss();
            return true;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
        if (r14 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
        if (r4 != 3) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fe  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rf.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.g = false;
        this.h = -1;
        qf qfVar = this.e;
        if (qfVar != null) {
            this.d.removeCallbacks(qfVar);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
