package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;
/* renamed from: o70  reason: default package */
/* loaded from: classes.dex */
public abstract class o70 {
    public static View.AccessibilityDelegate a(View view) {
        return view.getAccessibilityDelegate();
    }

    public static List<Rect> b(View view) {
        return view.getSystemGestureExclusionRects();
    }

    public static void c(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
    }

    public static void d(View view, List<Rect> list) {
        view.setSystemGestureExclusionRects(list);
    }
}
