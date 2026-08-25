package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import idv.lzn.screenonauto.MirrorAccessibilityService;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
/* renamed from: nv  reason: default package */
/* loaded from: classes.dex */
public final class nv extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ ProjectionCarActivity a;

    public nv(ProjectionCarActivity projectionCarActivity) {
        this.a = projectionCarActivity;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        motionEvent2.getClass();
        int i = ProjectionCarActivity.G;
        q50 k = this.a.k();
        if (k == null) {
            return false;
        }
        float floatValue = k.a.floatValue();
        MirrorAccessibilityService mirrorAccessibilityService = MirrorAccessibilityService.s;
        if (mirrorAccessibilityService != null) {
            mirrorAccessibilityService.a.post(new yp(mirrorAccessibilityService, f / floatValue, f2 / floatValue, 0));
            return true;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        motionEvent2.getClass();
        int i = ProjectionCarActivity.G;
        q50 k = this.a.k();
        if (k == null) {
            return false;
        }
        float floatValue = k.a.floatValue();
        MirrorAccessibilityService mirrorAccessibilityService = MirrorAccessibilityService.s;
        if (mirrorAccessibilityService != null) {
            mirrorAccessibilityService.a.post(new yp(mirrorAccessibilityService, f / floatValue, f2 / floatValue, 2));
            return true;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        motionEvent.getClass();
        int i = ProjectionCarActivity.G;
        q50 k = this.a.k();
        if (k == null) {
            return false;
        }
        float floatValue = k.a.floatValue();
        float floatValue2 = k.b.floatValue();
        float floatValue3 = k.c.floatValue();
        float i2 = gn.i((motionEvent.getX() - floatValue2) / floatValue, 0.0f, b00.c);
        float i3 = gn.i((motionEvent.getY() - floatValue3) / floatValue, 0.0f, b00.d);
        MirrorAccessibilityService mirrorAccessibilityService = MirrorAccessibilityService.s;
        if (mirrorAccessibilityService != null) {
            mirrorAccessibilityService.a.post(new yp(mirrorAccessibilityService, i2, i3, 1));
        }
        return true;
    }
}
