package defpackage;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.SystemClock;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
import idv.lzn.screenonauto.projection.PassThroughColumn;
import idv.lzn.screenonauto.projection.PassThroughScroll;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
/* renamed from: z6  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class z6 implements View.OnTouchListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ z6(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        q50 k;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                a7 a7Var = (a7) obj;
                if (motionEvent.getAction() == 4 && a7Var.d() && SystemClock.uptimeMillis() - s8.i >= 500) {
                    if (a7Var.f) {
                        a7Var.c();
                    }
                    a7Var.b();
                }
                return false;
            default:
                ProjectionCarActivity projectionCarActivity = (ProjectionCarActivity) obj;
                int i2 = ProjectionCarActivity.G;
                if (motionEvent.getActionMasked() == 0) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    if (!projectionCarActivity.D) {
                        Rect rect = new Rect();
                        PassThroughColumn passThroughColumn = projectionCarActivity.s;
                        if (passThroughColumn != null) {
                            PassThroughScroll passThroughScroll = projectionCarActivity.t;
                            if (passThroughScroll != null) {
                                for (View view2 : w9.y(passThroughColumn, passThroughScroll)) {
                                    if (view2.getVisibility() == 0) {
                                        view2.getHitRect(rect);
                                        if (rect.contains((int) x, (int) y)) {
                                            PrivilegedInputInjector privilegedInputInjector = PrivilegedInputInjector.INSTANCE;
                                            SharedPreferences m = projectionCarActivity.m();
                                            m.getClass();
                                            projectionCarActivity.k = privilegedInputInjector.isAvailable(m);
                                            projectionCarActivity.l = false;
                                        }
                                    }
                                }
                            } else {
                                qj.v("shortcutBarScroll");
                                throw null;
                            }
                        } else {
                            qj.v("toggleColumn");
                            throw null;
                        }
                    }
                    projectionCarActivity.o();
                    PrivilegedInputInjector privilegedInputInjector2 = PrivilegedInputInjector.INSTANCE;
                    SharedPreferences m2 = projectionCarActivity.m();
                    m2.getClass();
                    projectionCarActivity.k = privilegedInputInjector2.isAvailable(m2);
                    projectionCarActivity.l = false;
                }
                if (projectionCarActivity.k && (k = projectionCarActivity.k()) != null) {
                    float floatValue = k.a.floatValue();
                    float floatValue2 = k.b.floatValue();
                    float floatValue3 = k.c.floatValue();
                    PrivilegedInputInjector privilegedInputInjector3 = PrivilegedInputInjector.INSTANCE;
                    if (!privilegedInputInjector3.forward(motionEvent, floatValue, floatValue2, floatValue3)) {
                        projectionCarActivity.k = false;
                        if (motionEvent.getActionMasked() != 0) {
                            privilegedInputInjector3.cancelForwardedStream();
                            projectionCarActivity.l = true;
                        }
                    } else {
                        int actionMasked = motionEvent.getActionMasked();
                        if (actionMasked == 1 || actionMasked == 3) {
                            projectionCarActivity.k = false;
                        }
                    }
                }
                if (!projectionCarActivity.k && !projectionCarActivity.l) {
                    ScaleGestureDetector scaleGestureDetector = projectionCarActivity.j;
                    if (scaleGestureDetector != null) {
                        scaleGestureDetector.onTouchEvent(motionEvent);
                        ScaleGestureDetector scaleGestureDetector2 = projectionCarActivity.j;
                        if (scaleGestureDetector2 != null) {
                            if (!scaleGestureDetector2.isInProgress()) {
                                GestureDetector gestureDetector = projectionCarActivity.i;
                                if (gestureDetector != null) {
                                    gestureDetector.onTouchEvent(motionEvent);
                                } else {
                                    qj.v("gestureDetector");
                                    throw null;
                                }
                            }
                        } else {
                            qj.v("scaleDetector");
                            throw null;
                        }
                    } else {
                        qj.v("scaleDetector");
                        throw null;
                    }
                }
                return true;
        }
    }
}
