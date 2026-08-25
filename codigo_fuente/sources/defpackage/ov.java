package defpackage;

import android.view.ScaleGestureDetector;
import idv.lzn.screenonauto.MirrorAccessibilityService;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
/* renamed from: ov  reason: default package */
/* loaded from: classes.dex */
public final class ov extends ScaleGestureDetector.SimpleOnScaleGestureListener {
    public final /* synthetic */ ProjectionCarActivity a;

    public ov(ProjectionCarActivity projectionCarActivity) {
        this.a = projectionCarActivity;
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        scaleGestureDetector.getClass();
        int i = ProjectionCarActivity.G;
        q50 k = this.a.k();
        if (k == null) {
            return false;
        }
        float floatValue = k.a.floatValue();
        float floatValue2 = k.b.floatValue();
        float floatValue3 = k.c.floatValue();
        float i2 = gn.i((scaleGestureDetector.getFocusX() - floatValue2) / floatValue, 0.0f, b00.c);
        float i3 = gn.i((scaleGestureDetector.getFocusY() - floatValue3) / floatValue, 0.0f, b00.d);
        MirrorAccessibilityService mirrorAccessibilityService = MirrorAccessibilityService.s;
        if (mirrorAccessibilityService != null) {
            mirrorAccessibilityService.a.post(new zp(scaleGestureDetector.getScaleFactor(), mirrorAccessibilityService, i2, i3));
            return true;
        }
        return true;
    }
}
