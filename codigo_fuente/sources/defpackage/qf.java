package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
/* renamed from: qf  reason: default package */
/* loaded from: classes.dex */
public final class qf implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ rf b;

    public /* synthetic */ qf(rf rfVar, int i) {
        this.a = i;
        this.b = rfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        rf rfVar = this.b;
        switch (i) {
            case 0:
                ViewParent parent = rfVar.d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    return;
                }
                return;
            default:
                rfVar.a();
                View view = rfVar.d;
                if (view.isEnabled() && !view.isLongClickable() && rfVar.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                    rfVar.g = true;
                    return;
                }
                return;
        }
    }
}
