package defpackage;

import android.view.Choreographer;
/* renamed from: fv  reason: default package */
/* loaded from: classes.dex */
public abstract class fv {
    public static void a(final Runnable runnable) {
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: ev
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                runnable.run();
            }
        });
    }
}
