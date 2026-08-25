package defpackage;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.os.Build;
import idv.lzn.screenonauto.MirrorAccessibilityService;
/* renamed from: aq  reason: default package */
/* loaded from: classes.dex */
public final class aq extends AccessibilityService.GestureResultCallback {
    public final /* synthetic */ MirrorAccessibilityService a;

    public aq(MirrorAccessibilityService mirrorAccessibilityService) {
        this.a = mirrorAccessibilityService;
    }

    @Override // android.accessibilityservice.AccessibilityService.GestureResultCallback
    public final void onCancelled(GestureDescription gestureDescription) {
        gestureDescription.getClass();
        MirrorAccessibilityService mirrorAccessibilityService = this.a;
        mirrorAccessibilityService.b = null;
        mirrorAccessibilityService.e = false;
        mirrorAccessibilityService.f = 0.0f;
        mirrorAccessibilityService.g = 0.0f;
        mirrorAccessibilityService.h = false;
    }

    @Override // android.accessibilityservice.AccessibilityService.GestureResultCallback
    public final void onCompleted(GestureDescription gestureDescription) {
        gestureDescription.getClass();
        MirrorAccessibilityService mirrorAccessibilityService = this.a;
        mirrorAccessibilityService.e = false;
        if (mirrorAccessibilityService.h) {
            mirrorAccessibilityService.h = false;
            mirrorAccessibilityService.a(mirrorAccessibilityService.i, mirrorAccessibilityService.j);
            return;
        }
        float f = mirrorAccessibilityService.f;
        float f2 = mirrorAccessibilityService.g;
        if (f == 0.0f && f2 == 0.0f) {
            if (Build.VERSION.SDK_INT >= 26) {
                mirrorAccessibilityService.c();
                return;
            }
            return;
        }
        mirrorAccessibilityService.f = 0.0f;
        mirrorAccessibilityService.g = 0.0f;
        if (Build.VERSION.SDK_INT >= 26) {
            mirrorAccessibilityService.b(f, f2);
        }
    }
}
